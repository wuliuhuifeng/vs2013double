/*
Navicat MySQL Data Transfer

Source Server         : 101.132.38.18
Source Server Version : 50553
Source Host           : 101.132.38.18:3306
Source Database       : shuangguizhi

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-11-14 13:05:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'ed1cee96ea8cf9dfd3d078378dead01a');

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `SortId` int(10) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` text,
  `AddDate` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `Index_B17BCB40_47EB_45F8` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('37', '27', 'VoIP技术优势分析:无法阻挡的鲜花怒放!', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 19.5pt; TEXT-ALIGN: left\"><SPAN></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">在网络通信的花园里，有种漂亮的花儿正在逐渐生长蔓延，它易于种植，而且价格便宜，甚得人们喜爱。而花园的一些花农们，却固守着那些老的品种，它们价格昂贵，长相平平，甚至已经是明日黄花，但能带给花农们暴利性的收入。于是，他们极力阻止新花儿的生长蔓延，但花园是巨大的，花儿的生命力是顽强的，虽然旧痕新伤不断，依然骄傲地怒放！这就是――</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">VoIP</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;VoIP</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">在中国自产生以来就遇到了重重障碍，但无论是政策的阻碍还是运营商的大棒都没有办法将</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">VoIP</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">扼杀。而经过了这些风雨的洗礼之后，</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">VOIP</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">却开放的的更加灿烂。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">不完全统计，</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">2006</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年国内企业级</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">VoIP</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">设备市场的规模已达近</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">30</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">亿元人民币，其中大企业占了</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">54%</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。同时随着供应商进一步发力企业</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">IP</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">通信市场，有机构预计我国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">VoIP</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">设备市场在</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">2007-2011</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年总体上仍将保持稳定增长，市场规模不断扩大，年增长率超过</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">20%</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">2011</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">VoIP</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">设备市场规模将达</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">79.3</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">亿元。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-07-01 14:26:17');
INSERT INTO `article` VALUES ('38', '27', '从我国网上银行发展历程来看', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">从我国</SPAN><SPAN><A href=\"http://ec.iresearch.cn/56\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(102,102,102); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">网上银行</SPAN></A></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">发展历程来看，大概可以分为四个阶段：</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">2000</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年以前，银行网上服务单一，仅通过开通银行网站，提供账户查询等简单信息类服务，而且主要操作集中在单一账户上。网银更多地被作为银行的一个宣传窗口。这是网银发展的第一阶段，被称之为‘银行网站’阶段。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">第二阶段是“银行上网”阶段，银行致力于将传统的柜面业务迁移到网上银行，增加了转账支付、缴费、网上支付、金融产品购买等交易类功能，这个阶段的主要特征是多账户的关联操作。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;网银发展进入第三阶段后，银行的最大转变是真正以客户为中心，因需而变。这一特征在华夏银行新推出的网银产品中得到体现。如“集付快线”可以让用户在办理付款业务时，像群发短信一样，同时完成向多个收款人支付款项的结算业务，从而大大提高工作效率，降低企业成本。而为满足集团客户资金集中管理需要而推出的“集算快线”，则以产品组合搭配快、现金动态掌握快、资金调配速度快、预算管理实现快的特点，提高了集团用户资金的安全性和流动性以及使用效率。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　第四代网上银行是未来的发展阶段。届时，网上银行将成为银行的主渠道，传统银行将全面融入网上银行，甚至不再单独区分网上银行。我国目前还未出现完全依赖或主要依赖网络开展业务的纯虚拟银行。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-07-01 14:28:50');
INSERT INTO `article` VALUES ('39', '27', '工信部最新数据：中国3G提前进入爆发期', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">5月24日工信和信息化部最新数据显示，截至4月底我国移动电话用户数突破9亿户，其中3G用户数已经达到6700万户。据此前中国移动公布截至4月底的数据，其3G（TD-SCDMA）用户总数已经接近3000万户，占到全国3G用户总数的44%。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　工业和信息化部统计数据显示，今年1-4月全国移动电话用户累计净增4138.6万户，总数达到90038.9万户；其中3G用户净增2052.1万户，达到了6757.2万户。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">记者了解到，2010年底TD-SCDMA用户数为2070万户，在国内市场的3G用户份额累计达44%。今年1-4月，用户增长近1000万户，达到近3000万户，依然占据了44%的市场份额。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">专家表示，按此速度推算，再加上国内3G市场发展提速等方面因素的影响，到今年年底TD用户有望完成TD三年发展目标，实现TD客户总数突破5000万户。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　工信部同期发布的数据还显示，在移动通信收入方面，1-4月全国累计完成2177.8亿元，比上年同期增长13.3%，在电信主营业务收入中所占的比重从上年同期的68.15%上升到70.63%；固定通信收入累计完成905.7亿元，比上年同期增长0.9%，在电信主营业务收入中所占的比重从上年同期的31.85%下降到29.37%。</SPAN></P><!--EndFragment-->', '2011-05-25 14:29:56');
INSERT INTO `article` VALUES ('40', '26', '互联中国最近三年度规划展望', '<DIV class=Section0 style=\"LAYOUT-GRID:  15.6pt none\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">201</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">——<FONT face=Arial>201</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">以网络通讯产品为依托，在中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">各地</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">迅速壮大顾客消费群体。同时通过不断的努力发展局域网通讯，让所有</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">顾客不限地域、不限时间实现真正低资费的飞跃。在这期间，经过公司不断结合市场后推出规划产品，打造</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">足不出户购物王国，实现足不出户百万富翁的梦想，消费的同时获得经营权和消费返利。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">主经营规划</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">成为</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员后可获得开商城、购买机票、火车票、旅游票、网游、移动、电信、联通交费平台方面等经营权之外、还获得</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">产生的利润进行再分配，让每一位</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">的会员得到实惠。实行计划时间如下：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">第一</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">度发展</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;201</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">——<FONT face=Arial>201</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">期间打造庞大的顾客消费群体，</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">开始规模转型，力图打造一个全新的、百业联盟的互联网购物平台。同时，局域网通讯广告也将渐露水面，</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">的庞大消费群体在享受局域通讯免费的基础上，在开始投放商城。有了消费良性循环，真正实现了消费致富的消费资本论。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">第二</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">度发展</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;201</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">——<FONT face=Arial>201</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">通过之前一个季度全体</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">人的努力，</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">将成为一个非常庞大的拥有超级忠诚顾客的巨无霸国际网络购物平台。我们将会在接下来投放移动、电信、联通交费平台、开心农场等。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">第三</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">度发展</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">201</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">——<FONT face=Arial>201</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">5</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">年</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日通过会员们几个月资源整合后，和技术部不断研发和测试，在测试成热过程中同时得到庞大的顾客消费群体所认可公司实力后，于是投放购买机票、火车票、旅游票等，同时进行年度总结作出来年规划。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; MARGIN-RIGHT: 8.9pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(97,77,179); FONT-FAMILY: \'Verdana\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 13.5pt; COLOR: rgb(255,68,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 13.5pt; COLOR: rgb(255,68,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 13.5pt; COLOR: rgb(255,68,0); FONT-FAMILY: \'Verdana\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 13.5pt; COLOR: rgb(255,68,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">与您同行！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P></DIV><!--EndFragment-->', '2011-06-01 14:37:02');

-- ----------------------------
-- Table structure for `caiwu`
-- ----------------------------
DROP TABLE IF EXISTS `caiwu`;
CREATE TABLE `caiwu` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Oper` varchar(50) DEFAULT NULL,
  `UserId` int(10) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Money` double DEFAULT NULL,
  `YuE` double DEFAULT NULL,
  `Remark` text,
  `AddDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caiwu
-- ----------------------------
INSERT INTO `caiwu` VALUES ('1', 'admin', '1', 'admin', '-250', '99650', '审核会员tt1', '2011-06-30 18:19:25');
INSERT INTO `caiwu` VALUES ('2', 'admin', '1', 'admin', '-25', '99625', '购物', '2011-07-01 14:47:50');
INSERT INTO `caiwu` VALUES ('3', 'admin', '1', 'admin', '-500', '99125', '审核会员qq1', '2011-07-01 21:18:58');
INSERT INTO `caiwu` VALUES ('4', 'admin', '30', 'tt1', '200', '200', '充值200', '2011-07-01 21:26:43');
INSERT INTO `caiwu` VALUES ('5', 'admin', '32', 'tt2', '50', '50', '充值50', '2011-07-01 21:27:29');
INSERT INTO `caiwu` VALUES ('6', 'admin', '30', 'tt1', '50', '250', '充值50', '2011-07-01 21:29:32');
INSERT INTO `caiwu` VALUES ('7', 'admin', '30', 'tt1', '250', '500', '充值250', '2011-07-01 21:35:55');
INSERT INTO `caiwu` VALUES ('8', 'admin', '30', 'tt1', '-500', '0', '审核会员tt2', '2011-07-01 21:36:07');
INSERT INTO `caiwu` VALUES ('9', 'tt2', '32', 'tt2', '-25', '25', '购物', '2011-07-01 21:44:54');
INSERT INTO `caiwu` VALUES ('10', 'admin', '30', 'tt1', '100', '100', '充值100', '2011-07-01 21:49:58');
INSERT INTO `caiwu` VALUES ('11', 'tt1', '30', 'tt1', '-100', '0', '购物', '2011-07-01 21:50:12');
INSERT INTO `caiwu` VALUES ('12', 'admin', '1', 'admin', '-99125', '0', '充值-99125', '2011-07-01 22:04:51');
INSERT INTO `caiwu` VALUES ('13', 'admin', '30', 'tt1', '1000', '1000', '充值1000', '2011-07-01 22:06:08');
INSERT INTO `caiwu` VALUES ('14', 'admin', '30', 'tt1', '-1000', '0', '审核会员tt3', '2011-07-01 22:06:13');
INSERT INTO `caiwu` VALUES ('15', 'admin', '31', 'qq1', '1500', '1500', '充值1500', '2011-07-01 23:58:14');
INSERT INTO `caiwu` VALUES ('16', 'admin', '31', 'qq1', '-500', '1000', '审核会员qq2', '2011-07-01 23:59:14');
INSERT INTO `caiwu` VALUES ('17', 'admin', '31', 'qq1', '-1000', '0', '审核会员qq3', '2011-07-01 23:59:18');
INSERT INTO `caiwu` VALUES ('18', 'admin', '31', 'qq1', '100', '100', '充值100', '2011-07-02 08:57:08');
INSERT INTO `caiwu` VALUES ('19', 'admin', '31', 'qq1', '-100', '0', '审核会员hh', '2011-07-02 08:57:12');
INSERT INTO `caiwu` VALUES ('20', 'admin', '30', 'tt1', '1500', '1500', '充值1500', '2011-07-04 09:38:23');
INSERT INTO `caiwu` VALUES ('21', 'admin', '30', 'tt1', '-500', '1000', '审核会员xin1', '2011-07-04 09:38:29');
INSERT INTO `caiwu` VALUES ('22', 'admin', '30', 'tt1', '-500', '500', '审核会员xin2', '2011-07-04 09:39:39');
INSERT INTO `caiwu` VALUES ('23', 'admin', '30', 'tt1', '-500', '0', '审核会员xin3', '2011-07-04 09:39:42');
INSERT INTO `caiwu` VALUES ('24', 'admin', '37', 'xin1', '250', '250', '充值250', '2011-07-04 10:40:06');
INSERT INTO `caiwu` VALUES ('25', 'admin', '37', 'xin1', '-250', '0', '审核会员srwxd1', '2011-07-04 10:46:45');
INSERT INTO `caiwu` VALUES ('26', 'admin', '37', 'xin1', '250', '250', '充值250', '2011-07-04 12:26:55');
INSERT INTO `caiwu` VALUES ('27', 'admin', '37', 'xin1', '-250', '0', '审核会员wang3', '2011-07-04 12:27:08');
INSERT INTO `caiwu` VALUES ('28', 'admin', '38', 'xin2', '100', '100', '充值100', '2011-07-05 12:22:58');
INSERT INTO `caiwu` VALUES ('29', 'admin', '39', 'xin3', '100', '100', '充值100', '2011-07-05 12:23:06');
INSERT INTO `caiwu` VALUES ('30', 'admin', '38', 'xin2', '-20', '80', '充值-20', '2011-07-05 12:25:18');
INSERT INTO `caiwu` VALUES ('31', 'admin', '39', 'xin3', '-20', '80', '充值-20', '2011-07-05 12:25:34');
INSERT INTO `caiwu` VALUES ('32', 'admin', '38', 'xin2', '530', '610', '充值530', '2011-07-05 19:50:28');
INSERT INTO `caiwu` VALUES ('33', 'admin', '38', 'xin2', '-500', '110', '审核会员ding', '2011-07-05 19:57:41');
INSERT INTO `caiwu` VALUES ('34', 'admin', '50', 'ding', '1080', '1080', '充值1080', '2011-07-05 20:48:29');
INSERT INTO `caiwu` VALUES ('35', 'admin', '50', 'ding', '-250', '830', '审核会员ding2', '2011-07-05 20:48:57');
INSERT INTO `caiwu` VALUES ('36', 'admin', '50', 'ding', '-250', '580', '审核会员ding3', '2011-07-05 20:49:02');
INSERT INTO `caiwu` VALUES ('37', 'admin', '50', 'ding', '1080', '1660', '充值1080', '2011-07-06 09:28:54');
INSERT INTO `caiwu` VALUES ('38', 'admin', '50', 'ding', '-500', '1160', '审核会员niu', '2011-07-06 09:29:04');
INSERT INTO `caiwu` VALUES ('39', 'admin', '50', 'ding', '-250', '910', '审核会员niu2', '2011-07-06 09:29:11');
INSERT INTO `caiwu` VALUES ('40', 'admin', '50', 'ding', '-250', '660', '审核会员niu3', '2011-07-06 09:30:48');
INSERT INTO `caiwu` VALUES ('41', 'admin', '38', 'xin2', '1480', '1590', '充值1480', '2011-07-06 21:47:16');
INSERT INTO `caiwu` VALUES ('42', 'admin', '38', 'xin2', '-500', '1090', '审核会员wumei', '2011-07-06 21:54:39');
INSERT INTO `caiwu` VALUES ('43', 'admin', '38', 'xin2', '-500', '590', '审核会员wumei2', '2011-07-06 21:54:44');
INSERT INTO `caiwu` VALUES ('44', 'admin', '38', 'xin2', '-500', '90', '审核会员wumei3', '2011-07-06 21:58:50');
INSERT INTO `caiwu` VALUES ('45', 'admin', '38', 'xin2', '-20', '70', '充值-20', '2011-07-06 22:19:55');
INSERT INTO `caiwu` VALUES ('46', 'admin', '31', 'qq1', '2000', '2000', '充值2000', '2011-07-06 22:43:27');
INSERT INTO `caiwu` VALUES ('47', 'admin', '31', 'qq1', '-500', '1500', '审核会员a', '2011-07-06 22:43:36');
INSERT INTO `caiwu` VALUES ('48', 'admin', '31', 'qq1', '-250', '1250', '审核会员aa', '2011-07-06 22:48:55');
INSERT INTO `caiwu` VALUES ('49', 'admin', '31', 'qq1', '-250', '1000', '审核会员aaa', '2011-07-06 23:35:10');
INSERT INTO `caiwu` VALUES ('50', 'admin', '38', 'xin2', '1610', '1680', '充值1610', '2011-07-09 16:31:08');
INSERT INTO `caiwu` VALUES ('51', 'admin', '38', 'xin2', '-500', '1180', '审核会员huanying', '2011-07-09 16:42:23');
INSERT INTO `caiwu` VALUES ('52', 'admin', '38', 'xin2', '-500', '680', '审核会员huanying2', '2011-07-09 16:43:05');
INSERT INTO `caiwu` VALUES ('53', 'admin', '38', 'xin2', '-500', '180', '审核会员huanying3', '2011-07-09 16:46:52');
INSERT INTO `caiwu` VALUES ('54', 'admin', '41', 'srwxd1', '250', '250', '充值250', '2011-07-10 09:33:18');
INSERT INTO `caiwu` VALUES ('55', 'admin', '41', 'srwxd1', '-250', '0', '审核会员srwxd2', '2011-07-10 09:33:27');
INSERT INTO `caiwu` VALUES ('56', 'admin', '38', 'xin2', '-80', '100', '充值-80', '2011-07-10 11:48:02');
INSERT INTO `caiwu` VALUES ('57', 'admin', '39', 'xin3', '-80', '0', '充值-80', '2011-07-10 11:48:15');
INSERT INTO `caiwu` VALUES ('58', 'admin', '74', 'a', '1080', '1080', '充值1080', '2011-07-12 22:30:39');
INSERT INTO `caiwu` VALUES ('59', 'admin', '74', 'a', '-1080', '0', '充值-1080', '2011-07-12 22:46:09');
INSERT INTO `caiwu` VALUES ('60', 'admin', '74', 'a', '70', '70', '充值70', '2011-07-12 22:58:24');
INSERT INTO `caiwu` VALUES ('61', 'xin2', '38', 'xin2', '-100', '0', '购物', '2011-07-15 19:20:47');
INSERT INTO `caiwu` VALUES ('62', 'admin', '31', 'qq1', '-500', '500', '审核会员抉择', '2011-07-16 11:25:04');
INSERT INTO `caiwu` VALUES ('63', 'admin', '87', '抉择', '1040', '1040', '充值1040', '2011-07-19 22:15:24');
INSERT INTO `caiwu` VALUES ('64', 'admin', '87', '抉择', '-250', '790', '审核会员刘林', '2011-07-19 22:20:57');
INSERT INTO `caiwu` VALUES ('65', 'admin', '87', '抉择', '-250', '540', '审核会员王超', '2011-07-19 22:30:09');
INSERT INTO `caiwu` VALUES ('66', 'admin', '87', '抉择', '-500', '40', '审核会员郭丽娜', '2011-07-19 23:09:44');
INSERT INTO `caiwu` VALUES ('67', 'admin', '87', '抉择', '515', '555', '充值515', '2011-08-03 17:07:24');
INSERT INTO `caiwu` VALUES ('68', '抉择', '87', '抉择', '-25', '530', '购物', '2011-08-09 20:55:15');
INSERT INTO `caiwu` VALUES ('69', 'admin', '87', '抉择', '1040', '1570', '充值1040', '2011-08-11 14:12:22');
INSERT INTO `caiwu` VALUES ('70', 'admin', '87', '抉择', '1500', '1570', '充值1500', '2011-08-12 09:14:38');
INSERT INTO `caiwu` VALUES ('71', 'admin', '31', 'qq1', '-500', '0', '审核会员gg2', '2011-08-12 09:21:55');
INSERT INTO `caiwu` VALUES ('72', 'admin', '31', 'qq1', '500', '500', '充值500', '2011-08-12 09:39:50');
INSERT INTO `caiwu` VALUES ('73', 'admin', '31', 'qq1', '500', '500', '充值500', '2011-08-12 09:43:01');
INSERT INTO `caiwu` VALUES ('74', 'admin', '31', 'qq1', '1000', '1000', '充值1000', '2011-08-12 09:46:42');
INSERT INTO `caiwu` VALUES ('75', 'qq1', '31', 'qq1', '-500', '500', '审核会员gg3', '2011-08-12 09:47:32');
INSERT INTO `caiwu` VALUES ('76', 'qq1', '31', 'qq1', '-500', '0', '审核会员gg4', '2011-08-12 09:52:35');
INSERT INTO `caiwu` VALUES ('77', 'admin', '31', 'qq1', '2000', '2000', '充值2000', '2011-08-12 11:54:15');
INSERT INTO `caiwu` VALUES ('78', 'qq1', '31', 'qq1', '-250', '1750', '审核会员hh1', '2011-08-12 11:54:27');
INSERT INTO `caiwu` VALUES ('79', '抉择', '87', '抉择', '-500', '1070', '审核会员六月流觞', '2011-08-12 13:16:12');
INSERT INTO `caiwu` VALUES ('80', 'qq1', '31', 'qq1', '-15', '1735', '购物', '2011-08-30 13:29:29');
INSERT INTO `caiwu` VALUES ('81', 'qq1', '31', 'qq1', '-100', '1635', '购物', '2011-08-30 13:29:39');
INSERT INTO `caiwu` VALUES ('82', 'admin', '31', 'qq1', '-250', '1385', '审核会员yue', '2011-09-01 12:27:38');
INSERT INTO `caiwu` VALUES ('83', 'admin', '30', 'tt1', '5000', '5000', '充值5000', '2011-09-01 22:18:52');
INSERT INTO `caiwu` VALUES ('84', 'admin', '32', 'tt2', '-25', '0', '充值-25', '2011-09-01 22:19:12');
INSERT INTO `caiwu` VALUES ('85', 'admin', '30', 'tt1', '-1000', '4000', '审核会员hy1', '2011-09-01 22:19:26');
INSERT INTO `caiwu` VALUES ('86', 'admin', '30', 'tt1', '-600', '3400', '审核会员hy2', '2011-09-01 22:20:45');
INSERT INTO `caiwu` VALUES ('87', 'admin', '30', 'tt1', '-600', '2800', '审核会员hy3', '2011-09-01 22:20:50');
INSERT INTO `caiwu` VALUES ('88', 'admin', '30', 'tt1', '-1000', '1800', '审核会员zhu1', '2011-09-01 22:22:10');
INSERT INTO `caiwu` VALUES ('89', 'admin', '30', 'tt1', '-600', '1200', '审核会员zhu2', '2011-09-01 22:22:16');
INSERT INTO `caiwu` VALUES ('90', 'admin', '30', 'tt1', '-600', '600', '审核会员zhu3', '2011-09-01 22:23:06');
INSERT INTO `caiwu` VALUES ('91', 'admin', '30', 'tt1', '-600', '0', '充值-600', '2011-09-01 22:24:44');
INSERT INTO `caiwu` VALUES ('92', '抉择', '87', '抉择', '-100', '970', '审核会员YY11', '2011-09-02 21:20:22');
INSERT INTO `caiwu` VALUES ('93', '抉择', '87', '抉择', '-100', '870', '审核会员吕明明', '2011-09-02 21:35:20');
INSERT INTO `caiwu` VALUES ('94', '抉择', '87', '抉择', '-400', '470', '审核会员种瓜得豆', '2011-09-03 10:17:21');
INSERT INTO `caiwu` VALUES ('95', 'admin', '99', 'yue', '300', '300', '充值300', '2011-09-04 13:10:42');
INSERT INTO `caiwu` VALUES ('96', 'yue', '99', 'yue', '-250', '50', '审核会员wp', '2011-09-04 13:14:11');
INSERT INTO `caiwu` VALUES ('97', 'admin', '31', 'qq1', '-100', '1285', '审核会员东区', '2011-09-04 16:09:29');
INSERT INTO `caiwu` VALUES ('98', '抉择', '87', '抉择', '-100', '370', '审核会员王魁峰', '2011-09-05 23:06:34');
INSERT INTO `caiwu` VALUES ('99', 'admin', '37', 'xin1', '100', '100', '充值100', '2011-09-07 14:25:26');
INSERT INTO `caiwu` VALUES ('100', 'xin1', '37', 'xin1', '-100', '0', '审核会员无敌', '2011-09-07 14:31:26');
INSERT INTO `caiwu` VALUES ('101', 'admin', '37', 'xin1', '1040', '1040', '充值1040', '2011-09-09 17:59:17');
INSERT INTO `caiwu` VALUES ('102', 'xin1', '37', 'xin1', '-500', '540', '审核会员游龙', '2011-09-09 18:03:09');
INSERT INTO `caiwu` VALUES ('103', 'xin1', '37', 'xin1', '-250', '290', '审核会员游龙1', '2011-09-09 18:03:14');
INSERT INTO `caiwu` VALUES ('104', 'xin1', '37', 'xin1', '-250', '40', '审核会员游龙2', '2011-09-09 18:04:18');
INSERT INTO `caiwu` VALUES ('105', '抉择', '87', '抉择', '-100', '270', '审核会员今相见', '2011-09-11 08:08:32');
INSERT INTO `caiwu` VALUES ('106', 'admin', '37', 'xin1', '100', '140', '充值100', '2011-09-11 11:32:26');
INSERT INTO `caiwu` VALUES ('107', 'xin1', '37', 'xin1', '-100', '40', '审核会员成功的路', '2011-09-11 11:36:21');
INSERT INTO `caiwu` VALUES ('108', 'admin', '120', '成功的路', '400', '400', '充值400', '2011-09-11 15:09:04');
INSERT INTO `caiwu` VALUES ('109', '成功的路', '120', '成功的路', '-25', '375', '审核会员b1', '2011-09-11 15:17:58');
INSERT INTO `caiwu` VALUES ('110', '成功的路', '120', '成功的路', '-15', '360', '购物', '2011-09-11 16:10:36');
INSERT INTO `caiwu` VALUES ('111', '成功的路', '120', '成功的路', '-15', '345', '购物', '2011-09-11 17:11:18');
INSERT INTO `caiwu` VALUES ('112', '成功的路', '120', '成功的路', '-15', '330', '购物', '2011-09-11 17:11:48');
INSERT INTO `caiwu` VALUES ('113', '成功的路', '120', '成功的路', '-15', '315', '购物', '2011-09-11 17:11:57');
INSERT INTO `caiwu` VALUES ('114', '成功的路', '120', '成功的路', '-15', '300', '购物', '2011-09-11 17:14:24');
INSERT INTO `caiwu` VALUES ('115', '成功的路', '120', '成功的路', '-15', '285', '购物', '2011-09-11 17:14:44');
INSERT INTO `caiwu` VALUES ('116', 'admin', '37', 'xin1', '615', '655', '充值615', '2011-09-11 22:07:41');
INSERT INTO `caiwu` VALUES ('117', 'admin', '37', 'xin1', '-500', '155', '审核会员蓝天', '2011-09-11 22:08:10');
INSERT INTO `caiwu` VALUES ('118', 'admin', '37', 'xin1', '-100', '55', '充值-100', '2011-09-11 22:08:49');
INSERT INTO `caiwu` VALUES ('119', 'admin', '35', 'qq3', '515', '515', '充值515', '2011-09-12 11:55:22');
INSERT INTO `caiwu` VALUES ('120', 'admin', '35', 'qq3', '-500', '15', '审核会员qq5', '2011-09-12 11:55:37');
INSERT INTO `caiwu` VALUES ('121', 'admin', '35', 'qq3', '250', '265', '充值250', '2011-09-12 11:56:02');
INSERT INTO `caiwu` VALUES ('122', 'admin', '35', 'qq3', '-250', '15', '审核会员qq4', '2011-09-12 11:56:08');
INSERT INTO `caiwu` VALUES ('123', 'qq3', '35', 'qq3', '-15', '0', '购物', '2011-09-12 21:00:59');
INSERT INTO `caiwu` VALUES ('124', 'qq1', '31', 'qq1', '-250', '1035', '审核会员haha', '2011-09-13 21:22:55');
INSERT INTO `caiwu` VALUES ('125', 'admin', '87', '抉择', '300', '570', '充值300', '2011-09-14 15:11:54');
INSERT INTO `caiwu` VALUES ('126', '抉择', '87', '抉择', '-500', '70', '审核会员郭芳', '2011-09-14 15:18:16');
INSERT INTO `caiwu` VALUES ('127', '成功的路', '120', '成功的路', '-15', '270', '购物', '2011-09-14 17:36:42');
INSERT INTO `caiwu` VALUES ('128', '成功的路', '120', '成功的路', '-15', '255', '购物', '2011-09-14 23:10:11');
INSERT INTO `caiwu` VALUES ('129', 'admin', '35', 'qq3', '1040', '1040', '充值1040', '2011-09-17 14:13:49');
INSERT INTO `caiwu` VALUES ('130', 'qq3', '35', 'qq3', '-500', '540', '审核会员马薪', '2011-09-17 14:16:29');
INSERT INTO `caiwu` VALUES ('131', 'qq3', '35', 'qq3', '-250', '290', '审核会员马薪1', '2011-09-17 14:16:34');
INSERT INTO `caiwu` VALUES ('132', 'qq3', '35', 'qq3', '-250', '40', '审核会员马薪2', '2011-09-17 14:19:33');
INSERT INTO `caiwu` VALUES ('133', 'admin', '35', 'qq3', '515', '555', '充值515', '2011-09-18 15:28:19');
INSERT INTO `caiwu` VALUES ('134', 'qq3', '35', 'qq3', '-250', '305', '审核会员张志明', '2011-09-18 15:42:54');
INSERT INTO `caiwu` VALUES ('135', 'admin', '35', 'qq3', '200', '505', '充值200', '2011-09-19 17:20:09');
INSERT INTO `caiwu` VALUES ('136', 'qq3', '35', 'qq3', '-500', '5', '审核会员陈永旺', '2011-09-19 17:39:36');
INSERT INTO `caiwu` VALUES ('137', 'admin', '120', '成功的路', '-75', '180', '充值-75', '2011-09-20 15:50:44');
INSERT INTO `caiwu` VALUES ('138', 'admin', '35', 'qq3', '515', '520', '充值515', '2011-09-21 11:59:18');
INSERT INTO `caiwu` VALUES ('139', 'qq3', '35', 'qq3', '-500', '20', '审核会员冯涛', '2011-09-21 12:22:38');
INSERT INTO `caiwu` VALUES ('140', 'admin', '37', 'xin1', '100', '155', '充值100', '2011-09-21 13:59:29');
INSERT INTO `caiwu` VALUES ('141', 'xin1', '37', 'xin1', '-100', '55', '审核会员冷风', '2011-09-21 14:53:03');
INSERT INTO `caiwu` VALUES ('142', 'admin', '37', 'xin1', '515', '570', '充值515', '2011-09-21 17:21:04');
INSERT INTO `caiwu` VALUES ('143', 'xin1', '37', 'xin1', '-500', '70', '审核会员盛夏光年', '2011-09-21 17:23:02');
INSERT INTO `caiwu` VALUES ('144', 'admin', '118', '盛夏光年', '1020', '1020', '充值1020', '2011-09-21 17:30:48');
INSERT INTO `caiwu` VALUES ('145', 'xin1', '37', 'xin1', '-25', '45', '审核会员1', '2011-09-21 20:07:56');
INSERT INTO `caiwu` VALUES ('146', '盛夏光年', '118', '盛夏光年', '-500', '520', '审核会员666666', '2011-09-21 21:54:14');
INSERT INTO `caiwu` VALUES ('147', 'admin', '118', '盛夏光年', '-30', '490', '充值-30', '2011-09-22 08:25:40');
INSERT INTO `caiwu` VALUES ('148', 'admin', '74', 'a', '-70', '0', '充值-70', '2011-09-23 02:30:17');
INSERT INTO `caiwu` VALUES ('149', '成功的路', '120', '成功的路', '-100', '80', '审核会员STAR88', '2011-09-23 18:47:04');
INSERT INTO `caiwu` VALUES ('150', 'qq3', '35', 'qq3', '-15', '5', '购物', '2011-09-23 19:20:51');
INSERT INTO `caiwu` VALUES ('151', '盛夏光年', '118', '盛夏光年', '-15', '475', '购物', '2011-09-23 20:30:47');
INSERT INTO `caiwu` VALUES ('152', 'admin', '118', '盛夏光年', '1020', '1495', '充值1020', '2011-09-23 20:45:29');
INSERT INTO `caiwu` VALUES ('153', '盛夏光年', '118', '盛夏光年', '-500', '995', '审核会员黄从江', '2011-09-23 20:46:32');
INSERT INTO `caiwu` VALUES ('154', 'admin', '35', 'qq3', '100', '105', '充值100', '2011-09-23 21:10:56');
INSERT INTO `caiwu` VALUES ('155', 'qq3', '35', 'qq3', '-100', '5', '审核会员马薪3', '2011-09-23 21:16:27');
INSERT INTO `caiwu` VALUES ('156', 'admin', '143', '张志明', '100', '100', '充值100', '2011-09-24 10:57:53');
INSERT INTO `caiwu` VALUES ('157', '张志明', '143', '张志明', '-100', '0', '审核会员顾天云', '2011-09-24 10:58:48');
INSERT INTO `caiwu` VALUES ('158', '盛夏光年', '118', '盛夏光年', '-500', '495', '审核会员lijinjin', '2011-09-24 13:35:54');
INSERT INTO `caiwu` VALUES ('159', 'admin', '125', 'b1', '50', '50', '充值50', '2011-09-24 15:46:11');
INSERT INTO `caiwu` VALUES ('160', 'admin', '120', '成功的路', '-50', '30', '充值-50', '2011-09-25 20:21:25');
INSERT INTO `caiwu` VALUES ('161', '盛夏光年', '118', '盛夏光年', '-15', '480', '购物', '2011-09-25 20:31:51');
INSERT INTO `caiwu` VALUES ('162', 'admin', '140', '马薪', '300', '300', '充值300', '2011-09-26 12:40:37');
INSERT INTO `caiwu` VALUES ('163', '马薪', '140', '马薪', '-250', '50', '审核会员曹海涛', '2011-09-26 12:44:54');
INSERT INTO `caiwu` VALUES ('164', 'admin', '87', '抉择', '400', '470', '充值400', '2011-09-26 22:44:31');
INSERT INTO `caiwu` VALUES ('165', '抉择', '87', '抉择', '-100', '370', '审核会员崔宗仁', '2011-09-26 22:52:09');
INSERT INTO `caiwu` VALUES ('166', 'admin', '143', '张志明', '100', '100', '充值100', '2011-09-27 10:29:30');
INSERT INTO `caiwu` VALUES ('167', '张志明', '143', '张志明', '-100', '0', '审核会员小希', '2011-09-27 10:30:58');
INSERT INTO `caiwu` VALUES ('168', 'admin', '118', '盛夏光年', '1020', '1500', '充值1020', '2011-09-27 15:44:53');
INSERT INTO `caiwu` VALUES ('169', 'admin', '118', '盛夏光年', '-500', '1000', '充值-500', '2011-09-28 12:19:22');
INSERT INTO `caiwu` VALUES ('170', 'admin', '37', 'xin1', '100', '145', '充值100', '2011-09-28 13:33:16');
INSERT INTO `caiwu` VALUES ('171', 'xin1', '37', 'xin1', '-100', '45', '审核会员冷风1', '2011-09-28 13:39:18');
INSERT INTO `caiwu` VALUES ('172', 'admin', '35', 'qq3', '515', '520', '充值515', '2011-09-29 14:31:23');
INSERT INTO `caiwu` VALUES ('173', 'qq3', '35', 'qq3', '-250', '270', '审核会员李聪', '2011-09-29 14:46:18');
INSERT INTO `caiwu` VALUES ('174', 'qq3', '35', 'qq3', '-125', '145', '审核会员李聪1', '2011-09-29 14:47:37');
INSERT INTO `caiwu` VALUES ('175', 'qq3', '35', 'qq3', '-125', '20', '审核会员李聪2', '2011-09-29 14:47:42');
INSERT INTO `caiwu` VALUES ('176', '盛夏光年', '118', '盛夏光年', '-500', '500', '审核会员枫', '2011-09-29 22:04:51');
INSERT INTO `caiwu` VALUES ('177', 'admin', '118', '盛夏光年', '-100', '400', '充值-100', '2011-09-29 22:17:25');
INSERT INTO `caiwu` VALUES ('178', 'qq3', '35', 'qq3', '-15', '5', '购物', '2011-10-04 19:41:28');
INSERT INTO `caiwu` VALUES ('179', '盛夏光年', '118', '盛夏光年', '-125', '275', '审核会员999999', '2011-10-07 11:28:50');
INSERT INTO `caiwu` VALUES ('180', 'admin', '118', '盛夏光年', '-75', '200', '充值-75', '2011-10-07 23:40:14');
INSERT INTO `caiwu` VALUES ('181', 'admin', '127', '蓝天', '515', '515', '充值515', '2011-10-08 17:21:31');
INSERT INTO `caiwu` VALUES ('182', '蓝天', '127', '蓝天', '-250', '265', '审核会员蓝天A', '2011-10-08 17:51:09');
INSERT INTO `caiwu` VALUES ('183', '蓝天', '127', '蓝天', '-125', '140', '审核会员蓝天B', '2011-10-08 17:51:54');
INSERT INTO `caiwu` VALUES ('184', '蓝天', '127', '蓝天', '-125', '15', '审核会员蓝天C', '2011-10-08 17:52:40');
INSERT INTO `caiwu` VALUES ('185', 'admin', '143', '张志明', '100', '100', '充值100', '2011-10-08 19:01:14');
INSERT INTO `caiwu` VALUES ('186', '张志明', '143', '张志明', '-100', '0', '购物', '2011-10-08 19:02:51');
INSERT INTO `caiwu` VALUES ('187', 'admin', '140', '马薪', '100', '150', '充值100', '2011-10-08 19:30:27');
INSERT INTO `caiwu` VALUES ('188', '马薪', '140', '马薪', '-100', '50', '审核会员冯涛1', '2011-10-08 19:32:04');
INSERT INTO `caiwu` VALUES ('189', 'admin', '143', '张志明', '100', '100', '充值100', '2011-10-08 20:55:24');
INSERT INTO `caiwu` VALUES ('190', '张志明', '143', '张志明', '-100', '0', '审核会员帅', '2011-10-08 20:58:18');
INSERT INTO `caiwu` VALUES ('191', 'admin', '127', '蓝天', '515', '530', '充值515', '2011-10-09 13:07:38');
INSERT INTO `caiwu` VALUES ('192', '马薪', '140', '马薪', '-15', '35', '购物', '2011-10-09 13:29:36');
INSERT INTO `caiwu` VALUES ('193', '蓝天', '127', '蓝天', '-250', '280', '审核会员银行', '2011-10-09 14:56:18');
INSERT INTO `caiwu` VALUES ('194', '蓝天', '127', '蓝天', '-125', '155', '审核会员蓝天1', '2011-10-09 14:56:42');
INSERT INTO `caiwu` VALUES ('195', '蓝天', '127', '蓝天', '-125', '30', '审核会员蓝天2', '2011-10-09 14:56:51');
INSERT INTO `caiwu` VALUES ('196', 'admin', '35', 'qq3', '200', '205', '充值200', '2011-10-10 12:07:31');
INSERT INTO `caiwu` VALUES ('197', 'qq3', '35', 'qq3', '-125', '80', '审核会员胡世明', '2011-10-10 12:08:13');
INSERT INTO `caiwu` VALUES ('198', 'admin', '35', 'qq3', '-75', '5', '充值-75', '2011-10-10 12:09:24');
INSERT INTO `caiwu` VALUES ('199', 'admin', '118', '盛夏光年', '2200', '2400', '充值2200', '2011-10-10 15:05:07');
INSERT INTO `caiwu` VALUES ('200', '盛夏光年', '118', '盛夏光年', '-250', '2150', '审核会员18737552173', '2011-10-10 15:52:19');
INSERT INTO `caiwu` VALUES ('201', '盛夏光年', '118', '盛夏光年', '-125', '2025', '审核会员18790260106', '2011-10-10 15:54:20');
INSERT INTO `caiwu` VALUES ('202', '盛夏光年', '118', '盛夏光年', '-125', '1900', '审核会员13523752198', '2011-10-10 15:54:27');
INSERT INTO `caiwu` VALUES ('203', '盛夏光年', '118', '盛夏光年', '-250', '1650', '审核会员xiaosi', '2011-10-10 16:55:11');
INSERT INTO `caiwu` VALUES ('204', 'admin', '118', '盛夏光年', '-150', '1500', '充值-150', '2011-10-10 17:07:30');
INSERT INTO `caiwu` VALUES ('205', 'admin', '35', 'qq3', '200', '205', '充值200', '2011-10-10 21:09:50');
INSERT INTO `caiwu` VALUES ('206', 'qq3', '35', 'qq3', '-125', '80', '审核会员ZGH', '2011-10-10 21:15:01');
INSERT INTO `caiwu` VALUES ('207', 'admin', '35', 'qq3', '-75', '5', '充值-75', '2011-10-10 21:20:26');
INSERT INTO `caiwu` VALUES ('208', 'admin', '118', '盛夏光年', '-30', '1470', '充值-30', '2011-10-13 18:37:49');
INSERT INTO `caiwu` VALUES ('209', 'admin', '152', '666666', '500', '500', '充值500', '2011-10-14 12:11:18');
INSERT INTO `caiwu` VALUES ('210', '666666', '152', '666666', '-250', '250', '审核会员888888', '2011-10-14 12:12:18');
INSERT INTO `caiwu` VALUES ('211', 'admin', '189', '胡世明', '200', '200', '充值200', '2011-10-14 17:43:24');
INSERT INTO `caiwu` VALUES ('212', '胡世明', '189', '胡世明', '-15', '185', '购物', '2011-10-14 17:45:19');
INSERT INTO `caiwu` VALUES ('213', '胡世明', '189', '胡世明', '-15', '170', '购物', '2011-10-15 17:23:57');
INSERT INTO `caiwu` VALUES ('214', '胡世明', '189', '胡世明', '-15', '155', '购物', '2011-10-15 22:46:21');
INSERT INTO `caiwu` VALUES ('215', '胡世明', '189', '胡世明', '-125', '30', '审核会员传奇M', '2011-10-16 12:26:59');
INSERT INTO `caiwu` VALUES ('216', '胡世明', '189', '胡世明', '-15', '15', '购物', '2011-10-16 14:20:37');
INSERT INTO `caiwu` VALUES ('217', '胡世明', '189', '胡世明', '-15', '0', '购物', '2011-10-16 14:31:34');
INSERT INTO `caiwu` VALUES ('218', 'admin', '189', '胡世明', '200', '200', '充值200', '2011-10-16 17:24:08');
INSERT INTO `caiwu` VALUES ('219', '胡世明', '189', '胡世明', '-15', '185', '购物', '2011-10-16 17:25:55');
INSERT INTO `caiwu` VALUES ('220', '胡世明', '189', '胡世明', '-25', '160', '审核会员轩168', '2011-10-16 18:45:50');
INSERT INTO `caiwu` VALUES ('221', 'admin', '35', 'qq3', '1080', '1085', '充值1080', '2011-10-16 20:43:16');
INSERT INTO `caiwu` VALUES ('222', '胡世明', '189', '胡世明', '-125', '35', '审核会员一一123', '2011-10-16 20:43:24');
INSERT INTO `caiwu` VALUES ('223', 'qq3', '35', 'qq3', '-250', '835', '审核会员胡俊', '2011-10-16 20:48:27');
INSERT INTO `caiwu` VALUES ('224', 'qq3', '35', 'qq3', '-125', '710', '审核会员胡俊1', '2011-10-16 20:48:32');
INSERT INTO `caiwu` VALUES ('225', 'qq3', '35', 'qq3', '-125', '585', '审核会员胡俊2', '2011-10-16 20:53:29');
INSERT INTO `caiwu` VALUES ('226', 'qq3', '35', 'qq3', '-250', '335', '审核会员王亚龙', '2011-10-16 20:53:34');
INSERT INTO `caiwu` VALUES ('227', 'qq3', '35', 'qq3', '-125', '210', '审核会员王亚龙1', '2011-10-16 21:00:02');
INSERT INTO `caiwu` VALUES ('228', 'qq3', '35', 'qq3', '-125', '85', '审核会员王亚龙2', '2011-10-16 21:00:07');
INSERT INTO `caiwu` VALUES ('229', 'admin', '35', 'qq3', '-20', '65', '充值-20', '2011-10-16 21:17:31');
INSERT INTO `caiwu` VALUES ('230', '胡世明', '189', '胡世明', '-15', '20', '购物', '2011-10-17 12:22:07');
INSERT INTO `caiwu` VALUES ('231', '胡世明', '189', '胡世明', '-15', '5', '购物', '2011-10-17 12:22:22');
INSERT INTO `caiwu` VALUES ('232', 'admin', '189', '胡世明', '520', '525', '充值520', '2011-10-17 19:19:54');
INSERT INTO `caiwu` VALUES ('233', '胡世明', '189', '胡世明', '-125', '400', '审核会员挑战者2', '2011-10-17 19:33:35');
INSERT INTO `caiwu` VALUES ('234', '胡世明', '189', '胡世明', '-15', '385', '购物', '2011-10-17 19:34:58');
INSERT INTO `caiwu` VALUES ('235', '胡世明', '189', '胡世明', '-125', '260', '审核会员二二123', '2011-10-17 20:04:59');
INSERT INTO `caiwu` VALUES ('236', 'admin', '35', 'qq3', '520', '585', '充值520', '2011-10-17 21:11:07');
INSERT INTO `caiwu` VALUES ('237', 'qq3', '35', 'qq3', '-250', '335', '审核会员LX', '2011-10-17 21:14:41');
INSERT INTO `caiwu` VALUES ('238', 'qq3', '35', 'qq3', '-125', '210', '审核会员LX1', '2011-10-17 21:14:47');
INSERT INTO `caiwu` VALUES ('239', 'qq3', '35', 'qq3', '-125', '85', '审核会员LX2', '2011-10-17 21:15:50');
INSERT INTO `caiwu` VALUES ('240', 'qq3', '35', 'qq3', '-15', '70', '购物', '2011-10-18 13:05:08');
INSERT INTO `caiwu` VALUES ('241', '盛夏光年', '118', '盛夏光年', '-15', '1455', '购物', '2011-10-18 15:31:38');
INSERT INTO `caiwu` VALUES ('242', '盛夏光年', '118', '盛夏光年', '-15', '1440', '购物', '2011-10-18 15:33:27');
INSERT INTO `caiwu` VALUES ('243', '胡世明', '189', '胡世明', '-15', '245', '购物', '2011-10-18 19:38:22');
INSERT INTO `caiwu` VALUES ('244', 'qq3', '35', 'qq3', '-15', '55', '购物', '2011-10-19 15:52:52');
INSERT INTO `caiwu` VALUES ('245', '盛夏光年', '118', '盛夏光年', '-100', '1340', '审核会员java', '2011-10-20 22:49:57');
INSERT INTO `caiwu` VALUES ('246', '胡世明', '189', '胡世明', '-15', '230', '购物', '2011-10-21 13:43:15');
INSERT INTO `caiwu` VALUES ('247', 'admin', '210', 'LX', '100', '100', '充值100', '2011-10-24 18:06:39');
INSERT INTO `caiwu` VALUES ('248', 'LX', '210', 'LX', '-100', '0', '审核会员ZZJ', '2011-10-24 18:11:21');
INSERT INTO `caiwu` VALUES ('249', '盛夏光年', '118', '盛夏光年', '-100', '1240', '审核会员hui', '2011-10-25 21:30:36');
INSERT INTO `caiwu` VALUES ('250', 'admin', '35', 'qq3', '100', '155', '充值100', '2011-10-26 12:46:48');
INSERT INTO `caiwu` VALUES ('251', 'qq3', '35', 'qq3', '-100', '55', '审核会员GYL', '2011-10-26 12:47:23');
INSERT INTO `caiwu` VALUES ('252', '胡世明', '189', '胡世明', '-100', '130', '审核会员传奇N', '2011-10-26 13:42:45');
INSERT INTO `caiwu` VALUES ('253', '盛夏光年', '118', '盛夏光年', '-100', '1140', '审核会员吻着泪说爱你', '2011-10-27 22:02:18');
INSERT INTO `caiwu` VALUES ('254', '胡世明', '189', '胡世明', '-100', '30', '审核会员挑战者3', '2011-10-28 13:58:52');
INSERT INTO `caiwu` VALUES ('255', '盛夏光年', '118', '盛夏光年', '-25', '1115', '审核会员001', '2011-10-28 18:11:19');
INSERT INTO `caiwu` VALUES ('256', 'admin', '143', '张志明', '100', '100', '充值100', '2011-10-31 18:38:05');
INSERT INTO `caiwu` VALUES ('257', '张志明', '143', '张志明', '-15', '85', '购物', '2011-10-31 18:39:04');
INSERT INTO `caiwu` VALUES ('258', '张志明', '143', '张志明', '-15', '70', '购物', '2011-10-31 21:16:09');
INSERT INTO `caiwu` VALUES ('259', 'qq1', '31', 'qq1', '-60', '975', '购物', '2011-11-01 13:19:14');
INSERT INTO `caiwu` VALUES ('260', 'qq3', '35', 'qq3', '-55', '0', '购物', '2011-11-02 12:35:23');
INSERT INTO `caiwu` VALUES ('261', '666666', '152', '666666', '-50', '200', '购物', '2011-11-02 22:07:48');
INSERT INTO `caiwu` VALUES ('262', '盛夏光年', '118', '盛夏光年', '-50', '1065', '购物', '2011-11-03 10:07:20');
INSERT INTO `caiwu` VALUES ('263', '盛夏光年', '118', '盛夏光年', '-25', '1040', '审核会员002', '2011-11-03 12:39:55');
INSERT INTO `caiwu` VALUES ('264', '抉择', '87', '抉择', '-25', '345', '审核会员抉择2', '2011-11-04 22:27:39');
INSERT INTO `caiwu` VALUES ('265', 'admin', '87', '抉择', '-75', '270', '充值-75', '2011-11-04 22:55:36');
INSERT INTO `caiwu` VALUES ('266', 'admin', '118', '盛夏光年', '-20', '1020', '充值-20', '2011-11-05 14:34:54');
INSERT INTO `caiwu` VALUES ('267', 'admin', '35', 'qq3', '515', '515', '充值515', '2011-11-05 16:51:20');
INSERT INTO `caiwu` VALUES ('268', 'qq3', '35', 'qq3', '-100', '415', '审核会员H', '2011-11-05 17:08:10');
INSERT INTO `caiwu` VALUES ('269', 'qq3', '35', 'qq3', '-250', '165', '审核会员L', '2011-11-05 17:10:21');
INSERT INTO `caiwu` VALUES ('270', 'qq3', '35', 'qq3', '-100', '65', '审核会员D', '2011-11-05 17:11:23');
INSERT INTO `caiwu` VALUES ('271', '成功的路', '120', '成功的路', '-25', '5', '购物', '2011-11-05 19:32:12');
INSERT INTO `caiwu` VALUES ('272', 'admin', '118', '盛夏光年', '-75', '945', '充值-75', '2011-11-06 15:54:10');
INSERT INTO `caiwu` VALUES ('273', '盛夏光年', '118', '盛夏光年', '-100', '845', '审核会员01', '2011-11-06 15:57:03');
INSERT INTO `caiwu` VALUES ('274', '盛夏光年', '118', '盛夏光年', '-50', '795', '购物', '2011-11-07 21:44:41');
INSERT INTO `caiwu` VALUES ('275', '666666', '152', '666666', '-50', '150', '购物', '2011-11-07 21:56:20');
INSERT INTO `caiwu` VALUES ('276', '666666', '152', '666666', '-50', '100', '购物', '2011-11-07 21:56:39');
INSERT INTO `caiwu` VALUES ('277', '盛夏光年', '118', '盛夏光年', '-25', '770', '审核会员004', '2011-11-08 19:35:54');
INSERT INTO `caiwu` VALUES ('278', 'qq3', '35', 'qq3', '-25', '40', '购物', '2011-11-09 12:00:26');
INSERT INTO `caiwu` VALUES ('279', '盛夏光年', '118', '盛夏光年', '-25', '745', '审核会员005', '2011-11-09 21:34:00');
INSERT INTO `caiwu` VALUES ('280', '盛夏光年', '118', '盛夏光年', '-25', '720', '审核会员003', '2011-11-09 21:36:07');
INSERT INTO `caiwu` VALUES ('281', '盛夏光年', '118', '盛夏光年', '-50', '670', '购物', '2011-11-09 21:58:43');
INSERT INTO `caiwu` VALUES ('282', '盛夏光年', '118', '盛夏光年', '-50', '620', '购物', '2011-11-09 21:58:46');
INSERT INTO `caiwu` VALUES ('283', 'admin', '118', '盛夏光年', '-150', '470', '充值-150', '2011-11-10 09:44:57');
INSERT INTO `caiwu` VALUES ('284', '盛夏光年', '118', '盛夏光年', '-50', '420', '审核会员02', '2011-11-10 12:33:28');
INSERT INTO `caiwu` VALUES ('285', '盛夏光年', '118', '盛夏光年', '-50', '370', '审核会员03', '2011-11-10 12:34:12');
INSERT INTO `caiwu` VALUES ('286', '盛夏光年', '118', '盛夏光年', '-50', '320', '审核会员04', '2011-11-10 12:34:18');
INSERT INTO `caiwu` VALUES ('287', '盛夏光年', '118', '盛夏光年', '-125', '195', '审核会员c1', '2011-11-10 12:52:04');
INSERT INTO `caiwu` VALUES ('288', '666666', '152', '666666', '-50', '50', '审核会员000000', '2011-11-10 13:06:20');
INSERT INTO `caiwu` VALUES ('289', '666666', '152', '666666', '-50', '0', '审核会员111111', '2011-11-10 13:06:26');
INSERT INTO `caiwu` VALUES ('290', 'admin', '35', 'qq3', '400', '440', '充值400', '2011-11-10 18:21:25');
INSERT INTO `caiwu` VALUES ('291', 'qq3', '35', 'qq3', '-250', '190', '审核会员LC', '2011-11-10 18:22:50');
INSERT INTO `caiwu` VALUES ('292', 'qq3', '35', 'qq3', '-50', '140', '审核会员LC1', '2011-11-10 18:22:57');
INSERT INTO `caiwu` VALUES ('293', 'qq3', '35', 'qq3', '-50', '90', '审核会员LC2', '2011-11-10 18:25:15');
INSERT INTO `caiwu` VALUES ('294', '盛夏光年', '118', '盛夏光年', '-25', '170', '购物', '2011-11-10 21:15:37');
INSERT INTO `caiwu` VALUES ('295', 'admin', '193', 'ZGH', '1080', '1080', '充值1080', '2011-11-10 21:17:30');
INSERT INTO `caiwu` VALUES ('296', 'ZGH', '193', 'ZGH', '-500', '580', '审核会员ZJH', '2011-11-10 21:18:18');
INSERT INTO `caiwu` VALUES ('297', 'ZGH', '193', 'ZGH', '-500', '80', '审核会员YMC', '2011-11-10 21:18:25');
INSERT INTO `caiwu` VALUES ('298', '盛夏光年', '118', '盛夏光年', '-12.5', '157.5', '审核会员006', '2011-11-10 21:26:19');
INSERT INTO `caiwu` VALUES ('299', '盛夏光年', '118', '盛夏光年', '-50', '107.5', '审核会员cui', '2011-11-10 21:28:17');
INSERT INTO `caiwu` VALUES ('300', 'admin', '244', 'L', '300', '300', '充值300', '2011-11-11 19:39:56');
INSERT INTO `caiwu` VALUES ('301', 'L', '244', 'L', '-250', '50', '审核会员LJH', '2011-11-11 19:41:13');
INSERT INTO `caiwu` VALUES ('302', 'L', '244', 'L', '-50', '0', '审核会员asd', '2011-11-11 20:13:38');
INSERT INTO `caiwu` VALUES ('303', 'admin', '118', '盛夏光年', '1080', '1187.5', '充值1080', '2011-11-11 20:24:52');
INSERT INTO `caiwu` VALUES ('304', 'qq3', '35', 'qq3', '-50', '40', '审核会员LC4', '2011-11-11 20:40:35');
INSERT INTO `caiwu` VALUES ('305', 'admin', '193', 'ZGH', '200', '280', '充值200', '2011-11-11 21:23:15');
INSERT INTO `caiwu` VALUES ('306', 'ZGH', '193', 'ZGH', '-12.5', '267.5', '审核会员YMC1', '2011-11-11 21:24:36');
INSERT INTO `caiwu` VALUES ('307', 'ZGH', '193', 'ZGH', '-250', '17.5', '审核会员MC', '2011-11-11 21:27:04');
INSERT INTO `caiwu` VALUES ('308', '盛夏光年', '118', '盛夏光年', '-125', '1062.5', '审核会员强子', '2011-11-11 21:56:10');
INSERT INTO `caiwu` VALUES ('309', '盛夏光年', '118', '盛夏光年', '-50', '1012.5', '审核会员07', '2011-11-11 22:07:23');
INSERT INTO `caiwu` VALUES ('310', '盛夏光年', '118', '盛夏光年', '-50', '962.5', '审核会员10', '2011-11-11 22:07:36');
INSERT INTO `caiwu` VALUES ('311', '02', '118', '盛夏光年', '-50', '912.5', '审核会员05', '2011-11-12 13:31:10');
INSERT INTO `caiwu` VALUES ('312', '盛夏光年', '118', '盛夏光年', '-50', '862.5', '审核会员08', '2011-11-12 13:35:07');
INSERT INTO `caiwu` VALUES ('313', '盛夏光年', '118', '盛夏光年', '-50', '812.5', '审核会员09', '2011-11-12 13:35:11');
INSERT INTO `caiwu` VALUES ('314', 'admin', '262', 'ZJH', '300', '300', '充值300', '2011-11-12 18:20:53');
INSERT INTO `caiwu` VALUES ('315', 'admin', '283', '强子', '200', '200', '充值200', '2011-11-12 18:47:50');
INSERT INTO `caiwu` VALUES ('316', '强子', '283', '强子', '-50', '150', '购物', '2011-11-12 18:54:12');
INSERT INTO `caiwu` VALUES ('317', '强子', '283', '强子', '-50', '100', '购物', '2011-11-12 18:54:20');
INSERT INTO `caiwu` VALUES ('318', 'ZJH', '262', 'ZJH', '-250', '50', '审核会员ZJH1', '2011-11-12 18:56:00');
INSERT INTO `caiwu` VALUES ('319', '强子', '283', '强子', '-25', '75', '购物', '2011-11-12 19:00:16');
INSERT INTO `caiwu` VALUES ('320', '强子', '283', '强子', '-25', '50', '购物', '2011-11-12 19:15:45');
INSERT INTO `caiwu` VALUES ('321', '强子', '283', '强子', '-25', '25', '购物', '2011-11-12 19:27:04');
INSERT INTO `caiwu` VALUES ('322', '盛夏光年', '118', '盛夏光年', '-50', '762.5', '购物', '2011-11-12 21:39:55');
INSERT INTO `caiwu` VALUES ('323', '盛夏光年', '118', '盛夏光年', '-50', '712.5', '审核会员11', '2011-11-13 14:34:24');
INSERT INTO `caiwu` VALUES ('324', '盛夏光年', '118', '盛夏光年', '-50', '662.5', '审核会员12', '2011-11-13 14:34:29');
INSERT INTO `caiwu` VALUES ('325', '盛夏光年', '118', '盛夏光年', '-25', '637.5', '购物', '2011-11-13 20:10:38');
INSERT INTO `caiwu` VALUES ('326', 'admin', '35', 'qq3', '200', '240', '充值200', '2011-11-14 10:05:02');
INSERT INTO `caiwu` VALUES ('327', 'qq3', '35', 'qq3', '-125', '115', '审核会员LCZ', '2011-11-14 10:06:14');
INSERT INTO `caiwu` VALUES ('328', 'qq3', '35', 'qq3', '-50', '65', '审核会员LCZ1', '2011-11-14 10:06:24');
INSERT INTO `caiwu` VALUES ('329', 'qq3', '35', 'qq3', '-50', '15', '审核会员LCZ2', '2011-11-14 10:15:43');
INSERT INTO `caiwu` VALUES ('330', 'admin', '35', 'qq3', '1280', '1295', '充值1280', '2011-11-14 15:19:52');
INSERT INTO `caiwu` VALUES ('331', 'admin', '258', 'LC', '300', '300', '充值300', '2011-11-14 15:20:24');
INSERT INTO `caiwu` VALUES ('332', 'qq3', '35', 'qq3', '-500', '795', '审核会员现在', '2011-11-14 15:21:57');
INSERT INTO `caiwu` VALUES ('333', 'qq3', '35', 'qq3', '-125', '670', '审核会员过去', '2011-11-14 15:22:02');
INSERT INTO `caiwu` VALUES ('334', 'qq3', '35', 'qq3', '-125', '545', '审核会员未来', '2011-11-14 15:26:22');
INSERT INTO `caiwu` VALUES ('335', 'qq3', '35', 'qq3', '-500', '45', '审核会员遇见', '2011-11-14 15:26:29');
INSERT INTO `caiwu` VALUES ('336', 'LC', '258', 'LC', '-125', '175', '审核会员hzz', '2011-11-14 17:56:15');
INSERT INTO `caiwu` VALUES ('337', 'LC', '258', 'LC', '-50', '125', '审核会员hzz1', '2011-11-14 17:56:27');
INSERT INTO `caiwu` VALUES ('338', 'LC', '258', 'LC', '-50', '75', '审核会员hzz2', '2011-11-14 17:57:55');
INSERT INTO `caiwu` VALUES ('339', 'LC', '258', 'LC', '-50', '25', '审核会员DY', '2011-11-14 19:24:56');
INSERT INTO `caiwu` VALUES ('340', 'qq1', '31', 'qq1', '-250', '725', '审核会员GCS', '2011-11-14 20:57:22');
INSERT INTO `caiwu` VALUES ('341', 'qq1', '31', 'qq1', '-250', '475', '审核会员XXD', '2011-11-14 20:57:28');
INSERT INTO `caiwu` VALUES ('342', 'qq1', '31', 'qq1', '-125', '350', '审核会员XXD1', '2011-11-14 21:00:41');
INSERT INTO `caiwu` VALUES ('343', 'qq1', '31', 'qq1', '-125', '225', '审核会员XXD2', '2011-11-14 21:01:05');
INSERT INTO `caiwu` VALUES ('344', 'admin', '34', 'qq2', '2000', '2000', '充值2000', '2011-11-14 21:03:25');
INSERT INTO `caiwu` VALUES ('345', 'admin', '31', 'qq1', '1000', '1225', '充值1000', '2011-11-14 21:03:38');
INSERT INTO `caiwu` VALUES ('346', 'qq1', '31', 'qq1', '-125', '1100', '审核会员HDY', '2011-11-14 21:06:12');
INSERT INTO `caiwu` VALUES ('347', 'admin', '34', 'qq2', '-2000', '0', '充值-2000', '2011-11-14 21:08:30');
INSERT INTO `caiwu` VALUES ('348', 'admin', '31', 'qq1', '-1000', '100', '充值-1000', '2011-11-14 21:10:45');
INSERT INTO `caiwu` VALUES ('349', 'admin', '34', 'qq2', '1100', '1100', '充值1100', '2011-11-14 21:11:11');
INSERT INTO `caiwu` VALUES ('350', 'admin', '31', 'qq1', '1080', '1180', '充值1080', '2011-11-15 09:06:05');
INSERT INTO `caiwu` VALUES ('351', 'admin', '35', 'qq3', '100', '145', '充值100', '2011-11-15 13:19:00');
INSERT INTO `caiwu` VALUES ('352', 'qq3', '35', 'qq3', '-125', '20', '审核会员LJL', '2011-11-15 13:19:34');
INSERT INTO `caiwu` VALUES ('353', 'LC', '258', 'LC', '-25', '0', '购物', '2011-11-15 13:57:15');
INSERT INTO `caiwu` VALUES ('354', 'admin', '258', 'LC', '200', '200', '充值200', '2011-11-15 16:57:58');
INSERT INTO `caiwu` VALUES ('355', 'LC', '258', 'LC', '-50', '150', '审核会员lc5', '2011-11-15 17:05:01');
INSERT INTO `caiwu` VALUES ('356', 'LC', '258', 'LC', '-50', '100', '审核会员lc3', '2011-11-15 17:37:28');
INSERT INTO `caiwu` VALUES ('357', 'admin', '210', 'LX', '200', '200', '充值200', '2011-11-15 18:37:20');
INSERT INTO `caiwu` VALUES ('358', 'LX', '210', 'LX', '-125', '75', '审核会员ZYM', '2011-11-15 18:45:06');
INSERT INTO `caiwu` VALUES ('359', 'admin', '118', '盛夏光年', '-75', '562.5', '充值-75', '2011-11-15 20:37:30');
INSERT INTO `caiwu` VALUES ('360', 'admin', '118', '盛夏光年', '-150', '412.5', '充值-150', '2011-11-16 13:14:59');
INSERT INTO `caiwu` VALUES ('361', '盛夏光年', '118', '盛夏光年', '-50', '362.5', '审核会员13', '2011-11-16 16:03:21');
INSERT INTO `caiwu` VALUES ('362', '盛夏光年', '118', '盛夏光年', '-50', '312.5', '审核会员14', '2011-11-16 16:03:27');
INSERT INTO `caiwu` VALUES ('363', 'admin', '210', 'LX', '100', '175', '充值100', '2011-11-16 17:11:57');
INSERT INTO `caiwu` VALUES ('364', '张志明', '143', '张志明', '-25', '45', '购物', '2011-11-16 17:19:18');
INSERT INTO `caiwu` VALUES ('365', 'LX', '210', 'LX', '-125', '50', '审核会员TXD', '2011-11-16 17:44:11');
INSERT INTO `caiwu` VALUES ('366', '盛夏光年', '118', '盛夏光年', '-125', '187.5', '审核会员娟', '2011-11-16 20:36:59');
INSERT INTO `caiwu` VALUES ('367', '盛夏光年', '118', '盛夏光年', '-125', '62.5', '审核会员诺诺', '2011-11-17 09:52:28');
INSERT INTO `caiwu` VALUES ('368', 'admin', '118', '盛夏光年', '515', '577.5', '充值515', '2011-11-17 09:56:07');
INSERT INTO `caiwu` VALUES ('369', '盛夏光年', '118', '盛夏光年', '-125', '452.5', '审核会员雷', '2011-11-17 09:56:26');
INSERT INTO `caiwu` VALUES ('370', 'admin', '118', '盛夏光年', '15', '467.5', '充值15', '2011-11-17 09:59:10');
INSERT INTO `caiwu` VALUES ('371', '盛夏光年', '118', '盛夏光年', '-50', '417.5', '审核会员15', '2011-11-17 10:02:35');
INSERT INTO `caiwu` VALUES ('372', '盛夏光年', '118', '盛夏光年', '-50', '367.5', '审核会员16', '2011-11-17 10:02:45');
INSERT INTO `caiwu` VALUES ('373', 'admin', '328', 'TXD', '200', '200', '充值200', '2011-11-17 12:35:35');
INSERT INTO `caiwu` VALUES ('374', 'TXD', '328', 'TXD', '-125', '75', '审核会员YW', '2011-11-17 12:45:28');
INSERT INTO `caiwu` VALUES ('375', 'admin', '189', '胡世明', '100', '130', '充值100', '2011-11-17 13:46:26');
INSERT INTO `caiwu` VALUES ('376', 'admin', '118', '盛夏光年', '-75', '292.5', '充值-75', '2011-11-17 13:48:09');
INSERT INTO `caiwu` VALUES ('377', 'admin', '31', 'qq1', '-125', '1055', '审核会员CL', '2011-11-17 16:15:18');
INSERT INTO `caiwu` VALUES ('378', '马薪', '140', '马薪', '-25', '10', '购物', '2011-11-17 17:05:18');
INSERT INTO `caiwu` VALUES ('379', 'admin', '258', 'LC', '300', '400', '充值300', '2011-11-17 17:26:01');
INSERT INTO `caiwu` VALUES ('380', '胡世明', '189', '胡世明', '-50', '80', '审核会员挑战者1', '2011-11-17 18:15:34');
INSERT INTO `caiwu` VALUES ('381', 'LC', '258', 'LC', '-250', '150', '审核会员zxd', '2011-11-17 18:24:44');
INSERT INTO `caiwu` VALUES ('382', 'LC', '258', 'LC', '-50', '100', '审核会员zxd1', '2011-11-17 18:24:48');
INSERT INTO `caiwu` VALUES ('383', 'LC', '258', 'LC', '-50', '50', '审核会员zxd2', '2011-11-17 18:28:58');
INSERT INTO `caiwu` VALUES ('384', 'admin', '175', '李聪', '200', '200', '充值200', '2011-11-17 19:16:36');
INSERT INTO `caiwu` VALUES ('385', '李聪', '175', '李聪', '-125', '75', '审核会员王盼', '2011-11-17 19:39:07');
INSERT INTO `caiwu` VALUES ('386', '李聪', '175', '李聪', '-50', '25', '审核会员尹珍', '2011-11-17 22:16:31');
INSERT INTO `caiwu` VALUES ('387', 'admin', '35', 'qq3', '100', '120', '充值100', '2011-11-19 16:45:26');
INSERT INTO `caiwu` VALUES ('388', 'admin', '35', 'qq3', '-25', '95', '充值-25', '2011-11-19 17:04:37');
INSERT INTO `caiwu` VALUES ('389', 'admin', '175', '李聪', '-25', '0', '充值-25', '2011-11-20 20:17:30');
INSERT INTO `caiwu` VALUES ('390', 'LX', '210', 'LX', '-50', '0', '购物', '2011-11-20 22:17:43');
INSERT INTO `caiwu` VALUES ('391', '盛夏光年', '118', '盛夏光年', '-100', '192.5', '审核会员bb1', '2011-11-22 13:06:43');
INSERT INTO `caiwu` VALUES ('392', '盛夏光年', '118', '盛夏光年', '-100', '92.5', '审核会员bb2', '2011-11-22 13:06:57');
INSERT INTO `caiwu` VALUES ('393', '盛夏光年', '118', '盛夏光年', '-50', '42.5', '购物', '2011-11-22 13:12:36');
INSERT INTO `caiwu` VALUES ('394', '胡世明', '189', '胡世明', '-50', '30', '购物', '2011-11-22 13:35:27');
INSERT INTO `caiwu` VALUES ('395', 'admin', '118', '盛夏光年', '-25', '17.5', '充值-25', '2011-11-23 17:00:39');
INSERT INTO `caiwu` VALUES ('396', 'admin', '1', 'admin', '11', '11', '充值11', '2017-05-19 07:51:05');
INSERT INTO `caiwu` VALUES ('397', 'admin', '1', 'admin', '200', '200', '充值200', '2017-06-08 21:48:11');
INSERT INTO `caiwu` VALUES ('398', 'admin', '1', 'admin', '200', '400', '充值200', '2017-06-08 21:48:13');
INSERT INTO `caiwu` VALUES ('399', 'admin', '1', 'admin', '200', '600', '充值200', '2017-06-08 21:48:14');
INSERT INTO `caiwu` VALUES ('400', 'admin', '1', 'admin', '1500', '2100', '充值1500', '2017-07-08 14:03:44');
INSERT INTO `caiwu` VALUES ('401', 'admin', '1', 'admin', '-1200', '900', '审核会员tt2', '2017-07-08 16:45:09');
INSERT INTO `caiwu` VALUES ('402', 'admin', '6', 'tt2', '20', '640', '充值20', '2017-07-09 20:34:13');
INSERT INTO `caiwu` VALUES ('403', 'admin', '6', 'tt2', '20', '660', '充值20', '2017-07-09 20:34:17');
INSERT INTO `caiwu` VALUES ('404', 'admin', '6', 'tt2', '20', '680', '充值20', '2017-07-09 20:49:46');
INSERT INTO `caiwu` VALUES ('405', 'admin', '9', 'wang2', '1500', '1500', '充值1500', '2017-07-10 10:53:15');
INSERT INTO `caiwu` VALUES ('406', 'admin', '9', 'wang2', '200', '1700', '充值200', '2017-07-10 10:58:26');
INSERT INTO `caiwu` VALUES ('407', 'admin', '1', 'admin', '-1200', '300', '审核会员wang1', '2017-07-13 21:56:45');
INSERT INTO `caiwu` VALUES ('408', 'admin', '6', 'tt2', '200', '1700', '充值200', '2017-07-14 21:54:42');
INSERT INTO `caiwu` VALUES ('409', 'admin', '8', 'wang1', '200', '200', '充值200', '2017-07-15 11:47:28');
INSERT INTO `caiwu` VALUES ('410', 'admin', '1', 'admin', '-1200', '2800', '审核会员nnn1', '2017-10-22 19:42:03');
INSERT INTO `caiwu` VALUES ('411', 'admin', '1', 'admin', '-1200', '1600', '审核会员nnn21', '2017-10-22 19:44:13');
INSERT INTO `caiwu` VALUES ('412', 'admin', '1', 'admin', '2000', '2400', '充值2000', '2017-10-22 22:28:49');
INSERT INTO `caiwu` VALUES ('413', 'admin', '1', 'admin', '-1200', '1200', '审核会员nnn112', '2017-10-22 22:28:56');
INSERT INTO `caiwu` VALUES ('414', 'admin', '15', 'bbbb', '1200', '2400', '充值1200', '2017-10-25 18:54:52');
INSERT INTO `caiwu` VALUES ('415', 'admin', '15', 'bbbb', '1200', '3600', '充值1200', '2017-10-25 18:54:54');
INSERT INTO `caiwu` VALUES ('416', 'admin', '6', 'tt2', '1000', '2700', '充值1000', '2017-10-29 16:57:15');

-- ----------------------------
-- Table structure for `chanpin`
-- ----------------------------
DROP TABLE IF EXISTS `chanpin`;
CREATE TABLE `chanpin` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `SortId` int(10) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Picture` varchar(255) DEFAULT NULL,
  `Content` text,
  UNIQUE KEY `Index_31F79463_26EA_4ADE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chanpin
-- ----------------------------
INSERT INTO `chanpin` VALUES ('6', '28', '100元面值充值卡', '/upload/20110701024917.jpg', '互联中国100元面值充值卡');
INSERT INTO `chanpin` VALUES ('7', '28', '互联中国充值卡', '/upload/20110701025053.jpg', '互联中国充值卡');
INSERT INTO `chanpin` VALUES ('8', '28', '500元面值充值卡', '/upload/20110701025204.jpg', '互联中国500元面值充值卡');
INSERT INTO `chanpin` VALUES ('9', '28', '1000元面值充值卡', '/upload/20110701025340.jpg', '互联中国1000元面值充值卡');
INSERT INTO `chanpin` VALUES ('10', '28', '2500元面值充值卡', '/upload/20110701025433.jpg', '互联中国2500元面值充值卡');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `FenHong` int(10) DEFAULT NULL,
  `KouShui` double DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '5', '5');

-- ----------------------------
-- Table structure for `duipeng`
-- ----------------------------
DROP TABLE IF EXISTS `duipeng`;
CREATE TABLE `duipeng` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `FromId` int(10) DEFAULT NULL,
  `FromName` varchar(50) DEFAULT NULL,
  `PengZuo` int(10) DEFAULT NULL,
  `PengYou` int(10) DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FromToId` (`FromId`),
  KEY `Id` (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=2035 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duipeng
-- ----------------------------
INSERT INTO `duipeng` VALUES ('1', '1', 'admin', '30', 'tt1', '10', '0', '2011-06-30 18:19:25');
INSERT INTO `duipeng` VALUES ('2', '1', 'admin', '31', 'qq1', '0', '20', '2011-07-01 21:18:58');
INSERT INTO `duipeng` VALUES ('3', '30', 'tt1', '32', 'tt2', '20', '0', '2011-07-01 21:36:07');
INSERT INTO `duipeng` VALUES ('4', '1', 'admin', '32', 'tt2', '20', '0', '2011-07-01 21:36:07');
INSERT INTO `duipeng` VALUES ('5', '30', 'tt1', '33', 'tt3', '0', '40', '2011-07-01 22:06:13');
INSERT INTO `duipeng` VALUES ('6', '1', 'admin', '33', 'tt3', '40', '0', '2011-07-01 22:06:13');
INSERT INTO `duipeng` VALUES ('7', '31', 'qq1', '34', 'qq2', '20', '0', '2011-07-01 23:59:14');
INSERT INTO `duipeng` VALUES ('8', '1', 'admin', '34', 'qq2', '0', '20', '2011-07-01 23:59:14');
INSERT INTO `duipeng` VALUES ('9', '31', 'qq1', '35', 'qq3', '0', '40', '2011-07-01 23:59:18');
INSERT INTO `duipeng` VALUES ('10', '1', 'admin', '35', 'qq3', '0', '40', '2011-07-01 23:59:18');
INSERT INTO `duipeng` VALUES ('11', '33', 'tt3', '36', 'hh', '4', '0', '2011-07-02 08:57:12');
INSERT INTO `duipeng` VALUES ('12', '30', 'tt1', '36', 'hh', '0', '4', '2011-07-02 08:57:12');
INSERT INTO `duipeng` VALUES ('13', '1', 'admin', '36', 'hh', '4', '0', '2011-07-02 08:57:12');
INSERT INTO `duipeng` VALUES ('14', '32', 'tt2', '37', 'xin1', '40', '0', '2011-07-04 09:38:29');
INSERT INTO `duipeng` VALUES ('15', '30', 'tt1', '37', 'xin1', '40', '0', '2011-07-04 09:38:29');
INSERT INTO `duipeng` VALUES ('16', '1', 'admin', '37', 'xin1', '40', '0', '2011-07-04 09:38:29');
INSERT INTO `duipeng` VALUES ('17', '37', 'xin1', '38', 'xin2', '40', '0', '2011-07-04 09:39:39');
INSERT INTO `duipeng` VALUES ('18', '32', 'tt2', '38', 'xin2', '40', '0', '2011-07-04 09:39:39');
INSERT INTO `duipeng` VALUES ('19', '30', 'tt1', '38', 'xin2', '40', '0', '2011-07-04 09:39:39');
INSERT INTO `duipeng` VALUES ('20', '1', 'admin', '38', 'xin2', '40', '0', '2011-07-04 09:39:39');
INSERT INTO `duipeng` VALUES ('21', '37', 'xin1', '39', 'xin3', '0', '40', '2011-07-04 09:39:42');
INSERT INTO `duipeng` VALUES ('22', '32', 'tt2', '39', 'xin3', '40', '0', '2011-07-04 09:39:42');
INSERT INTO `duipeng` VALUES ('23', '30', 'tt1', '39', 'xin3', '40', '0', '2011-07-04 09:39:42');
INSERT INTO `duipeng` VALUES ('24', '1', 'admin', '39', 'xin3', '40', '0', '2011-07-04 09:39:42');
INSERT INTO `duipeng` VALUES ('25', '38', 'xin2', '41', 'srwxd1', '20', '0', '2011-07-04 10:46:45');
INSERT INTO `duipeng` VALUES ('26', '37', 'xin1', '41', 'srwxd1', '20', '0', '2011-07-04 10:46:45');
INSERT INTO `duipeng` VALUES ('27', '32', 'tt2', '41', 'srwxd1', '20', '0', '2011-07-04 10:46:45');
INSERT INTO `duipeng` VALUES ('28', '30', 'tt1', '41', 'srwxd1', '20', '0', '2011-07-04 10:46:45');
INSERT INTO `duipeng` VALUES ('29', '1', 'admin', '41', 'srwxd1', '20', '0', '2011-07-04 10:46:45');
INSERT INTO `duipeng` VALUES ('30', '39', 'xin3', '46', 'wang3', '0', '20', '2011-07-04 12:27:08');
INSERT INTO `duipeng` VALUES ('31', '37', 'xin1', '46', 'wang3', '0', '20', '2011-07-04 12:27:08');
INSERT INTO `duipeng` VALUES ('32', '32', 'tt2', '46', 'wang3', '20', '0', '2011-07-04 12:27:08');
INSERT INTO `duipeng` VALUES ('33', '30', 'tt1', '46', 'wang3', '20', '0', '2011-07-04 12:27:08');
INSERT INTO `duipeng` VALUES ('34', '1', 'admin', '46', 'wang3', '20', '0', '2011-07-04 12:27:08');
INSERT INTO `duipeng` VALUES ('35', '44', 'wang1', '50', 'ding', '40', '0', '2011-07-05 19:57:41');
INSERT INTO `duipeng` VALUES ('36', '38', 'xin2', '50', 'ding', '0', '40', '2011-07-05 19:57:41');
INSERT INTO `duipeng` VALUES ('37', '37', 'xin1', '50', 'ding', '40', '0', '2011-07-05 19:57:41');
INSERT INTO `duipeng` VALUES ('38', '32', 'tt2', '50', 'ding', '40', '0', '2011-07-05 19:57:41');
INSERT INTO `duipeng` VALUES ('39', '30', 'tt1', '50', 'ding', '40', '0', '2011-07-05 19:57:41');
INSERT INTO `duipeng` VALUES ('40', '1', 'admin', '50', 'ding', '40', '0', '2011-07-05 19:57:41');
INSERT INTO `duipeng` VALUES ('41', '50', 'ding', '51', 'ding2', '20', '0', '2011-07-05 20:48:57');
INSERT INTO `duipeng` VALUES ('42', '44', 'wang1', '51', 'ding2', '20', '0', '2011-07-05 20:48:57');
INSERT INTO `duipeng` VALUES ('43', '38', 'xin2', '51', 'ding2', '0', '20', '2011-07-05 20:48:57');
INSERT INTO `duipeng` VALUES ('44', '37', 'xin1', '51', 'ding2', '20', '0', '2011-07-05 20:48:57');
INSERT INTO `duipeng` VALUES ('45', '32', 'tt2', '51', 'ding2', '20', '0', '2011-07-05 20:48:57');
INSERT INTO `duipeng` VALUES ('46', '30', 'tt1', '51', 'ding2', '20', '0', '2011-07-05 20:48:57');
INSERT INTO `duipeng` VALUES ('47', '1', 'admin', '51', 'ding2', '20', '0', '2011-07-05 20:48:57');
INSERT INTO `duipeng` VALUES ('48', '50', 'ding', '52', 'ding3', '0', '20', '2011-07-05 20:49:02');
INSERT INTO `duipeng` VALUES ('49', '44', 'wang1', '52', 'ding3', '20', '0', '2011-07-05 20:49:02');
INSERT INTO `duipeng` VALUES ('50', '38', 'xin2', '52', 'ding3', '0', '20', '2011-07-05 20:49:02');
INSERT INTO `duipeng` VALUES ('51', '37', 'xin1', '52', 'ding3', '20', '0', '2011-07-05 20:49:02');
INSERT INTO `duipeng` VALUES ('52', '32', 'tt2', '52', 'ding3', '20', '0', '2011-07-05 20:49:02');
INSERT INTO `duipeng` VALUES ('53', '30', 'tt1', '52', 'ding3', '20', '0', '2011-07-05 20:49:02');
INSERT INTO `duipeng` VALUES ('54', '1', 'admin', '52', 'ding3', '20', '0', '2011-07-05 20:49:02');
INSERT INTO `duipeng` VALUES ('55', '51', 'ding2', '53', 'niu', '40', '0', '2011-07-06 09:29:04');
INSERT INTO `duipeng` VALUES ('56', '50', 'ding', '53', 'niu', '40', '0', '2011-07-06 09:29:04');
INSERT INTO `duipeng` VALUES ('57', '44', 'wang1', '53', 'niu', '40', '0', '2011-07-06 09:29:04');
INSERT INTO `duipeng` VALUES ('58', '38', 'xin2', '53', 'niu', '0', '40', '2011-07-06 09:29:04');
INSERT INTO `duipeng` VALUES ('59', '37', 'xin1', '53', 'niu', '40', '0', '2011-07-06 09:29:04');
INSERT INTO `duipeng` VALUES ('60', '32', 'tt2', '53', 'niu', '40', '0', '2011-07-06 09:29:04');
INSERT INTO `duipeng` VALUES ('61', '30', 'tt1', '53', 'niu', '40', '0', '2011-07-06 09:29:04');
INSERT INTO `duipeng` VALUES ('62', '1', 'admin', '53', 'niu', '40', '0', '2011-07-06 09:29:04');
INSERT INTO `duipeng` VALUES ('63', '53', 'niu', '54', 'niu2', '20', '0', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('64', '51', 'ding2', '54', 'niu2', '20', '0', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('65', '50', 'ding', '54', 'niu2', '20', '0', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('66', '44', 'wang1', '54', 'niu2', '20', '0', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('67', '38', 'xin2', '54', 'niu2', '0', '20', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('68', '37', 'xin1', '54', 'niu2', '20', '0', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('69', '32', 'tt2', '54', 'niu2', '20', '0', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('70', '30', 'tt1', '54', 'niu2', '20', '0', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('71', '1', 'admin', '54', 'niu2', '20', '0', '2011-07-06 09:29:11');
INSERT INTO `duipeng` VALUES ('72', '53', 'niu', '55', 'niu3', '0', '20', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('73', '51', 'ding2', '55', 'niu3', '20', '0', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('74', '50', 'ding', '55', 'niu3', '20', '0', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('75', '44', 'wang1', '55', 'niu3', '20', '0', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('76', '38', 'xin2', '55', 'niu3', '0', '20', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('77', '37', 'xin1', '55', 'niu3', '20', '0', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('78', '32', 'tt2', '55', 'niu3', '20', '0', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('79', '30', 'tt1', '55', 'niu3', '20', '0', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('80', '1', 'admin', '55', 'niu3', '20', '0', '2011-07-06 09:30:48');
INSERT INTO `duipeng` VALUES ('81', '68', 'hemei', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('82', '67', 'hao', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('83', '42', 'srwxd2', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('84', '41', 'srwxd1', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('85', '38', 'xin2', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('86', '37', 'xin1', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('87', '32', 'tt2', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('88', '30', 'tt1', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('89', '1', 'admin', '69', 'wumei', '40', '0', '2011-07-06 21:54:39');
INSERT INTO `duipeng` VALUES ('90', '69', 'wumei', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('91', '68', 'hemei', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('92', '67', 'hao', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('93', '42', 'srwxd2', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('94', '41', 'srwxd1', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('95', '38', 'xin2', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('96', '37', 'xin1', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('97', '32', 'tt2', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('98', '30', 'tt1', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('99', '1', 'admin', '70', 'wumei2', '40', '0', '2011-07-06 21:54:44');
INSERT INTO `duipeng` VALUES ('100', '69', 'wumei', '71', 'wumei3', '0', '40', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('101', '68', 'hemei', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('102', '67', 'hao', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('103', '42', 'srwxd2', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('104', '41', 'srwxd1', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('105', '38', 'xin2', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('106', '37', 'xin1', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('107', '32', 'tt2', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('108', '30', 'tt1', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('109', '1', 'admin', '71', 'wumei3', '40', '0', '2011-07-06 21:58:50');
INSERT INTO `duipeng` VALUES ('110', '34', 'qq2', '74', 'a', '40', '0', '2011-07-06 22:43:36');
INSERT INTO `duipeng` VALUES ('111', '31', 'qq1', '74', 'a', '40', '0', '2011-07-06 22:43:36');
INSERT INTO `duipeng` VALUES ('112', '1', 'admin', '74', 'a', '0', '40', '2011-07-06 22:43:36');
INSERT INTO `duipeng` VALUES ('113', '74', 'a', '75', 'aa', '20', '0', '2011-07-06 22:48:55');
INSERT INTO `duipeng` VALUES ('114', '34', 'qq2', '75', 'aa', '20', '0', '2011-07-06 22:48:55');
INSERT INTO `duipeng` VALUES ('115', '31', 'qq1', '75', 'aa', '20', '0', '2011-07-06 22:48:55');
INSERT INTO `duipeng` VALUES ('116', '1', 'admin', '75', 'aa', '0', '20', '2011-07-06 22:48:55');
INSERT INTO `duipeng` VALUES ('117', '74', 'a', '79', 'aaa', '0', '20', '2011-07-06 23:35:10');
INSERT INTO `duipeng` VALUES ('118', '34', 'qq2', '79', 'aaa', '20', '0', '2011-07-06 23:35:10');
INSERT INTO `duipeng` VALUES ('119', '31', 'qq1', '79', 'aaa', '20', '0', '2011-07-06 23:35:10');
INSERT INTO `duipeng` VALUES ('120', '1', 'admin', '79', 'aaa', '0', '20', '2011-07-06 23:35:10');
INSERT INTO `duipeng` VALUES ('121', '70', 'wumei2', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('122', '69', 'wumei', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('123', '68', 'hemei', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('124', '67', 'hao', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('125', '42', 'srwxd2', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('126', '41', 'srwxd1', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('127', '38', 'xin2', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('128', '37', 'xin1', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('129', '32', 'tt2', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('130', '30', 'tt1', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('131', '1', 'admin', '82', 'huanying', '40', '0', '2011-07-09 16:42:23');
INSERT INTO `duipeng` VALUES ('132', '82', 'huanying', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('133', '70', 'wumei2', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('134', '69', 'wumei', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('135', '68', 'hemei', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('136', '67', 'hao', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('137', '42', 'srwxd2', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('138', '41', 'srwxd1', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('139', '38', 'xin2', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('140', '37', 'xin1', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('141', '32', 'tt2', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('142', '30', 'tt1', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('143', '1', 'admin', '83', 'huanying2', '40', '0', '2011-07-09 16:43:05');
INSERT INTO `duipeng` VALUES ('144', '82', 'huanying', '85', 'huanying3', '0', '40', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('145', '70', 'wumei2', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('146', '69', 'wumei', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('147', '68', 'hemei', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('148', '67', 'hao', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('149', '42', 'srwxd2', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('150', '41', 'srwxd1', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('151', '38', 'xin2', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('152', '37', 'xin1', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('153', '32', 'tt2', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('154', '30', 'tt1', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('155', '1', 'admin', '85', 'huanying3', '40', '0', '2011-07-09 16:46:52');
INSERT INTO `duipeng` VALUES ('156', '41', 'srwxd1', '42', 'srwxd2', '20', '0', '2011-07-10 09:33:27');
INSERT INTO `duipeng` VALUES ('157', '38', 'xin2', '42', 'srwxd2', '20', '0', '2011-07-10 09:33:27');
INSERT INTO `duipeng` VALUES ('158', '37', 'xin1', '42', 'srwxd2', '20', '0', '2011-07-10 09:33:27');
INSERT INTO `duipeng` VALUES ('159', '32', 'tt2', '42', 'srwxd2', '20', '0', '2011-07-10 09:33:27');
INSERT INTO `duipeng` VALUES ('160', '30', 'tt1', '42', 'srwxd2', '20', '0', '2011-07-10 09:33:27');
INSERT INTO `duipeng` VALUES ('161', '1', 'admin', '42', 'srwxd2', '20', '0', '2011-07-10 09:33:27');
INSERT INTO `duipeng` VALUES ('162', '35', 'qq3', '87', '抉择', '0', '20', '2011-07-16 11:25:04');
INSERT INTO `duipeng` VALUES ('163', '31', 'qq1', '87', '抉择', '0', '20', '2011-07-16 11:25:04');
INSERT INTO `duipeng` VALUES ('164', '1', 'admin', '87', '抉择', '0', '20', '2011-07-16 11:25:04');
INSERT INTO `duipeng` VALUES ('165', '87', '抉择', '88', '刘林', '10', '0', '2011-07-19 22:20:57');
INSERT INTO `duipeng` VALUES ('166', '35', 'qq3', '88', '刘林', '0', '10', '2011-07-19 22:20:57');
INSERT INTO `duipeng` VALUES ('167', '31', 'qq1', '88', '刘林', '0', '10', '2011-07-19 22:20:57');
INSERT INTO `duipeng` VALUES ('168', '1', 'admin', '88', '刘林', '0', '10', '2011-07-19 22:20:57');
INSERT INTO `duipeng` VALUES ('169', '87', '抉择', '89', '王超', '0', '10', '2011-07-19 22:30:09');
INSERT INTO `duipeng` VALUES ('170', '35', 'qq3', '89', '王超', '0', '10', '2011-07-19 22:30:09');
INSERT INTO `duipeng` VALUES ('171', '31', 'qq1', '89', '王超', '0', '10', '2011-07-19 22:30:09');
INSERT INTO `duipeng` VALUES ('172', '1', 'admin', '89', '王超', '0', '10', '2011-07-19 22:30:09');
INSERT INTO `duipeng` VALUES ('173', '88', '刘林', '90', '郭丽娜', '20', '0', '2011-07-19 23:09:44');
INSERT INTO `duipeng` VALUES ('174', '87', '抉择', '90', '郭丽娜', '20', '0', '2011-07-19 23:09:44');
INSERT INTO `duipeng` VALUES ('175', '35', 'qq3', '90', '郭丽娜', '0', '20', '2011-07-19 23:09:44');
INSERT INTO `duipeng` VALUES ('176', '31', 'qq1', '90', '郭丽娜', '0', '20', '2011-07-19 23:09:44');
INSERT INTO `duipeng` VALUES ('177', '1', 'admin', '90', '郭丽娜', '0', '20', '2011-07-19 23:09:44');
INSERT INTO `duipeng` VALUES ('178', '96', 'gg3', '98', 'hh1', '10', '0', '2011-08-12 11:54:27');
INSERT INTO `duipeng` VALUES ('179', '93', 'gg2', '98', 'hh1', '10', '0', '2011-08-12 11:54:27');
INSERT INTO `duipeng` VALUES ('180', '92', 'gg1', '98', 'hh1', '10', '0', '2011-08-12 11:54:27');
INSERT INTO `duipeng` VALUES ('181', '34', 'qq2', '98', 'hh1', '0', '10', '2011-08-12 11:54:27');
INSERT INTO `duipeng` VALUES ('182', '31', 'qq1', '98', 'hh1', '10', '0', '2011-08-12 11:54:27');
INSERT INTO `duipeng` VALUES ('183', '1', 'admin', '98', 'hh1', '0', '10', '2011-08-12 11:54:27');
INSERT INTO `duipeng` VALUES ('184', '89', '王超', '95', '六月流觞', '0', '20', '2011-08-12 13:16:12');
INSERT INTO `duipeng` VALUES ('185', '87', '抉择', '95', '六月流觞', '0', '20', '2011-08-12 13:16:12');
INSERT INTO `duipeng` VALUES ('186', '35', 'qq3', '95', '六月流觞', '0', '20', '2011-08-12 13:16:12');
INSERT INTO `duipeng` VALUES ('187', '31', 'qq1', '95', '六月流觞', '0', '20', '2011-08-12 13:16:12');
INSERT INTO `duipeng` VALUES ('188', '1', 'admin', '95', '六月流觞', '0', '20', '2011-08-12 13:16:12');
INSERT INTO `duipeng` VALUES ('189', '83', 'huanying2', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('190', '82', 'huanying', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('191', '70', 'wumei2', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('192', '69', 'wumei', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('193', '68', 'hemei', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('194', '67', 'hao', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('195', '42', 'srwxd2', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('196', '41', 'srwxd1', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('197', '38', 'xin2', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('198', '37', 'xin1', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('199', '32', 'tt2', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('200', '30', 'tt1', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('201', '1', 'admin', '99', 'yue', '10', '0', '2011-09-01 12:27:38');
INSERT INTO `duipeng` VALUES ('202', '36', 'hh', '100', 'hy1', '80', '0', '2011-09-01 22:19:26');
INSERT INTO `duipeng` VALUES ('203', '33', 'tt3', '100', 'hy1', '80', '0', '2011-09-01 22:19:26');
INSERT INTO `duipeng` VALUES ('204', '30', 'tt1', '100', 'hy1', '0', '80', '2011-09-01 22:19:26');
INSERT INTO `duipeng` VALUES ('205', '1', 'admin', '100', 'hy1', '80', '0', '2011-09-01 22:19:26');
INSERT INTO `duipeng` VALUES ('206', '100', 'hy1', '101', 'hy2', '40', '0', '2011-09-01 22:20:45');
INSERT INTO `duipeng` VALUES ('207', '36', 'hh', '101', 'hy2', '40', '0', '2011-09-01 22:20:45');
INSERT INTO `duipeng` VALUES ('208', '33', 'tt3', '101', 'hy2', '40', '0', '2011-09-01 22:20:45');
INSERT INTO `duipeng` VALUES ('209', '30', 'tt1', '101', 'hy2', '0', '40', '2011-09-01 22:20:45');
INSERT INTO `duipeng` VALUES ('210', '1', 'admin', '101', 'hy2', '40', '0', '2011-09-01 22:20:45');
INSERT INTO `duipeng` VALUES ('211', '100', 'hy1', '102', 'hy3', '0', '40', '2011-09-01 22:20:50');
INSERT INTO `duipeng` VALUES ('212', '36', 'hh', '102', 'hy3', '40', '0', '2011-09-01 22:20:50');
INSERT INTO `duipeng` VALUES ('213', '33', 'tt3', '102', 'hy3', '40', '0', '2011-09-01 22:20:50');
INSERT INTO `duipeng` VALUES ('214', '30', 'tt1', '102', 'hy3', '0', '40', '2011-09-01 22:20:50');
INSERT INTO `duipeng` VALUES ('215', '1', 'admin', '102', 'hy3', '40', '0', '2011-09-01 22:20:50');
INSERT INTO `duipeng` VALUES ('216', '101', 'hy2', '103', 'zhu1', '80', '0', '2011-09-01 22:22:10');
INSERT INTO `duipeng` VALUES ('217', '100', 'hy1', '103', 'zhu1', '80', '0', '2011-09-01 22:22:10');
INSERT INTO `duipeng` VALUES ('218', '36', 'hh', '103', 'zhu1', '80', '0', '2011-09-01 22:22:10');
INSERT INTO `duipeng` VALUES ('219', '33', 'tt3', '103', 'zhu1', '80', '0', '2011-09-01 22:22:10');
INSERT INTO `duipeng` VALUES ('220', '30', 'tt1', '103', 'zhu1', '0', '80', '2011-09-01 22:22:10');
INSERT INTO `duipeng` VALUES ('221', '1', 'admin', '103', 'zhu1', '80', '0', '2011-09-01 22:22:10');
INSERT INTO `duipeng` VALUES ('222', '103', 'zhu1', '104', 'zhu2', '40', '0', '2011-09-01 22:22:16');
INSERT INTO `duipeng` VALUES ('223', '101', 'hy2', '104', 'zhu2', '40', '0', '2011-09-01 22:22:16');
INSERT INTO `duipeng` VALUES ('224', '100', 'hy1', '104', 'zhu2', '40', '0', '2011-09-01 22:22:16');
INSERT INTO `duipeng` VALUES ('225', '36', 'hh', '104', 'zhu2', '40', '0', '2011-09-01 22:22:16');
INSERT INTO `duipeng` VALUES ('226', '33', 'tt3', '104', 'zhu2', '40', '0', '2011-09-01 22:22:16');
INSERT INTO `duipeng` VALUES ('227', '30', 'tt1', '104', 'zhu2', '0', '40', '2011-09-01 22:22:16');
INSERT INTO `duipeng` VALUES ('228', '1', 'admin', '104', 'zhu2', '40', '0', '2011-09-01 22:22:16');
INSERT INTO `duipeng` VALUES ('229', '103', 'zhu1', '105', 'zhu3', '0', '40', '2011-09-01 22:23:06');
INSERT INTO `duipeng` VALUES ('230', '101', 'hy2', '105', 'zhu3', '40', '0', '2011-09-01 22:23:06');
INSERT INTO `duipeng` VALUES ('231', '100', 'hy1', '105', 'zhu3', '40', '0', '2011-09-01 22:23:06');
INSERT INTO `duipeng` VALUES ('232', '36', 'hh', '105', 'zhu3', '40', '0', '2011-09-01 22:23:06');
INSERT INTO `duipeng` VALUES ('233', '33', 'tt3', '105', 'zhu3', '40', '0', '2011-09-01 22:23:06');
INSERT INTO `duipeng` VALUES ('234', '30', 'tt1', '105', 'zhu3', '0', '40', '2011-09-01 22:23:06');
INSERT INTO `duipeng` VALUES ('235', '1', 'admin', '105', 'zhu3', '40', '0', '2011-09-01 22:23:06');
INSERT INTO `duipeng` VALUES ('236', '88', '刘林', '106', 'YY11', '0', '4', '2011-09-02 21:20:22');
INSERT INTO `duipeng` VALUES ('237', '87', '抉择', '106', 'YY11', '4', '0', '2011-09-02 21:20:22');
INSERT INTO `duipeng` VALUES ('238', '35', 'qq3', '106', 'YY11', '0', '4', '2011-09-02 21:20:22');
INSERT INTO `duipeng` VALUES ('239', '31', 'qq1', '106', 'YY11', '0', '4', '2011-09-02 21:20:22');
INSERT INTO `duipeng` VALUES ('240', '1', 'admin', '106', 'YY11', '0', '4', '2011-09-02 21:20:22');
INSERT INTO `duipeng` VALUES ('241', '89', '王超', '107', '吕明明', '4', '0', '2011-09-02 21:35:20');
INSERT INTO `duipeng` VALUES ('242', '87', '抉择', '107', '吕明明', '0', '4', '2011-09-02 21:35:20');
INSERT INTO `duipeng` VALUES ('243', '35', 'qq3', '107', '吕明明', '0', '4', '2011-09-02 21:35:20');
INSERT INTO `duipeng` VALUES ('244', '31', 'qq1', '107', '吕明明', '0', '4', '2011-09-02 21:35:20');
INSERT INTO `duipeng` VALUES ('245', '1', 'admin', '107', '吕明明', '0', '4', '2011-09-02 21:35:20');
INSERT INTO `duipeng` VALUES ('246', '106', 'YY11', '108', '种瓜得豆', '20', '0', '2011-09-03 10:17:21');
INSERT INTO `duipeng` VALUES ('247', '88', '刘林', '108', '种瓜得豆', '0', '20', '2011-09-03 10:17:21');
INSERT INTO `duipeng` VALUES ('248', '87', '抉择', '108', '种瓜得豆', '20', '0', '2011-09-03 10:17:21');
INSERT INTO `duipeng` VALUES ('249', '35', 'qq3', '108', '种瓜得豆', '0', '20', '2011-09-03 10:17:21');
INSERT INTO `duipeng` VALUES ('250', '31', 'qq1', '108', '种瓜得豆', '0', '20', '2011-09-03 10:17:21');
INSERT INTO `duipeng` VALUES ('251', '1', 'admin', '108', '种瓜得豆', '0', '20', '2011-09-03 10:17:21');
INSERT INTO `duipeng` VALUES ('252', '99', 'yue', '111', 'wp', '0', '10', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('253', '83', 'huanying2', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('254', '82', 'huanying', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('255', '70', 'wumei2', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('256', '69', 'wumei', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('257', '68', 'hemei', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('258', '67', 'hao', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('259', '42', 'srwxd2', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('260', '41', 'srwxd1', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('261', '38', 'xin2', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('262', '37', 'xin1', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('263', '32', 'tt2', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('264', '30', 'tt1', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('265', '1', 'admin', '111', 'wp', '10', '0', '2011-09-04 13:14:11');
INSERT INTO `duipeng` VALUES ('266', '110', 'wangzi', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('267', '109', 'wang', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('268', '99', 'yue', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('269', '83', 'huanying2', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('270', '82', 'huanying', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('271', '70', 'wumei2', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('272', '69', 'wumei', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('273', '68', 'hemei', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('274', '67', 'hao', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('275', '42', 'srwxd2', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('276', '41', 'srwxd1', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('277', '38', 'xin2', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('278', '37', 'xin1', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('279', '32', 'tt2', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('280', '30', 'tt1', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('281', '1', 'admin', '112', '东区', '4', '0', '2011-09-04 16:09:29');
INSERT INTO `duipeng` VALUES ('282', '107', '吕明明', '113', '王魁峰', '0', '4', '2011-09-05 23:06:34');
INSERT INTO `duipeng` VALUES ('283', '89', '王超', '113', '王魁峰', '4', '0', '2011-09-05 23:06:34');
INSERT INTO `duipeng` VALUES ('284', '87', '抉择', '113', '王魁峰', '0', '4', '2011-09-05 23:06:34');
INSERT INTO `duipeng` VALUES ('285', '35', 'qq3', '113', '王魁峰', '0', '4', '2011-09-05 23:06:34');
INSERT INTO `duipeng` VALUES ('286', '31', 'qq1', '113', '王魁峰', '0', '4', '2011-09-05 23:06:34');
INSERT INTO `duipeng` VALUES ('287', '1', 'admin', '113', '王魁峰', '0', '4', '2011-09-05 23:06:34');
INSERT INTO `duipeng` VALUES ('288', '73', 'mao2', '114', '无敌', '0', '4', '2011-09-07 14:31:26');
INSERT INTO `duipeng` VALUES ('289', '48', 'mao', '114', '无敌', '0', '4', '2011-09-07 14:31:26');
INSERT INTO `duipeng` VALUES ('290', '46', 'wang3', '114', '无敌', '0', '4', '2011-09-07 14:31:26');
INSERT INTO `duipeng` VALUES ('291', '39', 'xin3', '114', '无敌', '0', '4', '2011-09-07 14:31:26');
INSERT INTO `duipeng` VALUES ('292', '37', 'xin1', '114', '无敌', '0', '4', '2011-09-07 14:31:26');
INSERT INTO `duipeng` VALUES ('293', '32', 'tt2', '114', '无敌', '4', '0', '2011-09-07 14:31:26');
INSERT INTO `duipeng` VALUES ('294', '30', 'tt1', '114', '无敌', '4', '0', '2011-09-07 14:31:26');
INSERT INTO `duipeng` VALUES ('295', '1', 'admin', '114', '无敌', '4', '0', '2011-09-07 14:31:26');
INSERT INTO `duipeng` VALUES ('296', '114', '无敌', '115', '游龙', '0', '40', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('297', '73', 'mao2', '115', '游龙', '0', '40', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('298', '48', 'mao', '115', '游龙', '0', '40', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('299', '46', 'wang3', '115', '游龙', '0', '40', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('300', '39', 'xin3', '115', '游龙', '0', '40', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('301', '37', 'xin1', '115', '游龙', '0', '40', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('302', '32', 'tt2', '115', '游龙', '40', '0', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('303', '30', 'tt1', '115', '游龙', '40', '0', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('304', '1', 'admin', '115', '游龙', '40', '0', '2011-09-09 18:03:09');
INSERT INTO `duipeng` VALUES ('305', '115', '游龙', '116', '游龙1', '20', '0', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('306', '114', '无敌', '116', '游龙1', '0', '20', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('307', '73', 'mao2', '116', '游龙1', '0', '20', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('308', '48', 'mao', '116', '游龙1', '0', '20', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('309', '46', 'wang3', '116', '游龙1', '0', '20', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('310', '39', 'xin3', '116', '游龙1', '0', '20', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('311', '37', 'xin1', '116', '游龙1', '0', '20', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('312', '32', 'tt2', '116', '游龙1', '20', '0', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('313', '30', 'tt1', '116', '游龙1', '20', '0', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('314', '1', 'admin', '116', '游龙1', '20', '0', '2011-09-09 18:03:14');
INSERT INTO `duipeng` VALUES ('315', '115', '游龙', '117', '游龙2', '0', '20', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('316', '114', '无敌', '117', '游龙2', '0', '20', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('317', '73', 'mao2', '117', '游龙2', '0', '20', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('318', '48', 'mao', '117', '游龙2', '0', '20', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('319', '46', 'wang3', '117', '游龙2', '0', '20', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('320', '39', 'xin3', '117', '游龙2', '0', '20', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('321', '37', 'xin1', '117', '游龙2', '0', '20', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('322', '32', 'tt2', '117', '游龙2', '20', '0', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('323', '30', 'tt1', '117', '游龙2', '20', '0', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('324', '1', 'admin', '117', '游龙2', '20', '0', '2011-09-09 18:04:18');
INSERT INTO `duipeng` VALUES ('325', '90', '郭丽娜', '119', '今相见', '4', '0', '2011-09-11 08:08:32');
INSERT INTO `duipeng` VALUES ('326', '88', '刘林', '119', '今相见', '4', '0', '2011-09-11 08:08:32');
INSERT INTO `duipeng` VALUES ('327', '87', '抉择', '119', '今相见', '4', '0', '2011-09-11 08:08:32');
INSERT INTO `duipeng` VALUES ('328', '35', 'qq3', '119', '今相见', '0', '4', '2011-09-11 08:08:32');
INSERT INTO `duipeng` VALUES ('329', '31', 'qq1', '119', '今相见', '0', '4', '2011-09-11 08:08:32');
INSERT INTO `duipeng` VALUES ('330', '1', 'admin', '119', '今相见', '0', '4', '2011-09-11 08:08:32');
INSERT INTO `duipeng` VALUES ('331', '118', '盛夏光年', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('332', '117', '游龙2', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('333', '115', '游龙', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('334', '114', '无敌', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('335', '73', 'mao2', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('336', '48', 'mao', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('337', '46', 'wang3', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('338', '39', 'xin3', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('339', '37', 'xin1', '120', '成功的路', '0', '4', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('340', '32', 'tt2', '120', '成功的路', '4', '0', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('341', '30', 'tt1', '120', '成功的路', '4', '0', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('342', '1', 'admin', '120', '成功的路', '4', '0', '2011-09-11 11:36:21');
INSERT INTO `duipeng` VALUES ('343', '120', '成功的路', '125', 'b1', '1', '0', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('344', '118', '盛夏光年', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('345', '117', '游龙2', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('346', '115', '游龙', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('347', '114', '无敌', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('348', '73', 'mao2', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('349', '48', 'mao', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('350', '46', 'wang3', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('351', '39', 'xin3', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('352', '37', 'xin1', '125', 'b1', '0', '1', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('353', '32', 'tt2', '125', 'b1', '1', '0', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('354', '30', 'tt1', '125', 'b1', '1', '0', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('355', '1', 'admin', '125', 'b1', '1', '0', '2011-09-11 15:17:58');
INSERT INTO `duipeng` VALUES ('356', '125', 'b1', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('357', '120', '成功的路', '127', '蓝天', '40', '0', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('358', '118', '盛夏光年', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('359', '117', '游龙2', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('360', '115', '游龙', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('361', '114', '无敌', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('362', '73', 'mao2', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('363', '48', 'mao', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('364', '46', 'wang3', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('365', '39', 'xin3', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('366', '37', 'xin1', '127', '蓝天', '0', '40', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('367', '32', 'tt2', '127', '蓝天', '40', '0', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('368', '30', 'tt1', '127', '蓝天', '40', '0', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('369', '1', 'admin', '127', '蓝天', '40', '0', '2011-09-11 22:08:10');
INSERT INTO `duipeng` VALUES ('370', '108', '种瓜得豆', '130', 'qq5', '20', '0', '2011-09-12 11:55:37');
INSERT INTO `duipeng` VALUES ('371', '106', 'YY11', '130', 'qq5', '20', '0', '2011-09-12 11:55:37');
INSERT INTO `duipeng` VALUES ('372', '88', '刘林', '130', 'qq5', '0', '20', '2011-09-12 11:55:37');
INSERT INTO `duipeng` VALUES ('373', '87', '抉择', '130', 'qq5', '20', '0', '2011-09-12 11:55:37');
INSERT INTO `duipeng` VALUES ('374', '35', 'qq3', '130', 'qq5', '0', '20', '2011-09-12 11:55:37');
INSERT INTO `duipeng` VALUES ('375', '31', 'qq1', '130', 'qq5', '0', '20', '2011-09-12 11:55:37');
INSERT INTO `duipeng` VALUES ('376', '1', 'admin', '130', 'qq5', '0', '20', '2011-09-12 11:55:37');
INSERT INTO `duipeng` VALUES ('377', '35', 'qq3', '129', 'qq4', '10', '0', '2011-09-12 11:56:08');
INSERT INTO `duipeng` VALUES ('378', '31', 'qq1', '129', 'qq4', '0', '10', '2011-09-12 11:56:08');
INSERT INTO `duipeng` VALUES ('379', '1', 'admin', '129', 'qq4', '0', '10', '2011-09-12 11:56:08');
INSERT INTO `duipeng` VALUES ('380', '134', 'www88', '135', 'haha', '10', '0', '2011-09-13 21:22:55');
INSERT INTO `duipeng` VALUES ('381', '133', '和谐', '135', 'haha', '10', '0', '2011-09-13 21:22:55');
INSERT INTO `duipeng` VALUES ('382', '132', '小马', '135', 'haha', '10', '0', '2011-09-13 21:22:55');
INSERT INTO `duipeng` VALUES ('383', '34', 'qq2', '135', 'haha', '0', '10', '2011-09-13 21:22:55');
INSERT INTO `duipeng` VALUES ('384', '31', 'qq1', '135', 'haha', '10', '0', '2011-09-13 21:22:55');
INSERT INTO `duipeng` VALUES ('385', '1', 'admin', '135', 'haha', '0', '10', '2011-09-13 21:22:55');
INSERT INTO `duipeng` VALUES ('386', '107', '吕明明', '138', '郭芳', '20', '0', '2011-09-14 15:18:16');
INSERT INTO `duipeng` VALUES ('387', '89', '王超', '138', '郭芳', '20', '0', '2011-09-14 15:18:16');
INSERT INTO `duipeng` VALUES ('388', '87', '抉择', '138', '郭芳', '0', '20', '2011-09-14 15:18:16');
INSERT INTO `duipeng` VALUES ('389', '35', 'qq3', '138', '郭芳', '0', '20', '2011-09-14 15:18:16');
INSERT INTO `duipeng` VALUES ('390', '31', 'qq1', '138', '郭芳', '0', '20', '2011-09-14 15:18:16');
INSERT INTO `duipeng` VALUES ('391', '1', 'admin', '138', '郭芳', '0', '20', '2011-09-14 15:18:16');
INSERT INTO `duipeng` VALUES ('392', '129', 'qq4', '140', '马薪', '20', '0', '2011-09-17 14:16:29');
INSERT INTO `duipeng` VALUES ('393', '35', 'qq3', '140', '马薪', '20', '0', '2011-09-17 14:16:29');
INSERT INTO `duipeng` VALUES ('394', '31', 'qq1', '140', '马薪', '0', '20', '2011-09-17 14:16:29');
INSERT INTO `duipeng` VALUES ('395', '1', 'admin', '140', '马薪', '0', '20', '2011-09-17 14:16:29');
INSERT INTO `duipeng` VALUES ('396', '140', '马薪', '141', '马薪1', '10', '0', '2011-09-17 14:16:34');
INSERT INTO `duipeng` VALUES ('397', '129', 'qq4', '141', '马薪1', '10', '0', '2011-09-17 14:16:34');
INSERT INTO `duipeng` VALUES ('398', '35', 'qq3', '141', '马薪1', '10', '0', '2011-09-17 14:16:34');
INSERT INTO `duipeng` VALUES ('399', '31', 'qq1', '141', '马薪1', '0', '10', '2011-09-17 14:16:34');
INSERT INTO `duipeng` VALUES ('400', '1', 'admin', '141', '马薪1', '0', '10', '2011-09-17 14:16:34');
INSERT INTO `duipeng` VALUES ('401', '140', '马薪', '142', '马薪2', '0', '10', '2011-09-17 14:19:33');
INSERT INTO `duipeng` VALUES ('402', '129', 'qq4', '142', '马薪2', '10', '0', '2011-09-17 14:19:33');
INSERT INTO `duipeng` VALUES ('403', '35', 'qq3', '142', '马薪2', '10', '0', '2011-09-17 14:19:33');
INSERT INTO `duipeng` VALUES ('404', '31', 'qq1', '142', '马薪2', '0', '10', '2011-09-17 14:19:33');
INSERT INTO `duipeng` VALUES ('405', '1', 'admin', '142', '马薪2', '0', '10', '2011-09-17 14:19:33');
INSERT INTO `duipeng` VALUES ('406', '141', '马薪1', '143', '张志明', '10', '0', '2011-09-18 15:42:54');
INSERT INTO `duipeng` VALUES ('407', '140', '马薪', '143', '张志明', '10', '0', '2011-09-18 15:42:54');
INSERT INTO `duipeng` VALUES ('408', '129', 'qq4', '143', '张志明', '10', '0', '2011-09-18 15:42:54');
INSERT INTO `duipeng` VALUES ('409', '35', 'qq3', '143', '张志明', '10', '0', '2011-09-18 15:42:54');
INSERT INTO `duipeng` VALUES ('410', '31', 'qq1', '143', '张志明', '0', '10', '2011-09-18 15:42:54');
INSERT INTO `duipeng` VALUES ('411', '1', 'admin', '143', '张志明', '0', '10', '2011-09-18 15:42:54');
INSERT INTO `duipeng` VALUES ('412', '142', '马薪2', '146', '陈永旺', '20', '0', '2011-09-19 17:39:36');
INSERT INTO `duipeng` VALUES ('413', '140', '马薪', '146', '陈永旺', '0', '20', '2011-09-19 17:39:36');
INSERT INTO `duipeng` VALUES ('414', '129', 'qq4', '146', '陈永旺', '20', '0', '2011-09-19 17:39:36');
INSERT INTO `duipeng` VALUES ('415', '35', 'qq3', '146', '陈永旺', '20', '0', '2011-09-19 17:39:36');
INSERT INTO `duipeng` VALUES ('416', '31', 'qq1', '146', '陈永旺', '0', '20', '2011-09-19 17:39:36');
INSERT INTO `duipeng` VALUES ('417', '1', 'admin', '146', '陈永旺', '0', '20', '2011-09-19 17:39:36');
INSERT INTO `duipeng` VALUES ('418', '143', '张志明', '148', '冯涛', '20', '0', '2011-09-21 12:22:38');
INSERT INTO `duipeng` VALUES ('419', '141', '马薪1', '148', '冯涛', '20', '0', '2011-09-21 12:22:38');
INSERT INTO `duipeng` VALUES ('420', '140', '马薪', '148', '冯涛', '20', '0', '2011-09-21 12:22:38');
INSERT INTO `duipeng` VALUES ('421', '129', 'qq4', '148', '冯涛', '20', '0', '2011-09-21 12:22:38');
INSERT INTO `duipeng` VALUES ('422', '35', 'qq3', '148', '冯涛', '20', '0', '2011-09-21 12:22:38');
INSERT INTO `duipeng` VALUES ('423', '31', 'qq1', '148', '冯涛', '0', '20', '2011-09-21 12:22:38');
INSERT INTO `duipeng` VALUES ('424', '1', 'admin', '148', '冯涛', '0', '20', '2011-09-21 12:22:38');
INSERT INTO `duipeng` VALUES ('425', '127', '蓝天', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('426', '125', 'b1', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('427', '120', '成功的路', '149', '冷风', '4', '0', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('428', '118', '盛夏光年', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('429', '117', '游龙2', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('430', '115', '游龙', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('431', '114', '无敌', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('432', '73', 'mao2', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('433', '48', 'mao', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('434', '46', 'wang3', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('435', '39', 'xin3', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('436', '37', 'xin1', '149', '冷风', '0', '4', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('437', '32', 'tt2', '149', '冷风', '4', '0', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('438', '30', 'tt1', '149', '冷风', '4', '0', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('439', '1', 'admin', '149', '冷风', '4', '0', '2011-09-21 14:53:03');
INSERT INTO `duipeng` VALUES ('440', '117', '游龙2', '118', '盛夏光年', '0', '20', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('441', '115', '游龙', '118', '盛夏光年', '0', '20', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('442', '114', '无敌', '118', '盛夏光年', '0', '20', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('443', '73', 'mao2', '118', '盛夏光年', '0', '20', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('444', '48', 'mao', '118', '盛夏光年', '0', '20', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('445', '46', 'wang3', '118', '盛夏光年', '0', '20', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('446', '39', 'xin3', '118', '盛夏光年', '0', '20', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('447', '37', 'xin1', '118', '盛夏光年', '0', '20', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('448', '32', 'tt2', '118', '盛夏光年', '20', '0', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('449', '30', 'tt1', '118', '盛夏光年', '20', '0', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('450', '1', 'admin', '118', '盛夏光年', '20', '0', '2011-09-21 17:23:02');
INSERT INTO `duipeng` VALUES ('451', '149', '冷风', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('452', '127', '蓝天', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('453', '125', 'b1', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('454', '120', '成功的路', '150', '1', '1', '0', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('455', '118', '盛夏光年', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('456', '117', '游龙2', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('457', '115', '游龙', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('458', '114', '无敌', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('459', '73', 'mao2', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('460', '48', 'mao', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('461', '46', 'wang3', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('462', '39', 'xin3', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('463', '37', 'xin1', '150', '1', '0', '1', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('464', '32', 'tt2', '150', '1', '1', '0', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('465', '30', 'tt1', '150', '1', '1', '0', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('466', '1', 'admin', '150', '1', '1', '0', '2011-09-21 20:07:56');
INSERT INTO `duipeng` VALUES ('467', '151', 'xiaosi', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('468', '118', '盛夏光年', '152', '666666', '20', '0', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('469', '117', '游龙2', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('470', '115', '游龙', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('471', '114', '无敌', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('472', '73', 'mao2', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('473', '48', 'mao', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('474', '46', 'wang3', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('475', '39', 'xin3', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('476', '37', 'xin1', '152', '666666', '0', '20', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('477', '32', 'tt2', '152', '666666', '20', '0', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('478', '30', 'tt1', '152', '666666', '20', '0', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('479', '1', 'admin', '152', '666666', '20', '0', '2011-09-21 21:54:14');
INSERT INTO `duipeng` VALUES ('480', '150', '1', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('481', '149', '冷风', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('482', '127', '蓝天', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('483', '125', 'b1', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('484', '120', '成功的路', '156', 'STAR88', '4', '0', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('485', '118', '盛夏光年', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('486', '117', '游龙2', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('487', '115', '游龙', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('488', '114', '无敌', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('489', '73', 'mao2', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('490', '48', 'mao', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('491', '46', 'wang3', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('492', '39', 'xin3', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('493', '37', 'xin1', '156', 'STAR88', '0', '4', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('494', '32', 'tt2', '156', 'STAR88', '4', '0', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('495', '30', 'tt1', '156', 'STAR88', '4', '0', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('496', '1', 'admin', '156', 'STAR88', '4', '0', '2011-09-23 18:47:04');
INSERT INTO `duipeng` VALUES ('497', '125', 'b1', '158', '黄从江', '20', '0', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('498', '120', '成功的路', '158', '黄从江', '20', '0', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('499', '118', '盛夏光年', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('500', '117', '游龙2', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('501', '115', '游龙', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('502', '114', '无敌', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('503', '73', 'mao2', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('504', '48', 'mao', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('505', '46', 'wang3', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('506', '39', 'xin3', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('507', '37', 'xin1', '158', '黄从江', '0', '20', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('508', '32', 'tt2', '158', '黄从江', '20', '0', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('509', '30', 'tt1', '158', '黄从江', '20', '0', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('510', '1', 'admin', '158', '黄从江', '20', '0', '2011-09-23 20:46:32');
INSERT INTO `duipeng` VALUES ('511', '142', '马薪2', '159', '马薪3', '0', '4', '2011-09-23 21:16:27');
INSERT INTO `duipeng` VALUES ('512', '140', '马薪', '159', '马薪3', '0', '4', '2011-09-23 21:16:27');
INSERT INTO `duipeng` VALUES ('513', '129', 'qq4', '159', '马薪3', '4', '0', '2011-09-23 21:16:27');
INSERT INTO `duipeng` VALUES ('514', '35', 'qq3', '159', '马薪3', '4', '0', '2011-09-23 21:16:27');
INSERT INTO `duipeng` VALUES ('515', '31', 'qq1', '159', '马薪3', '0', '4', '2011-09-23 21:16:27');
INSERT INTO `duipeng` VALUES ('516', '1', 'admin', '159', '马薪3', '0', '4', '2011-09-23 21:16:27');
INSERT INTO `duipeng` VALUES ('517', '143', '张志明', '160', '顾天云', '0', '4', '2011-09-24 10:58:48');
INSERT INTO `duipeng` VALUES ('518', '141', '马薪1', '160', '顾天云', '4', '0', '2011-09-24 10:58:48');
INSERT INTO `duipeng` VALUES ('519', '140', '马薪', '160', '顾天云', '4', '0', '2011-09-24 10:58:48');
INSERT INTO `duipeng` VALUES ('520', '129', 'qq4', '160', '顾天云', '4', '0', '2011-09-24 10:58:48');
INSERT INTO `duipeng` VALUES ('521', '35', 'qq3', '160', '顾天云', '4', '0', '2011-09-24 10:58:48');
INSERT INTO `duipeng` VALUES ('522', '31', 'qq1', '160', '顾天云', '0', '4', '2011-09-24 10:58:48');
INSERT INTO `duipeng` VALUES ('523', '1', 'admin', '160', '顾天云', '0', '4', '2011-09-24 10:58:48');
INSERT INTO `duipeng` VALUES ('524', '154', '888888', '161', 'lijinjin', '20', '0', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('525', '152', '666666', '161', 'lijinjin', '20', '0', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('526', '151', 'xiaosi', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('527', '118', '盛夏光年', '161', 'lijinjin', '20', '0', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('528', '117', '游龙2', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('529', '115', '游龙', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('530', '114', '无敌', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('531', '73', 'mao2', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('532', '48', 'mao', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('533', '46', 'wang3', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('534', '39', 'xin3', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('535', '37', 'xin1', '161', 'lijinjin', '0', '20', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('536', '32', 'tt2', '161', 'lijinjin', '20', '0', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('537', '30', 'tt1', '161', 'lijinjin', '20', '0', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('538', '1', 'admin', '161', 'lijinjin', '20', '0', '2011-09-24 13:35:54');
INSERT INTO `duipeng` VALUES ('539', '159', '马薪3', '165', '曹海涛', '0', '10', '2011-09-26 12:44:54');
INSERT INTO `duipeng` VALUES ('540', '142', '马薪2', '165', '曹海涛', '0', '10', '2011-09-26 12:44:54');
INSERT INTO `duipeng` VALUES ('541', '140', '马薪', '165', '曹海涛', '0', '10', '2011-09-26 12:44:54');
INSERT INTO `duipeng` VALUES ('542', '129', 'qq4', '165', '曹海涛', '10', '0', '2011-09-26 12:44:54');
INSERT INTO `duipeng` VALUES ('543', '35', 'qq3', '165', '曹海涛', '10', '0', '2011-09-26 12:44:54');
INSERT INTO `duipeng` VALUES ('544', '31', 'qq1', '165', '曹海涛', '0', '10', '2011-09-26 12:44:54');
INSERT INTO `duipeng` VALUES ('545', '1', 'admin', '165', '曹海涛', '0', '10', '2011-09-26 12:44:54');
INSERT INTO `duipeng` VALUES ('546', '95', '六月流觞', '166', '崔宗仁', '0', '4', '2011-09-26 22:52:09');
INSERT INTO `duipeng` VALUES ('547', '89', '王超', '166', '崔宗仁', '0', '4', '2011-09-26 22:52:09');
INSERT INTO `duipeng` VALUES ('548', '87', '抉择', '166', '崔宗仁', '0', '4', '2011-09-26 22:52:09');
INSERT INTO `duipeng` VALUES ('549', '35', 'qq3', '166', '崔宗仁', '0', '4', '2011-09-26 22:52:09');
INSERT INTO `duipeng` VALUES ('550', '31', 'qq1', '166', '崔宗仁', '0', '4', '2011-09-26 22:52:09');
INSERT INTO `duipeng` VALUES ('551', '1', 'admin', '166', '崔宗仁', '0', '4', '2011-09-26 22:52:09');
INSERT INTO `duipeng` VALUES ('552', '148', '冯涛', '167', '小希', '4', '0', '2011-09-27 10:30:58');
INSERT INTO `duipeng` VALUES ('553', '143', '张志明', '167', '小希', '4', '0', '2011-09-27 10:30:58');
INSERT INTO `duipeng` VALUES ('554', '141', '马薪1', '167', '小希', '4', '0', '2011-09-27 10:30:58');
INSERT INTO `duipeng` VALUES ('555', '140', '马薪', '167', '小希', '4', '0', '2011-09-27 10:30:58');
INSERT INTO `duipeng` VALUES ('556', '129', 'qq4', '167', '小希', '4', '0', '2011-09-27 10:30:58');
INSERT INTO `duipeng` VALUES ('557', '35', 'qq3', '167', '小希', '4', '0', '2011-09-27 10:30:58');
INSERT INTO `duipeng` VALUES ('558', '31', 'qq1', '167', '小希', '0', '4', '2011-09-27 10:30:58');
INSERT INTO `duipeng` VALUES ('559', '1', 'admin', '167', '小希', '0', '4', '2011-09-27 10:30:58');
INSERT INTO `duipeng` VALUES ('560', '149', '冷风', '169', '冷风1', '4', '0', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('561', '127', '蓝天', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('562', '125', 'b1', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('563', '120', '成功的路', '169', '冷风1', '4', '0', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('564', '118', '盛夏光年', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('565', '117', '游龙2', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('566', '115', '游龙', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('567', '114', '无敌', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('568', '73', 'mao2', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('569', '48', 'mao', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('570', '46', 'wang3', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('571', '39', 'xin3', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('572', '37', 'xin1', '169', '冷风1', '0', '4', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('573', '32', 'tt2', '169', '冷风1', '4', '0', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('574', '30', 'tt1', '169', '冷风1', '4', '0', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('575', '1', 'admin', '169', '冷风1', '4', '0', '2011-09-28 13:39:18');
INSERT INTO `duipeng` VALUES ('576', '129', 'qq4', '175', '李聪', '0', '20', '2011-09-29 14:46:18');
INSERT INTO `duipeng` VALUES ('577', '35', 'qq3', '175', '李聪', '20', '0', '2011-09-29 14:46:18');
INSERT INTO `duipeng` VALUES ('578', '31', 'qq1', '175', '李聪', '0', '20', '2011-09-29 14:46:18');
INSERT INTO `duipeng` VALUES ('579', '1', 'admin', '175', '李聪', '0', '20', '2011-09-29 14:46:18');
INSERT INTO `duipeng` VALUES ('580', '175', '李聪', '176', '李聪1', '10', '0', '2011-09-29 14:47:37');
INSERT INTO `duipeng` VALUES ('581', '129', 'qq4', '176', '李聪1', '0', '10', '2011-09-29 14:47:37');
INSERT INTO `duipeng` VALUES ('582', '35', 'qq3', '176', '李聪1', '10', '0', '2011-09-29 14:47:37');
INSERT INTO `duipeng` VALUES ('583', '31', 'qq1', '176', '李聪1', '0', '10', '2011-09-29 14:47:37');
INSERT INTO `duipeng` VALUES ('584', '1', 'admin', '176', '李聪1', '0', '10', '2011-09-29 14:47:37');
INSERT INTO `duipeng` VALUES ('585', '175', '李聪', '177', '李聪2', '0', '10', '2011-09-29 14:47:42');
INSERT INTO `duipeng` VALUES ('586', '129', 'qq4', '177', '李聪2', '0', '10', '2011-09-29 14:47:42');
INSERT INTO `duipeng` VALUES ('587', '35', 'qq3', '177', '李聪2', '10', '0', '2011-09-29 14:47:42');
INSERT INTO `duipeng` VALUES ('588', '31', 'qq1', '177', '李聪2', '0', '10', '2011-09-29 14:47:42');
INSERT INTO `duipeng` VALUES ('589', '1', 'admin', '177', '李聪2', '0', '10', '2011-09-29 14:47:42');
INSERT INTO `duipeng` VALUES ('590', '161', 'lijinjin', '162', '枫', '40', '0', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('591', '154', '888888', '162', '枫', '40', '0', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('592', '152', '666666', '162', '枫', '40', '0', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('593', '151', 'xiaosi', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('594', '118', '盛夏光年', '162', '枫', '40', '0', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('595', '117', '游龙2', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('596', '115', '游龙', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('597', '114', '无敌', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('598', '73', 'mao2', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('599', '48', 'mao', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('600', '46', 'wang3', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('601', '39', 'xin3', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('602', '37', 'xin1', '162', '枫', '0', '40', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('603', '32', 'tt2', '162', '枫', '40', '0', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('604', '30', 'tt1', '162', '枫', '40', '0', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('605', '1', 'admin', '162', '枫', '40', '0', '2011-09-29 22:04:51');
INSERT INTO `duipeng` VALUES ('606', '152', '666666', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('607', '151', 'xiaosi', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('608', '118', '盛夏光年', '153', '999999', '10', '0', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('609', '117', '游龙2', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('610', '115', '游龙', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('611', '114', '无敌', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('612', '73', 'mao2', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('613', '48', 'mao', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('614', '46', 'wang3', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('615', '39', 'xin3', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('616', '37', 'xin1', '153', '999999', '0', '10', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('617', '32', 'tt2', '153', '999999', '10', '0', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('618', '30', 'tt1', '153', '999999', '10', '0', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('619', '1', 'admin', '153', '999999', '10', '0', '2011-10-07 11:28:50');
INSERT INTO `duipeng` VALUES ('620', '127', '蓝天', '178', '蓝天A', '20', '0', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('621', '125', 'b1', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('622', '120', '成功的路', '178', '蓝天A', '20', '0', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('623', '118', '盛夏光年', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('624', '117', '游龙2', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('625', '115', '游龙', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('626', '114', '无敌', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('627', '73', 'mao2', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('628', '48', 'mao', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('629', '46', 'wang3', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('630', '39', 'xin3', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('631', '37', 'xin1', '178', '蓝天A', '0', '20', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('632', '32', 'tt2', '178', '蓝天A', '20', '0', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('633', '30', 'tt1', '178', '蓝天A', '20', '0', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('634', '1', 'admin', '178', '蓝天A', '20', '0', '2011-10-08 17:51:09');
INSERT INTO `duipeng` VALUES ('635', '178', '蓝天A', '181', '蓝天B', '10', '0', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('636', '127', '蓝天', '181', '蓝天B', '10', '0', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('637', '125', 'b1', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('638', '120', '成功的路', '181', '蓝天B', '10', '0', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('639', '118', '盛夏光年', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('640', '117', '游龙2', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('641', '115', '游龙', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('642', '114', '无敌', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('643', '73', 'mao2', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('644', '48', 'mao', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('645', '46', 'wang3', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('646', '39', 'xin3', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('647', '37', 'xin1', '181', '蓝天B', '0', '10', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('648', '32', 'tt2', '181', '蓝天B', '10', '0', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('649', '30', 'tt1', '181', '蓝天B', '10', '0', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('650', '1', 'admin', '181', '蓝天B', '10', '0', '2011-10-08 17:51:54');
INSERT INTO `duipeng` VALUES ('651', '156', 'STAR88', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('652', '150', '1', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('653', '149', '冷风', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('654', '127', '蓝天', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('655', '125', 'b1', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('656', '120', '成功的路', '180', '蓝天C', '10', '0', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('657', '118', '盛夏光年', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('658', '117', '游龙2', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('659', '115', '游龙', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('660', '114', '无敌', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('661', '73', 'mao2', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('662', '48', 'mao', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('663', '46', 'wang3', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('664', '39', 'xin3', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('665', '37', 'xin1', '180', '蓝天C', '0', '10', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('666', '32', 'tt2', '180', '蓝天C', '10', '0', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('667', '30', 'tt1', '180', '蓝天C', '10', '0', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('668', '1', 'admin', '180', '蓝天C', '10', '0', '2011-10-08 17:52:40');
INSERT INTO `duipeng` VALUES ('669', '167', '小希', '183', '冯涛1', '4', '0', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('670', '148', '冯涛', '183', '冯涛1', '4', '0', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('671', '143', '张志明', '183', '冯涛1', '4', '0', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('672', '141', '马薪1', '183', '冯涛1', '4', '0', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('673', '140', '马薪', '183', '冯涛1', '4', '0', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('674', '129', 'qq4', '183', '冯涛1', '4', '0', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('675', '35', 'qq3', '183', '冯涛1', '4', '0', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('676', '31', 'qq1', '183', '冯涛1', '0', '4', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('677', '1', 'admin', '183', '冯涛1', '0', '4', '2011-10-08 19:32:04');
INSERT INTO `duipeng` VALUES ('678', '160', '顾天云', '184', '帅', '4', '0', '2011-10-08 20:58:18');
INSERT INTO `duipeng` VALUES ('679', '143', '张志明', '184', '帅', '0', '4', '2011-10-08 20:58:18');
INSERT INTO `duipeng` VALUES ('680', '141', '马薪1', '184', '帅', '4', '0', '2011-10-08 20:58:18');
INSERT INTO `duipeng` VALUES ('681', '140', '马薪', '184', '帅', '4', '0', '2011-10-08 20:58:18');
INSERT INTO `duipeng` VALUES ('682', '129', 'qq4', '184', '帅', '4', '0', '2011-10-08 20:58:18');
INSERT INTO `duipeng` VALUES ('683', '35', 'qq3', '184', '帅', '4', '0', '2011-10-08 20:58:18');
INSERT INTO `duipeng` VALUES ('684', '31', 'qq1', '184', '帅', '0', '4', '2011-10-08 20:58:18');
INSERT INTO `duipeng` VALUES ('685', '1', 'admin', '184', '帅', '0', '4', '2011-10-08 20:58:18');
INSERT INTO `duipeng` VALUES ('686', '178', '蓝天A', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('687', '127', '蓝天', '186', '银行', '20', '0', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('688', '125', 'b1', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('689', '120', '成功的路', '186', '银行', '20', '0', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('690', '118', '盛夏光年', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('691', '117', '游龙2', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('692', '115', '游龙', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('693', '114', '无敌', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('694', '73', 'mao2', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('695', '48', 'mao', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('696', '46', 'wang3', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('697', '39', 'xin3', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('698', '37', 'xin1', '186', '银行', '0', '20', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('699', '32', 'tt2', '186', '银行', '20', '0', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('700', '30', 'tt1', '186', '银行', '20', '0', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('701', '1', 'admin', '186', '银行', '20', '0', '2011-10-09 14:56:18');
INSERT INTO `duipeng` VALUES ('702', '186', '银行', '187', '蓝天1', '10', '0', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('703', '178', '蓝天A', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('704', '127', '蓝天', '187', '蓝天1', '10', '0', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('705', '125', 'b1', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('706', '120', '成功的路', '187', '蓝天1', '10', '0', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('707', '118', '盛夏光年', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('708', '117', '游龙2', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('709', '115', '游龙', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('710', '114', '无敌', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('711', '73', 'mao2', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('712', '48', 'mao', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('713', '46', 'wang3', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('714', '39', 'xin3', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('715', '37', 'xin1', '187', '蓝天1', '0', '10', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('716', '32', 'tt2', '187', '蓝天1', '10', '0', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('717', '30', 'tt1', '187', '蓝天1', '10', '0', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('718', '1', 'admin', '187', '蓝天1', '10', '0', '2011-10-09 14:56:42');
INSERT INTO `duipeng` VALUES ('719', '180', '蓝天C', '188', '蓝天2', '10', '0', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('720', '156', 'STAR88', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('721', '150', '1', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('722', '149', '冷风', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('723', '127', '蓝天', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('724', '125', 'b1', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('725', '120', '成功的路', '188', '蓝天2', '10', '0', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('726', '118', '盛夏光年', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('727', '117', '游龙2', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('728', '115', '游龙', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('729', '114', '无敌', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('730', '73', 'mao2', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('731', '48', 'mao', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('732', '46', 'wang3', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('733', '39', 'xin3', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('734', '37', 'xin1', '188', '蓝天2', '0', '10', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('735', '32', 'tt2', '188', '蓝天2', '10', '0', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('736', '30', 'tt1', '188', '蓝天2', '10', '0', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('737', '1', 'admin', '188', '蓝天2', '10', '0', '2011-10-09 14:56:51');
INSERT INTO `duipeng` VALUES ('738', '130', 'qq5', '189', '胡世明', '10', '0', '2011-10-10 12:08:13');
INSERT INTO `duipeng` VALUES ('739', '108', '种瓜得豆', '189', '胡世明', '10', '0', '2011-10-10 12:08:13');
INSERT INTO `duipeng` VALUES ('740', '106', 'YY11', '189', '胡世明', '10', '0', '2011-10-10 12:08:13');
INSERT INTO `duipeng` VALUES ('741', '88', '刘林', '189', '胡世明', '0', '10', '2011-10-10 12:08:13');
INSERT INTO `duipeng` VALUES ('742', '87', '抉择', '189', '胡世明', '10', '0', '2011-10-10 12:08:13');
INSERT INTO `duipeng` VALUES ('743', '35', 'qq3', '189', '胡世明', '0', '10', '2011-10-10 12:08:13');
INSERT INTO `duipeng` VALUES ('744', '31', 'qq1', '189', '胡世明', '0', '10', '2011-10-10 12:08:13');
INSERT INTO `duipeng` VALUES ('745', '1', 'admin', '189', '胡世明', '0', '10', '2011-10-10 12:08:13');
INSERT INTO `duipeng` VALUES ('746', '162', '枫', '190', '18737552173', '20', '0', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('747', '161', 'lijinjin', '190', '18737552173', '20', '0', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('748', '154', '888888', '190', '18737552173', '20', '0', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('749', '152', '666666', '190', '18737552173', '20', '0', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('750', '151', 'xiaosi', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('751', '118', '盛夏光年', '190', '18737552173', '20', '0', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('752', '117', '游龙2', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('753', '115', '游龙', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('754', '114', '无敌', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('755', '73', 'mao2', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('756', '48', 'mao', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('757', '46', 'wang3', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('758', '39', 'xin3', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('759', '37', 'xin1', '190', '18737552173', '0', '20', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('760', '32', 'tt2', '190', '18737552173', '20', '0', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('761', '30', 'tt1', '190', '18737552173', '20', '0', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('762', '1', 'admin', '190', '18737552173', '20', '0', '2011-10-10 15:52:19');
INSERT INTO `duipeng` VALUES ('763', '190', '18737552173', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('764', '162', '枫', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('765', '161', 'lijinjin', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('766', '154', '888888', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('767', '152', '666666', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('768', '151', 'xiaosi', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('769', '118', '盛夏光年', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('770', '117', '游龙2', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('771', '115', '游龙', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('772', '114', '无敌', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('773', '73', 'mao2', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('774', '48', 'mao', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('775', '46', 'wang3', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('776', '39', 'xin3', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('777', '37', 'xin1', '191', '18790260106', '0', '10', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('778', '32', 'tt2', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('779', '30', 'tt1', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('780', '1', 'admin', '191', '18790260106', '10', '0', '2011-10-10 15:54:20');
INSERT INTO `duipeng` VALUES ('781', '190', '18737552173', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('782', '162', '枫', '192', '13523752198', '10', '0', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('783', '161', 'lijinjin', '192', '13523752198', '10', '0', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('784', '154', '888888', '192', '13523752198', '10', '0', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('785', '152', '666666', '192', '13523752198', '10', '0', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('786', '151', 'xiaosi', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('787', '118', '盛夏光年', '192', '13523752198', '10', '0', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('788', '117', '游龙2', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('789', '115', '游龙', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('790', '114', '无敌', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('791', '73', 'mao2', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('792', '48', 'mao', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('793', '46', 'wang3', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('794', '39', 'xin3', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('795', '37', 'xin1', '192', '13523752198', '0', '10', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('796', '32', 'tt2', '192', '13523752198', '10', '0', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('797', '30', 'tt1', '192', '13523752198', '10', '0', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('798', '1', 'admin', '192', '13523752198', '10', '0', '2011-10-10 15:54:27');
INSERT INTO `duipeng` VALUES ('799', '118', '盛夏光年', '151', 'xiaosi', '20', '0', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('800', '117', '游龙2', '151', 'xiaosi', '0', '20', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('801', '115', '游龙', '151', 'xiaosi', '0', '20', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('802', '114', '无敌', '151', 'xiaosi', '0', '20', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('803', '73', 'mao2', '151', 'xiaosi', '0', '20', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('804', '48', 'mao', '151', 'xiaosi', '0', '20', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('805', '46', 'wang3', '151', 'xiaosi', '0', '20', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('806', '39', 'xin3', '151', 'xiaosi', '0', '20', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('807', '37', 'xin1', '151', 'xiaosi', '0', '20', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('808', '32', 'tt2', '151', 'xiaosi', '20', '0', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('809', '30', 'tt1', '151', 'xiaosi', '20', '0', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('810', '1', 'admin', '151', 'xiaosi', '20', '0', '2011-10-10 16:55:11');
INSERT INTO `duipeng` VALUES ('811', '189', '胡世明', '193', 'ZGH', '10', '0', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('812', '130', 'qq5', '193', 'ZGH', '10', '0', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('813', '108', '种瓜得豆', '193', 'ZGH', '10', '0', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('814', '106', 'YY11', '193', 'ZGH', '10', '0', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('815', '88', '刘林', '193', 'ZGH', '0', '10', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('816', '87', '抉择', '193', 'ZGH', '10', '0', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('817', '35', 'qq3', '193', 'ZGH', '0', '10', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('818', '31', 'qq1', '193', 'ZGH', '0', '10', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('819', '1', 'admin', '193', 'ZGH', '0', '10', '2011-10-10 21:15:01');
INSERT INTO `duipeng` VALUES ('820', '152', '666666', '154', '888888', '10', '0', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('821', '151', 'xiaosi', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('822', '118', '盛夏光年', '154', '888888', '10', '0', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('823', '117', '游龙2', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('824', '115', '游龙', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('825', '114', '无敌', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('826', '73', 'mao2', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('827', '48', 'mao', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('828', '46', 'wang3', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('829', '39', 'xin3', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('830', '37', 'xin1', '154', '888888', '0', '10', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('831', '32', 'tt2', '154', '888888', '10', '0', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('832', '30', 'tt1', '154', '888888', '10', '0', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('833', '1', 'admin', '154', '888888', '10', '0', '2011-10-14 12:12:18');
INSERT INTO `duipeng` VALUES ('834', '189', '胡世明', '198', '传奇M', '0', '10', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('835', '130', 'qq5', '198', '传奇M', '10', '0', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('836', '108', '种瓜得豆', '198', '传奇M', '10', '0', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('837', '106', 'YY11', '198', '传奇M', '10', '0', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('838', '88', '刘林', '198', '传奇M', '0', '10', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('839', '87', '抉择', '198', '传奇M', '10', '0', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('840', '35', 'qq3', '198', '传奇M', '0', '10', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('841', '31', 'qq1', '198', '传奇M', '0', '10', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('842', '1', 'admin', '198', '传奇M', '0', '10', '2011-10-16 12:26:59');
INSERT INTO `duipeng` VALUES ('843', '198', '传奇M', '200', '轩168', '1', '0', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('844', '189', '胡世明', '200', '轩168', '0', '1', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('845', '130', 'qq5', '200', '轩168', '1', '0', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('846', '108', '种瓜得豆', '200', '轩168', '1', '0', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('847', '106', 'YY11', '200', '轩168', '1', '0', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('848', '88', '刘林', '200', '轩168', '0', '1', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('849', '87', '抉择', '200', '轩168', '1', '0', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('850', '35', 'qq3', '200', '轩168', '0', '1', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('851', '31', 'qq1', '200', '轩168', '0', '1', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('852', '1', 'admin', '200', '轩168', '0', '1', '2011-10-16 18:45:50');
INSERT INTO `duipeng` VALUES ('853', '198', '传奇M', '201', '一一123', '0', '10', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('854', '189', '胡世明', '201', '一一123', '0', '10', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('855', '130', 'qq5', '201', '一一123', '10', '0', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('856', '108', '种瓜得豆', '201', '一一123', '10', '0', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('857', '106', 'YY11', '201', '一一123', '10', '0', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('858', '88', '刘林', '201', '一一123', '0', '10', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('859', '87', '抉择', '201', '一一123', '10', '0', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('860', '35', 'qq3', '201', '一一123', '0', '10', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('861', '31', 'qq1', '201', '一一123', '0', '10', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('862', '1', 'admin', '201', '一一123', '0', '10', '2011-10-16 20:43:24');
INSERT INTO `duipeng` VALUES ('863', '141', '马薪1', '202', '胡俊', '0', '20', '2011-10-16 20:48:27');
INSERT INTO `duipeng` VALUES ('864', '140', '马薪', '202', '胡俊', '20', '0', '2011-10-16 20:48:27');
INSERT INTO `duipeng` VALUES ('865', '129', 'qq4', '202', '胡俊', '20', '0', '2011-10-16 20:48:27');
INSERT INTO `duipeng` VALUES ('866', '35', 'qq3', '202', '胡俊', '20', '0', '2011-10-16 20:48:27');
INSERT INTO `duipeng` VALUES ('867', '31', 'qq1', '202', '胡俊', '0', '20', '2011-10-16 20:48:27');
INSERT INTO `duipeng` VALUES ('868', '1', 'admin', '202', '胡俊', '0', '20', '2011-10-16 20:48:27');
INSERT INTO `duipeng` VALUES ('869', '202', '胡俊', '203', '胡俊1', '10', '0', '2011-10-16 20:48:32');
INSERT INTO `duipeng` VALUES ('870', '141', '马薪1', '203', '胡俊1', '0', '10', '2011-10-16 20:48:32');
INSERT INTO `duipeng` VALUES ('871', '140', '马薪', '203', '胡俊1', '10', '0', '2011-10-16 20:48:32');
INSERT INTO `duipeng` VALUES ('872', '129', 'qq4', '203', '胡俊1', '10', '0', '2011-10-16 20:48:32');
INSERT INTO `duipeng` VALUES ('873', '35', 'qq3', '203', '胡俊1', '10', '0', '2011-10-16 20:48:32');
INSERT INTO `duipeng` VALUES ('874', '31', 'qq1', '203', '胡俊1', '0', '10', '2011-10-16 20:48:32');
INSERT INTO `duipeng` VALUES ('875', '1', 'admin', '203', '胡俊1', '0', '10', '2011-10-16 20:48:32');
INSERT INTO `duipeng` VALUES ('876', '202', '胡俊', '204', '胡俊2', '0', '10', '2011-10-16 20:53:29');
INSERT INTO `duipeng` VALUES ('877', '141', '马薪1', '204', '胡俊2', '0', '10', '2011-10-16 20:53:29');
INSERT INTO `duipeng` VALUES ('878', '140', '马薪', '204', '胡俊2', '10', '0', '2011-10-16 20:53:29');
INSERT INTO `duipeng` VALUES ('879', '129', 'qq4', '204', '胡俊2', '10', '0', '2011-10-16 20:53:29');
INSERT INTO `duipeng` VALUES ('880', '35', 'qq3', '204', '胡俊2', '10', '0', '2011-10-16 20:53:29');
INSERT INTO `duipeng` VALUES ('881', '31', 'qq1', '204', '胡俊2', '0', '10', '2011-10-16 20:53:29');
INSERT INTO `duipeng` VALUES ('882', '1', 'admin', '204', '胡俊2', '0', '10', '2011-10-16 20:53:29');
INSERT INTO `duipeng` VALUES ('883', '203', '胡俊1', '205', '王亚龙', '20', '0', '2011-10-16 20:53:34');
INSERT INTO `duipeng` VALUES ('884', '202', '胡俊', '205', '王亚龙', '20', '0', '2011-10-16 20:53:34');
INSERT INTO `duipeng` VALUES ('885', '141', '马薪1', '205', '王亚龙', '0', '20', '2011-10-16 20:53:34');
INSERT INTO `duipeng` VALUES ('886', '140', '马薪', '205', '王亚龙', '20', '0', '2011-10-16 20:53:34');
INSERT INTO `duipeng` VALUES ('887', '129', 'qq4', '205', '王亚龙', '20', '0', '2011-10-16 20:53:34');
INSERT INTO `duipeng` VALUES ('888', '35', 'qq3', '205', '王亚龙', '20', '0', '2011-10-16 20:53:34');
INSERT INTO `duipeng` VALUES ('889', '31', 'qq1', '205', '王亚龙', '0', '20', '2011-10-16 20:53:34');
INSERT INTO `duipeng` VALUES ('890', '1', 'admin', '205', '王亚龙', '0', '20', '2011-10-16 20:53:34');
INSERT INTO `duipeng` VALUES ('891', '205', '王亚龙', '206', '王亚龙1', '10', '0', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('892', '203', '胡俊1', '206', '王亚龙1', '10', '0', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('893', '202', '胡俊', '206', '王亚龙1', '10', '0', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('894', '141', '马薪1', '206', '王亚龙1', '0', '10', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('895', '140', '马薪', '206', '王亚龙1', '10', '0', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('896', '129', 'qq4', '206', '王亚龙1', '10', '0', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('897', '35', 'qq3', '206', '王亚龙1', '10', '0', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('898', '31', 'qq1', '206', '王亚龙1', '0', '10', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('899', '1', 'admin', '206', '王亚龙1', '0', '10', '2011-10-16 21:00:02');
INSERT INTO `duipeng` VALUES ('900', '205', '王亚龙', '207', '王亚龙2', '0', '10', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('901', '203', '胡俊1', '207', '王亚龙2', '10', '0', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('902', '202', '胡俊', '207', '王亚龙2', '10', '0', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('903', '141', '马薪1', '207', '王亚龙2', '0', '10', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('904', '140', '马薪', '207', '王亚龙2', '10', '0', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('905', '129', 'qq4', '207', '王亚龙2', '10', '0', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('906', '35', 'qq3', '207', '王亚龙2', '10', '0', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('907', '31', 'qq1', '207', '王亚龙2', '0', '10', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('908', '1', 'admin', '207', '王亚龙2', '0', '10', '2011-10-16 21:00:07');
INSERT INTO `duipeng` VALUES ('909', '193', 'ZGH', '208', '挑战者2', '0', '10', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('910', '189', '胡世明', '208', '挑战者2', '10', '0', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('911', '130', 'qq5', '208', '挑战者2', '10', '0', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('912', '108', '种瓜得豆', '208', '挑战者2', '10', '0', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('913', '106', 'YY11', '208', '挑战者2', '10', '0', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('914', '88', '刘林', '208', '挑战者2', '0', '10', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('915', '87', '抉择', '208', '挑战者2', '10', '0', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('916', '35', 'qq3', '208', '挑战者2', '0', '10', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('917', '31', 'qq1', '208', '挑战者2', '0', '10', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('918', '1', 'admin', '208', '挑战者2', '0', '10', '2011-10-17 19:33:35');
INSERT INTO `duipeng` VALUES ('919', '201', '一一123', '209', '二二123', '10', '0', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('920', '198', '传奇M', '209', '二二123', '0', '10', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('921', '189', '胡世明', '209', '二二123', '0', '10', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('922', '130', 'qq5', '209', '二二123', '10', '0', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('923', '108', '种瓜得豆', '209', '二二123', '10', '0', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('924', '106', 'YY11', '209', '二二123', '10', '0', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('925', '88', '刘林', '209', '二二123', '0', '10', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('926', '87', '抉择', '209', '二二123', '10', '0', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('927', '35', 'qq3', '209', '二二123', '0', '10', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('928', '31', 'qq1', '209', '二二123', '0', '10', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('929', '1', 'admin', '209', '二二123', '0', '10', '2011-10-17 20:04:59');
INSERT INTO `duipeng` VALUES ('930', '193', 'ZGH', '210', 'LX', '20', '0', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('931', '189', '胡世明', '210', 'LX', '20', '0', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('932', '130', 'qq5', '210', 'LX', '20', '0', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('933', '108', '种瓜得豆', '210', 'LX', '20', '0', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('934', '106', 'YY11', '210', 'LX', '20', '0', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('935', '88', '刘林', '210', 'LX', '0', '20', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('936', '87', '抉择', '210', 'LX', '20', '0', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('937', '35', 'qq3', '210', 'LX', '0', '20', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('938', '31', 'qq1', '210', 'LX', '0', '20', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('939', '1', 'admin', '210', 'LX', '0', '20', '2011-10-17 21:14:41');
INSERT INTO `duipeng` VALUES ('940', '210', 'LX', '211', 'LX1', '10', '0', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('941', '193', 'ZGH', '211', 'LX1', '10', '0', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('942', '189', '胡世明', '211', 'LX1', '10', '0', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('943', '130', 'qq5', '211', 'LX1', '10', '0', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('944', '108', '种瓜得豆', '211', 'LX1', '10', '0', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('945', '106', 'YY11', '211', 'LX1', '10', '0', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('946', '88', '刘林', '211', 'LX1', '0', '10', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('947', '87', '抉择', '211', 'LX1', '10', '0', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('948', '35', 'qq3', '211', 'LX1', '0', '10', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('949', '31', 'qq1', '211', 'LX1', '0', '10', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('950', '1', 'admin', '211', 'LX1', '0', '10', '2011-10-17 21:14:47');
INSERT INTO `duipeng` VALUES ('951', '210', 'LX', '212', 'LX2', '0', '10', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('952', '193', 'ZGH', '212', 'LX2', '10', '0', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('953', '189', '胡世明', '212', 'LX2', '10', '0', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('954', '130', 'qq5', '212', 'LX2', '10', '0', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('955', '108', '种瓜得豆', '212', 'LX2', '10', '0', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('956', '106', 'YY11', '212', 'LX2', '10', '0', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('957', '88', '刘林', '212', 'LX2', '0', '10', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('958', '87', '抉择', '212', 'LX2', '10', '0', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('959', '35', 'qq3', '212', 'LX2', '0', '10', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('960', '31', 'qq1', '212', 'LX2', '0', '10', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('961', '1', 'admin', '212', 'LX2', '0', '10', '2011-10-17 21:15:50');
INSERT INTO `duipeng` VALUES ('962', '33', 'tt3', '215', 'java', '0', '4', '2011-10-20 22:49:57');
INSERT INTO `duipeng` VALUES ('963', '30', 'tt1', '215', 'java', '0', '4', '2011-10-20 22:49:57');
INSERT INTO `duipeng` VALUES ('964', '1', 'admin', '215', 'java', '4', '0', '2011-10-20 22:49:57');
INSERT INTO `duipeng` VALUES ('965', '211', 'LX1', '222', 'ZZJ', '4', '0', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('966', '210', 'LX', '222', 'ZZJ', '4', '0', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('967', '193', 'ZGH', '222', 'ZZJ', '4', '0', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('968', '189', '胡世明', '222', 'ZZJ', '4', '0', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('969', '130', 'qq5', '222', 'ZZJ', '4', '0', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('970', '108', '种瓜得豆', '222', 'ZZJ', '4', '0', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('971', '106', 'YY11', '222', 'ZZJ', '4', '0', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('972', '88', '刘林', '222', 'ZZJ', '0', '4', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('973', '87', '抉择', '222', 'ZZJ', '4', '0', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('974', '35', 'qq3', '222', 'ZZJ', '0', '4', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('975', '31', 'qq1', '222', 'ZZJ', '0', '4', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('976', '1', 'admin', '222', 'ZZJ', '0', '4', '2011-10-24 18:11:21');
INSERT INTO `duipeng` VALUES ('977', '223', 'ming', '224', 'hui', '4', '0', '2011-10-25 21:30:36');
INSERT INTO `duipeng` VALUES ('978', '215', 'java', '224', 'hui', '4', '0', '2011-10-25 21:30:36');
INSERT INTO `duipeng` VALUES ('979', '33', 'tt3', '224', 'hui', '0', '4', '2011-10-25 21:30:36');
INSERT INTO `duipeng` VALUES ('980', '30', 'tt1', '224', 'hui', '0', '4', '2011-10-25 21:30:36');
INSERT INTO `duipeng` VALUES ('981', '1', 'admin', '224', 'hui', '4', '0', '2011-10-25 21:30:36');
INSERT INTO `duipeng` VALUES ('982', '212', 'LX2', '225', 'GYL', '0', '4', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('983', '210', 'LX', '225', 'GYL', '0', '4', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('984', '193', 'ZGH', '225', 'GYL', '4', '0', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('985', '189', '胡世明', '225', 'GYL', '4', '0', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('986', '130', 'qq5', '225', 'GYL', '4', '0', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('987', '108', '种瓜得豆', '225', 'GYL', '4', '0', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('988', '106', 'YY11', '225', 'GYL', '4', '0', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('989', '88', '刘林', '225', 'GYL', '0', '4', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('990', '87', '抉择', '225', 'GYL', '4', '0', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('991', '35', 'qq3', '225', 'GYL', '0', '4', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('992', '31', 'qq1', '225', 'GYL', '0', '4', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('993', '1', 'admin', '225', 'GYL', '0', '4', '2011-10-26 12:47:23');
INSERT INTO `duipeng` VALUES ('994', '200', '轩168', '226', '传奇N', '4', '0', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('995', '198', '传奇M', '226', '传奇N', '4', '0', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('996', '189', '胡世明', '226', '传奇N', '0', '4', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('997', '130', 'qq5', '226', '传奇N', '4', '0', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('998', '108', '种瓜得豆', '226', '传奇N', '4', '0', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('999', '106', 'YY11', '226', '传奇N', '4', '0', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('1000', '88', '刘林', '226', '传奇N', '0', '4', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('1001', '87', '抉择', '226', '传奇N', '4', '0', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('1002', '35', 'qq3', '226', '传奇N', '0', '4', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('1003', '31', 'qq1', '226', '传奇N', '0', '4', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('1004', '1', 'admin', '226', '传奇N', '0', '4', '2011-10-26 13:42:45');
INSERT INTO `duipeng` VALUES ('1005', '224', 'hui', '229', '吻着泪说爱你', '4', '0', '2011-10-27 22:02:18');
INSERT INTO `duipeng` VALUES ('1006', '223', 'ming', '229', '吻着泪说爱你', '4', '0', '2011-10-27 22:02:18');
INSERT INTO `duipeng` VALUES ('1007', '215', 'java', '229', '吻着泪说爱你', '4', '0', '2011-10-27 22:02:18');
INSERT INTO `duipeng` VALUES ('1008', '33', 'tt3', '229', '吻着泪说爱你', '0', '4', '2011-10-27 22:02:18');
INSERT INTO `duipeng` VALUES ('1009', '30', 'tt1', '229', '吻着泪说爱你', '0', '4', '2011-10-27 22:02:18');
INSERT INTO `duipeng` VALUES ('1010', '1', 'admin', '229', '吻着泪说爱你', '4', '0', '2011-10-27 22:02:18');
INSERT INTO `duipeng` VALUES ('1011', '200', '轩168', '230', '挑战者3', '0', '4', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1012', '198', '传奇M', '230', '挑战者3', '4', '0', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1013', '189', '胡世明', '230', '挑战者3', '0', '4', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1014', '130', 'qq5', '230', '挑战者3', '4', '0', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1015', '108', '种瓜得豆', '230', '挑战者3', '4', '0', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1016', '106', 'YY11', '230', '挑战者3', '4', '0', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1017', '88', '刘林', '230', '挑战者3', '0', '4', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1018', '87', '抉择', '230', '挑战者3', '4', '0', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1019', '35', 'qq3', '230', '挑战者3', '0', '4', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1020', '31', 'qq1', '230', '挑战者3', '0', '4', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1021', '1', 'admin', '230', '挑战者3', '0', '4', '2011-10-28 13:58:52');
INSERT INTO `duipeng` VALUES ('1022', '153', '999999', '231', '001', '1', '0', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1023', '152', '666666', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1024', '151', 'xiaosi', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1025', '118', '盛夏光年', '231', '001', '1', '0', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1026', '117', '游龙2', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1027', '115', '游龙', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1028', '114', '无敌', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1029', '73', 'mao2', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1030', '48', 'mao', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1031', '46', 'wang3', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1032', '39', 'xin3', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1033', '37', 'xin1', '231', '001', '0', '1', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1034', '32', 'tt2', '231', '001', '1', '0', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1035', '30', 'tt1', '231', '001', '1', '0', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1036', '1', 'admin', '231', '001', '1', '0', '2011-10-28 18:11:19');
INSERT INTO `duipeng` VALUES ('1037', '229', '吻着泪说爱你', '234', '002', '1', '0', '2011-11-03 12:39:55');
INSERT INTO `duipeng` VALUES ('1038', '224', 'hui', '234', '002', '1', '0', '2011-11-03 12:39:55');
INSERT INTO `duipeng` VALUES ('1039', '223', 'ming', '234', '002', '1', '0', '2011-11-03 12:39:55');
INSERT INTO `duipeng` VALUES ('1040', '215', 'java', '234', '002', '1', '0', '2011-11-03 12:39:55');
INSERT INTO `duipeng` VALUES ('1041', '33', 'tt3', '234', '002', '0', '1', '2011-11-03 12:39:55');
INSERT INTO `duipeng` VALUES ('1042', '30', 'tt1', '234', '002', '0', '1', '2011-11-03 12:39:55');
INSERT INTO `duipeng` VALUES ('1043', '1', 'admin', '234', '002', '1', '0', '2011-11-03 12:39:55');
INSERT INTO `duipeng` VALUES ('1044', '95', '六月流觞', '237', '抉择2', '1', '0', '2011-11-04 22:27:39');
INSERT INTO `duipeng` VALUES ('1045', '89', '王超', '237', '抉择2', '0', '1', '2011-11-04 22:27:39');
INSERT INTO `duipeng` VALUES ('1046', '87', '抉择', '237', '抉择2', '0', '1', '2011-11-04 22:27:39');
INSERT INTO `duipeng` VALUES ('1047', '35', 'qq3', '237', '抉择2', '0', '1', '2011-11-04 22:27:39');
INSERT INTO `duipeng` VALUES ('1048', '31', 'qq1', '237', '抉择2', '0', '1', '2011-11-04 22:27:39');
INSERT INTO `duipeng` VALUES ('1049', '1', 'admin', '237', '抉择2', '0', '1', '2011-11-04 22:27:39');
INSERT INTO `duipeng` VALUES ('1050', '244', 'L', '245', 'H', '4', '0', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1051', '212', 'LX2', '245', 'H', '4', '0', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1052', '210', 'LX', '245', 'H', '0', '4', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1053', '193', 'ZGH', '245', 'H', '4', '0', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1054', '189', '胡世明', '245', 'H', '4', '0', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1055', '130', 'qq5', '245', 'H', '4', '0', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1056', '108', '种瓜得豆', '245', 'H', '4', '0', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1057', '106', 'YY11', '245', 'H', '4', '0', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1058', '88', '刘林', '245', 'H', '0', '4', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1059', '87', '抉择', '245', 'H', '4', '0', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1060', '35', 'qq3', '245', 'H', '0', '4', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1061', '31', 'qq1', '245', 'H', '0', '4', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1062', '1', 'admin', '245', 'H', '0', '4', '2011-11-05 17:08:10');
INSERT INTO `duipeng` VALUES ('1063', '212', 'LX2', '244', 'L', '10', '0', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1064', '210', 'LX', '244', 'L', '0', '10', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1065', '193', 'ZGH', '244', 'L', '10', '0', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1066', '189', '胡世明', '244', 'L', '10', '0', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1067', '130', 'qq5', '244', 'L', '10', '0', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1068', '108', '种瓜得豆', '244', 'L', '10', '0', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1069', '106', 'YY11', '244', 'L', '10', '0', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1070', '88', '刘林', '244', 'L', '0', '10', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1071', '87', '抉择', '244', 'L', '10', '0', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1072', '35', 'qq3', '244', 'L', '0', '10', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1073', '31', 'qq1', '244', 'L', '0', '10', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1074', '1', 'admin', '244', 'L', '0', '10', '2011-11-05 17:10:21');
INSERT INTO `duipeng` VALUES ('1075', '244', 'L', '246', 'D', '0', '4', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1076', '212', 'LX2', '246', 'D', '4', '0', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1077', '210', 'LX', '246', 'D', '0', '4', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1078', '193', 'ZGH', '246', 'D', '4', '0', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1079', '189', '胡世明', '246', 'D', '4', '0', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1080', '130', 'qq5', '246', 'D', '4', '0', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1081', '108', '种瓜得豆', '246', 'D', '4', '0', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1082', '106', 'YY11', '246', 'D', '4', '0', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1083', '88', '刘林', '246', 'D', '0', '4', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1084', '87', '抉择', '246', 'D', '4', '0', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1085', '35', 'qq3', '246', 'D', '0', '4', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1086', '31', 'qq1', '246', 'D', '0', '4', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1087', '1', 'admin', '246', 'D', '0', '4', '2011-11-05 17:11:23');
INSERT INTO `duipeng` VALUES ('1088', '235', '003', '236', '01', '4', '0', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1089', '234', '002', '236', '01', '4', '0', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1090', '229', '吻着泪说爱你', '236', '01', '4', '0', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1091', '224', 'hui', '236', '01', '4', '0', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1092', '223', 'ming', '236', '01', '4', '0', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1093', '215', 'java', '236', '01', '4', '0', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1094', '33', 'tt3', '236', '01', '0', '4', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1095', '30', 'tt1', '236', '01', '0', '4', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1096', '1', 'admin', '236', '01', '4', '0', '2011-11-06 15:57:03');
INSERT INTO `duipeng` VALUES ('1097', '247', '李在朝', '249', '004', '1', '0', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1098', '151', 'xiaosi', '249', '004', '1', '0', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1099', '118', '盛夏光年', '249', '004', '1', '0', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1100', '117', '游龙2', '249', '004', '0', '1', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1101', '115', '游龙', '249', '004', '0', '1', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1102', '114', '无敌', '249', '004', '0', '1', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1103', '73', 'mao2', '249', '004', '0', '1', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1104', '48', 'mao', '249', '004', '0', '1', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1105', '46', 'wang3', '249', '004', '0', '1', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1106', '39', 'xin3', '249', '004', '0', '1', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1107', '37', 'xin1', '249', '004', '0', '1', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1108', '32', 'tt2', '249', '004', '1', '0', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1109', '30', 'tt1', '249', '004', '1', '0', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1110', '1', 'admin', '249', '004', '1', '0', '2011-11-08 19:35:54');
INSERT INTO `duipeng` VALUES ('1111', '236', '01', '250', '005', '1', '0', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1112', '235', '003', '250', '005', '1', '0', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1113', '234', '002', '250', '005', '1', '0', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1114', '229', '吻着泪说爱你', '250', '005', '1', '0', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1115', '224', 'hui', '250', '005', '1', '0', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1116', '223', 'ming', '250', '005', '1', '0', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1117', '215', 'java', '250', '005', '1', '0', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1118', '33', 'tt3', '250', '005', '0', '1', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1119', '30', 'tt1', '250', '005', '0', '1', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1120', '1', 'admin', '250', '005', '1', '0', '2011-11-09 21:34:00');
INSERT INTO `duipeng` VALUES ('1121', '234', '002', '235', '003', '1', '0', '2011-11-09 21:36:07');
INSERT INTO `duipeng` VALUES ('1122', '229', '吻着泪说爱你', '235', '003', '1', '0', '2011-11-09 21:36:07');
INSERT INTO `duipeng` VALUES ('1123', '224', 'hui', '235', '003', '1', '0', '2011-11-09 21:36:07');
INSERT INTO `duipeng` VALUES ('1124', '223', 'ming', '235', '003', '1', '0', '2011-11-09 21:36:07');
INSERT INTO `duipeng` VALUES ('1125', '215', 'java', '235', '003', '1', '0', '2011-11-09 21:36:07');
INSERT INTO `duipeng` VALUES ('1126', '33', 'tt3', '235', '003', '0', '1', '2011-11-09 21:36:07');
INSERT INTO `duipeng` VALUES ('1127', '30', 'tt1', '235', '003', '0', '1', '2011-11-09 21:36:07');
INSERT INTO `duipeng` VALUES ('1128', '1', 'admin', '235', '003', '1', '0', '2011-11-09 21:36:07');
INSERT INTO `duipeng` VALUES ('1129', '250', '005', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1130', '236', '01', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1131', '235', '003', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1132', '234', '002', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1133', '229', '吻着泪说爱你', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1134', '224', 'hui', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1135', '223', 'ming', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1136', '215', 'java', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1137', '33', 'tt3', '251', '02', '0', '4', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1138', '30', 'tt1', '251', '02', '0', '4', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1139', '1', 'admin', '251', '02', '4', '0', '2011-11-10 12:33:28');
INSERT INTO `duipeng` VALUES ('1140', '251', '02', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1141', '250', '005', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1142', '236', '01', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1143', '235', '003', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1144', '234', '002', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1145', '229', '吻着泪说爱你', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1146', '224', 'hui', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1147', '223', 'ming', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1148', '215', 'java', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1149', '33', 'tt3', '252', '03', '0', '4', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1150', '30', 'tt1', '252', '03', '0', '4', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1151', '1', 'admin', '252', '03', '4', '0', '2011-11-10 12:34:12');
INSERT INTO `duipeng` VALUES ('1152', '251', '02', '253', '04', '0', '4', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1153', '250', '005', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1154', '236', '01', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1155', '235', '003', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1156', '234', '002', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1157', '229', '吻着泪说爱你', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1158', '224', 'hui', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1159', '223', 'ming', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1160', '215', 'java', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1161', '33', 'tt3', '253', '04', '0', '4', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1162', '30', 'tt1', '253', '04', '0', '4', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1163', '1', 'admin', '253', '04', '4', '0', '2011-11-10 12:34:18');
INSERT INTO `duipeng` VALUES ('1164', '252', '03', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1165', '251', '02', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1166', '250', '005', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1167', '236', '01', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1168', '235', '003', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1169', '234', '002', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1170', '229', '吻着泪说爱你', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1171', '224', 'hui', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1172', '223', 'ming', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1173', '215', 'java', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1174', '33', 'tt3', '255', 'c1', '0', '10', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1175', '30', 'tt1', '255', 'c1', '0', '10', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1176', '1', 'admin', '255', 'c1', '10', '0', '2011-11-10 12:52:04');
INSERT INTO `duipeng` VALUES ('1177', '231', '001', '256', '000000', '4', '0', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1178', '153', '999999', '256', '000000', '4', '0', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1179', '152', '666666', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1180', '151', 'xiaosi', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1181', '118', '盛夏光年', '256', '000000', '4', '0', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1182', '117', '游龙2', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1183', '115', '游龙', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1184', '114', '无敌', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1185', '73', 'mao2', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1186', '48', 'mao', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1187', '46', 'wang3', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1188', '39', 'xin3', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1189', '37', 'xin1', '256', '000000', '0', '4', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1190', '32', 'tt2', '256', '000000', '4', '0', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1191', '30', 'tt1', '256', '000000', '4', '0', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1192', '1', 'admin', '256', '000000', '4', '0', '2011-11-10 13:06:20');
INSERT INTO `duipeng` VALUES ('1193', '256', '000000', '257', '111111', '4', '0', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1194', '231', '001', '257', '111111', '4', '0', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1195', '153', '999999', '257', '111111', '4', '0', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1196', '152', '666666', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1197', '151', 'xiaosi', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1198', '118', '盛夏光年', '257', '111111', '4', '0', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1199', '117', '游龙2', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1200', '115', '游龙', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1201', '114', '无敌', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1202', '73', 'mao2', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1203', '48', 'mao', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1204', '46', 'wang3', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1205', '39', 'xin3', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1206', '37', 'xin1', '257', '111111', '0', '4', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1207', '32', 'tt2', '257', '111111', '4', '0', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1208', '30', 'tt1', '257', '111111', '4', '0', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1209', '1', 'admin', '257', '111111', '4', '0', '2011-11-10 13:06:26');
INSERT INTO `duipeng` VALUES ('1210', '245', 'H', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1211', '244', 'L', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1212', '212', 'LX2', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1213', '210', 'LX', '258', 'LC', '0', '20', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1214', '193', 'ZGH', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1215', '189', '胡世明', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1216', '130', 'qq5', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1217', '108', '种瓜得豆', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1218', '106', 'YY11', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1219', '88', '刘林', '258', 'LC', '0', '20', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1220', '87', '抉择', '258', 'LC', '20', '0', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1221', '35', 'qq3', '258', 'LC', '0', '20', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1222', '31', 'qq1', '258', 'LC', '0', '20', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1223', '1', 'admin', '258', 'LC', '0', '20', '2011-11-10 18:22:50');
INSERT INTO `duipeng` VALUES ('1224', '258', 'LC', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1225', '245', 'H', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1226', '244', 'L', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1227', '212', 'LX2', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1228', '210', 'LX', '259', 'LC1', '0', '4', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1229', '193', 'ZGH', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1230', '189', '胡世明', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1231', '130', 'qq5', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1232', '108', '种瓜得豆', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1233', '106', 'YY11', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1234', '88', '刘林', '259', 'LC1', '0', '4', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1235', '87', '抉择', '259', 'LC1', '4', '0', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1236', '35', 'qq3', '259', 'LC1', '0', '4', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1237', '31', 'qq1', '259', 'LC1', '0', '4', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1238', '1', 'admin', '259', 'LC1', '0', '4', '2011-11-10 18:22:57');
INSERT INTO `duipeng` VALUES ('1239', '258', 'LC', '264', 'LC2', '0', '4', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1240', '245', 'H', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1241', '244', 'L', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1242', '212', 'LX2', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1243', '210', 'LX', '264', 'LC2', '0', '4', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1244', '193', 'ZGH', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1245', '189', '胡世明', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1246', '130', 'qq5', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1247', '108', '种瓜得豆', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1248', '106', 'YY11', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1249', '88', '刘林', '264', 'LC2', '0', '4', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1250', '87', '抉择', '264', 'LC2', '4', '0', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1251', '35', 'qq3', '264', 'LC2', '0', '4', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1252', '31', 'qq1', '264', 'LC2', '0', '4', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1253', '1', 'admin', '264', 'LC2', '0', '4', '2011-11-10 18:25:15');
INSERT INTO `duipeng` VALUES ('1254', '208', '挑战者2', '262', 'ZJH', '0', '40', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1255', '193', 'ZGH', '262', 'ZJH', '0', '40', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1256', '189', '胡世明', '262', 'ZJH', '40', '0', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1257', '130', 'qq5', '262', 'ZJH', '40', '0', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1258', '108', '种瓜得豆', '262', 'ZJH', '40', '0', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1259', '106', 'YY11', '262', 'ZJH', '40', '0', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1260', '88', '刘林', '262', 'ZJH', '0', '40', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1261', '87', '抉择', '262', 'ZJH', '40', '0', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1262', '35', 'qq3', '262', 'ZJH', '0', '40', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1263', '31', 'qq1', '262', 'ZJH', '0', '40', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1264', '1', 'admin', '262', 'ZJH', '0', '40', '2011-11-10 21:18:18');
INSERT INTO `duipeng` VALUES ('1265', '262', 'ZJH', '263', 'YMC', '40', '0', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1266', '208', '挑战者2', '263', 'YMC', '0', '40', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1267', '193', 'ZGH', '263', 'YMC', '0', '40', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1268', '189', '胡世明', '263', 'YMC', '40', '0', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1269', '130', 'qq5', '263', 'YMC', '40', '0', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1270', '108', '种瓜得豆', '263', 'YMC', '40', '0', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1271', '106', 'YY11', '263', 'YMC', '40', '0', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1272', '88', '刘林', '263', 'YMC', '0', '40', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1273', '87', '抉择', '263', 'YMC', '40', '0', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1274', '35', 'qq3', '263', 'YMC', '0', '40', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1275', '31', 'qq1', '263', 'YMC', '0', '40', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1276', '1', 'admin', '263', 'YMC', '0', '40', '2011-11-10 21:18:25');
INSERT INTO `duipeng` VALUES ('1277', '255', 'c1', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1278', '252', '03', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1279', '251', '02', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1280', '250', '005', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1281', '236', '01', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1282', '235', '003', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1283', '234', '002', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1284', '229', '吻着泪说爱你', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1285', '224', 'hui', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1286', '223', 'ming', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1287', '215', 'java', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1288', '33', 'tt3', '265', '006', '0', '1', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1289', '30', 'tt1', '265', '006', '0', '1', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1290', '1', 'admin', '265', '006', '1', '0', '2011-11-10 21:26:19');
INSERT INTO `duipeng` VALUES ('1291', '224', 'hui', '266', 'cui', '0', '4', '2011-11-10 21:28:17');
INSERT INTO `duipeng` VALUES ('1292', '223', 'ming', '266', 'cui', '4', '0', '2011-11-10 21:28:17');
INSERT INTO `duipeng` VALUES ('1293', '215', 'java', '266', 'cui', '4', '0', '2011-11-10 21:28:17');
INSERT INTO `duipeng` VALUES ('1294', '33', 'tt3', '266', 'cui', '0', '4', '2011-11-10 21:28:17');
INSERT INTO `duipeng` VALUES ('1295', '30', 'tt1', '266', 'cui', '0', '4', '2011-11-10 21:28:17');
INSERT INTO `duipeng` VALUES ('1296', '1', 'admin', '266', 'cui', '4', '0', '2011-11-10 21:28:17');
INSERT INTO `duipeng` VALUES ('1297', '246', 'D', '269', 'LJH', '20', '0', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1298', '244', 'L', '269', 'LJH', '0', '20', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1299', '212', 'LX2', '269', 'LJH', '20', '0', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1300', '210', 'LX', '269', 'LJH', '0', '20', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1301', '193', 'ZGH', '269', 'LJH', '20', '0', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1302', '189', '胡世明', '269', 'LJH', '20', '0', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1303', '130', 'qq5', '269', 'LJH', '20', '0', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1304', '108', '种瓜得豆', '269', 'LJH', '20', '0', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1305', '106', 'YY11', '269', 'LJH', '20', '0', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1306', '88', '刘林', '269', 'LJH', '0', '20', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1307', '87', '抉择', '269', 'LJH', '20', '0', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1308', '35', 'qq3', '269', 'LJH', '0', '20', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1309', '31', 'qq1', '269', 'LJH', '0', '20', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1310', '1', 'admin', '269', 'LJH', '0', '20', '2011-11-11 19:41:13');
INSERT INTO `duipeng` VALUES ('1311', '269', 'LJH', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1312', '246', 'D', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1313', '244', 'L', '277', 'asd', '0', '4', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1314', '212', 'LX2', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1315', '210', 'LX', '277', 'asd', '0', '4', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1316', '193', 'ZGH', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1317', '189', '胡世明', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1318', '130', 'qq5', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1319', '108', '种瓜得豆', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1320', '106', 'YY11', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1321', '88', '刘林', '277', 'asd', '0', '4', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1322', '87', '抉择', '277', 'asd', '4', '0', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1323', '35', 'qq3', '277', 'asd', '0', '4', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1324', '31', 'qq1', '277', 'asd', '0', '4', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1325', '1', 'admin', '277', 'asd', '0', '4', '2011-11-11 20:13:38');
INSERT INTO `duipeng` VALUES ('1326', '259', 'LC1', '280', 'LC4', '0', '4', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1327', '258', 'LC', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1328', '245', 'H', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1329', '244', 'L', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1330', '212', 'LX2', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1331', '210', 'LX', '280', 'LC4', '0', '4', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1332', '193', 'ZGH', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1333', '189', '胡世明', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1334', '130', 'qq5', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1335', '108', '种瓜得豆', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1336', '106', 'YY11', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1337', '88', '刘林', '280', 'LC4', '0', '4', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1338', '87', '抉择', '280', 'LC4', '4', '0', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1339', '35', 'qq3', '280', 'LC4', '0', '4', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1340', '31', 'qq1', '280', 'LC4', '0', '4', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1341', '1', 'admin', '280', 'LC4', '0', '4', '2011-11-11 20:40:35');
INSERT INTO `duipeng` VALUES ('1342', '263', 'YMC', '281', 'YMC1', '1', '0', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1343', '262', 'ZJH', '281', 'YMC1', '1', '0', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1344', '208', '挑战者2', '281', 'YMC1', '0', '1', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1345', '193', 'ZGH', '281', 'YMC1', '0', '1', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1346', '189', '胡世明', '281', 'YMC1', '1', '0', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1347', '130', 'qq5', '281', 'YMC1', '1', '0', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1348', '108', '种瓜得豆', '281', 'YMC1', '1', '0', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1349', '106', 'YY11', '281', 'YMC1', '1', '0', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1350', '88', '刘林', '281', 'YMC1', '0', '1', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1351', '87', '抉择', '281', 'YMC1', '1', '0', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1352', '35', 'qq3', '281', 'YMC1', '0', '1', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1353', '31', 'qq1', '281', 'YMC1', '0', '1', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1354', '1', 'admin', '281', 'YMC1', '0', '1', '2011-11-11 21:24:36');
INSERT INTO `duipeng` VALUES ('1355', '263', 'YMC', '282', 'MC', '0', '20', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1356', '262', 'ZJH', '282', 'MC', '20', '0', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1357', '208', '挑战者2', '282', 'MC', '0', '20', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1358', '193', 'ZGH', '282', 'MC', '0', '20', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1359', '189', '胡世明', '282', 'MC', '20', '0', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1360', '130', 'qq5', '282', 'MC', '20', '0', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1361', '108', '种瓜得豆', '282', 'MC', '20', '0', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1362', '106', 'YY11', '282', 'MC', '20', '0', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1363', '88', '刘林', '282', 'MC', '0', '20', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1364', '87', '抉择', '282', 'MC', '20', '0', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1365', '35', 'qq3', '282', 'MC', '0', '20', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1366', '31', 'qq1', '282', 'MC', '0', '20', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1367', '1', 'admin', '282', 'MC', '0', '20', '2011-11-11 21:27:04');
INSERT INTO `duipeng` VALUES ('1368', '257', '111111', '283', '强子', '10', '0', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1369', '256', '000000', '283', '强子', '10', '0', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1370', '231', '001', '283', '强子', '10', '0', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1371', '153', '999999', '283', '强子', '10', '0', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1372', '152', '666666', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1373', '151', 'xiaosi', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1374', '118', '盛夏光年', '283', '强子', '10', '0', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1375', '117', '游龙2', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1376', '115', '游龙', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1377', '114', '无敌', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1378', '73', 'mao2', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1379', '48', 'mao', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1380', '46', 'wang3', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1381', '39', 'xin3', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1382', '37', 'xin1', '283', '强子', '0', '10', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1383', '32', 'tt2', '283', '强子', '10', '0', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1384', '30', 'tt1', '283', '强子', '10', '0', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1385', '1', 'admin', '283', '强子', '10', '0', '2011-11-11 21:56:10');
INSERT INTO `duipeng` VALUES ('1386', '253', '04', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1387', '251', '02', '272', '07', '0', '4', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1388', '250', '005', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1389', '236', '01', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1390', '235', '003', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1391', '234', '002', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1392', '229', '吻着泪说爱你', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1393', '224', 'hui', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1394', '223', 'ming', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1395', '215', 'java', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1396', '33', 'tt3', '272', '07', '0', '4', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1397', '30', 'tt1', '272', '07', '0', '4', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1398', '1', 'admin', '272', '07', '4', '0', '2011-11-11 22:07:23');
INSERT INTO `duipeng` VALUES ('1399', '272', '07', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1400', '253', '04', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1401', '251', '02', '275', '10', '0', '4', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1402', '250', '005', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1403', '236', '01', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1404', '235', '003', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1405', '234', '002', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1406', '229', '吻着泪说爱你', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1407', '224', 'hui', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1408', '223', 'ming', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1409', '215', 'java', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1410', '33', 'tt3', '275', '10', '0', '4', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1411', '30', 'tt1', '275', '10', '0', '4', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1412', '1', 'admin', '275', '10', '4', '0', '2011-11-11 22:07:36');
INSERT INTO `duipeng` VALUES ('1413', '252', '03', '270', '05', '0', '4', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1414', '251', '02', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1415', '250', '005', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1416', '236', '01', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1417', '235', '003', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1418', '234', '002', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1419', '229', '吻着泪说爱你', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1420', '224', 'hui', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1421', '223', 'ming', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1422', '215', 'java', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1423', '33', 'tt3', '270', '05', '0', '4', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1424', '30', 'tt1', '270', '05', '0', '4', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1425', '1', 'admin', '270', '05', '4', '0', '2011-11-12 13:31:10');
INSERT INTO `duipeng` VALUES ('1426', '253', '04', '285', '08', '0', '4', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1427', '251', '02', '285', '08', '0', '4', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1428', '250', '005', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1429', '236', '01', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1430', '235', '003', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1431', '234', '002', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1432', '229', '吻着泪说爱你', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1433', '224', 'hui', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1434', '223', 'ming', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1435', '215', 'java', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1436', '33', 'tt3', '285', '08', '0', '4', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1437', '30', 'tt1', '285', '08', '0', '4', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1438', '1', 'admin', '285', '08', '4', '0', '2011-11-12 13:35:07');
INSERT INTO `duipeng` VALUES ('1439', '285', '08', '286', '09', '0', '4', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1440', '253', '04', '286', '09', '0', '4', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1441', '251', '02', '286', '09', '0', '4', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1442', '250', '005', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1443', '236', '01', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1444', '235', '003', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1445', '234', '002', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1446', '229', '吻着泪说爱你', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1447', '224', 'hui', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1448', '223', 'ming', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1449', '215', 'java', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1450', '33', 'tt3', '286', '09', '0', '4', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1451', '30', 'tt1', '286', '09', '0', '4', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1452', '1', 'admin', '286', '09', '4', '0', '2011-11-12 13:35:11');
INSERT INTO `duipeng` VALUES ('1453', '282', 'MC', '287', 'ZJH1', '20', '0', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1454', '263', 'YMC', '287', 'ZJH1', '0', '20', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1455', '262', 'ZJH', '287', 'ZJH1', '20', '0', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1456', '208', '挑战者2', '287', 'ZJH1', '0', '20', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1457', '193', 'ZGH', '287', 'ZJH1', '0', '20', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1458', '189', '胡世明', '287', 'ZJH1', '20', '0', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1459', '130', 'qq5', '287', 'ZJH1', '20', '0', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1460', '108', '种瓜得豆', '287', 'ZJH1', '20', '0', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1461', '106', 'YY11', '287', 'ZJH1', '20', '0', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1462', '88', '刘林', '287', 'ZJH1', '0', '20', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1463', '87', '抉择', '287', 'ZJH1', '20', '0', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1464', '35', 'qq3', '287', 'ZJH1', '0', '20', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1465', '31', 'qq1', '287', 'ZJH1', '0', '20', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1466', '1', 'admin', '287', 'ZJH1', '0', '20', '2011-11-12 18:56:00');
INSERT INTO `duipeng` VALUES ('1467', '299', 'c2', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1468', '275', '10', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1469', '272', '07', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1470', '253', '04', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1471', '251', '02', '300', '11', '0', '4', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1472', '250', '005', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1473', '236', '01', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1474', '235', '003', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1475', '234', '002', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1476', '229', '吻着泪说爱你', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1477', '224', 'hui', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1478', '223', 'ming', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1479', '215', 'java', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1480', '33', 'tt3', '300', '11', '0', '4', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1481', '30', 'tt1', '300', '11', '0', '4', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1482', '1', 'admin', '300', '11', '4', '0', '2011-11-13 14:34:24');
INSERT INTO `duipeng` VALUES ('1483', '300', '11', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1484', '299', 'c2', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1485', '275', '10', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1486', '272', '07', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1487', '253', '04', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1488', '251', '02', '301', '12', '0', '4', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1489', '250', '005', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1490', '236', '01', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1491', '235', '003', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1492', '234', '002', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1493', '229', '吻着泪说爱你', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1494', '224', 'hui', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1495', '223', 'ming', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1496', '215', 'java', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1497', '33', 'tt3', '301', '12', '0', '4', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1498', '30', 'tt1', '301', '12', '0', '4', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1499', '1', 'admin', '301', '12', '4', '0', '2011-11-13 14:34:29');
INSERT INTO `duipeng` VALUES ('1500', '211', 'LX1', '305', 'LCZ', '0', '10', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1501', '210', 'LX', '305', 'LCZ', '10', '0', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1502', '193', 'ZGH', '305', 'LCZ', '10', '0', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1503', '189', '胡世明', '305', 'LCZ', '10', '0', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1504', '130', 'qq5', '305', 'LCZ', '10', '0', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1505', '108', '种瓜得豆', '305', 'LCZ', '10', '0', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1506', '106', 'YY11', '305', 'LCZ', '10', '0', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1507', '88', '刘林', '305', 'LCZ', '0', '10', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1508', '87', '抉择', '305', 'LCZ', '10', '0', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1509', '35', 'qq3', '305', 'LCZ', '0', '10', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1510', '31', 'qq1', '305', 'LCZ', '0', '10', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1511', '1', 'admin', '305', 'LCZ', '0', '10', '2011-11-14 10:06:14');
INSERT INTO `duipeng` VALUES ('1512', '305', 'LCZ', '306', 'LCZ1', '4', '0', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1513', '211', 'LX1', '306', 'LCZ1', '0', '4', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1514', '210', 'LX', '306', 'LCZ1', '4', '0', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1515', '193', 'ZGH', '306', 'LCZ1', '4', '0', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1516', '189', '胡世明', '306', 'LCZ1', '4', '0', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1517', '130', 'qq5', '306', 'LCZ1', '4', '0', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1518', '108', '种瓜得豆', '306', 'LCZ1', '4', '0', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1519', '106', 'YY11', '306', 'LCZ1', '4', '0', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1520', '88', '刘林', '306', 'LCZ1', '0', '4', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1521', '87', '抉择', '306', 'LCZ1', '4', '0', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1522', '35', 'qq3', '306', 'LCZ1', '0', '4', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1523', '31', 'qq1', '306', 'LCZ1', '0', '4', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1524', '1', 'admin', '306', 'LCZ1', '0', '4', '2011-11-14 10:06:24');
INSERT INTO `duipeng` VALUES ('1525', '305', 'LCZ', '307', 'LCZ2', '0', '4', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1526', '211', 'LX1', '307', 'LCZ2', '0', '4', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1527', '210', 'LX', '307', 'LCZ2', '4', '0', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1528', '193', 'ZGH', '307', 'LCZ2', '4', '0', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1529', '189', '胡世明', '307', 'LCZ2', '4', '0', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1530', '130', 'qq5', '307', 'LCZ2', '4', '0', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1531', '108', '种瓜得豆', '307', 'LCZ2', '4', '0', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1532', '106', 'YY11', '307', 'LCZ2', '4', '0', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1533', '88', '刘林', '307', 'LCZ2', '0', '4', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1534', '87', '抉择', '307', 'LCZ2', '4', '0', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1535', '35', 'qq3', '307', 'LCZ2', '0', '4', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1536', '31', 'qq1', '307', 'LCZ2', '0', '4', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1537', '1', 'admin', '307', 'LCZ2', '0', '4', '2011-11-14 10:15:43');
INSERT INTO `duipeng` VALUES ('1538', '176', '李聪1', '308', '现在', '40', '0', '2011-11-14 15:21:57');
INSERT INTO `duipeng` VALUES ('1539', '175', '李聪', '308', '现在', '40', '0', '2011-11-14 15:21:57');
INSERT INTO `duipeng` VALUES ('1540', '129', 'qq4', '308', '现在', '0', '40', '2011-11-14 15:21:57');
INSERT INTO `duipeng` VALUES ('1541', '35', 'qq3', '308', '现在', '40', '0', '2011-11-14 15:21:57');
INSERT INTO `duipeng` VALUES ('1542', '31', 'qq1', '308', '现在', '0', '40', '2011-11-14 15:21:57');
INSERT INTO `duipeng` VALUES ('1543', '1', 'admin', '308', '现在', '0', '40', '2011-11-14 15:21:57');
INSERT INTO `duipeng` VALUES ('1544', '308', '现在', '309', '过去', '10', '0', '2011-11-14 15:22:02');
INSERT INTO `duipeng` VALUES ('1545', '176', '李聪1', '309', '过去', '10', '0', '2011-11-14 15:22:02');
INSERT INTO `duipeng` VALUES ('1546', '175', '李聪', '309', '过去', '10', '0', '2011-11-14 15:22:02');
INSERT INTO `duipeng` VALUES ('1547', '129', 'qq4', '309', '过去', '0', '10', '2011-11-14 15:22:02');
INSERT INTO `duipeng` VALUES ('1548', '35', 'qq3', '309', '过去', '10', '0', '2011-11-14 15:22:02');
INSERT INTO `duipeng` VALUES ('1549', '31', 'qq1', '309', '过去', '0', '10', '2011-11-14 15:22:02');
INSERT INTO `duipeng` VALUES ('1550', '1', 'admin', '309', '过去', '0', '10', '2011-11-14 15:22:02');
INSERT INTO `duipeng` VALUES ('1551', '308', '现在', '310', '未来', '0', '10', '2011-11-14 15:26:22');
INSERT INTO `duipeng` VALUES ('1552', '176', '李聪1', '310', '未来', '10', '0', '2011-11-14 15:26:22');
INSERT INTO `duipeng` VALUES ('1553', '175', '李聪', '310', '未来', '10', '0', '2011-11-14 15:26:22');
INSERT INTO `duipeng` VALUES ('1554', '129', 'qq4', '310', '未来', '0', '10', '2011-11-14 15:26:22');
INSERT INTO `duipeng` VALUES ('1555', '35', 'qq3', '310', '未来', '10', '0', '2011-11-14 15:26:22');
INSERT INTO `duipeng` VALUES ('1556', '31', 'qq1', '310', '未来', '0', '10', '2011-11-14 15:26:22');
INSERT INTO `duipeng` VALUES ('1557', '1', 'admin', '310', '未来', '0', '10', '2011-11-14 15:26:22');
INSERT INTO `duipeng` VALUES ('1558', '309', '过去', '311', '遇见', '0', '40', '2011-11-14 15:26:29');
INSERT INTO `duipeng` VALUES ('1559', '308', '现在', '311', '遇见', '40', '0', '2011-11-14 15:26:29');
INSERT INTO `duipeng` VALUES ('1560', '176', '李聪1', '311', '遇见', '40', '0', '2011-11-14 15:26:29');
INSERT INTO `duipeng` VALUES ('1561', '175', '李聪', '311', '遇见', '40', '0', '2011-11-14 15:26:29');
INSERT INTO `duipeng` VALUES ('1562', '129', 'qq4', '311', '遇见', '0', '40', '2011-11-14 15:26:29');
INSERT INTO `duipeng` VALUES ('1563', '35', 'qq3', '311', '遇见', '40', '0', '2011-11-14 15:26:29');
INSERT INTO `duipeng` VALUES ('1564', '31', 'qq1', '311', '遇见', '0', '40', '2011-11-14 15:26:29');
INSERT INTO `duipeng` VALUES ('1565', '1', 'admin', '311', '遇见', '0', '40', '2011-11-14 15:26:29');
INSERT INTO `duipeng` VALUES ('1566', '259', 'LC1', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1567', '258', 'LC', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1568', '245', 'H', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1569', '244', 'L', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1570', '212', 'LX2', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1571', '210', 'LX', '312', 'hzz', '0', '10', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1572', '193', 'ZGH', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1573', '189', '胡世明', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1574', '130', 'qq5', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1575', '108', '种瓜得豆', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1576', '106', 'YY11', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1577', '88', '刘林', '312', 'hzz', '0', '10', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1578', '87', '抉择', '312', 'hzz', '10', '0', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1579', '35', 'qq3', '312', 'hzz', '0', '10', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1580', '31', 'qq1', '312', 'hzz', '0', '10', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1581', '1', 'admin', '312', 'hzz', '0', '10', '2011-11-14 17:56:15');
INSERT INTO `duipeng` VALUES ('1582', '312', 'hzz', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1583', '259', 'LC1', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1584', '258', 'LC', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1585', '245', 'H', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1586', '244', 'L', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1587', '212', 'LX2', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1588', '210', 'LX', '313', 'hzz1', '0', '4', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1589', '193', 'ZGH', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1590', '189', '胡世明', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1591', '130', 'qq5', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1592', '108', '种瓜得豆', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1593', '106', 'YY11', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1594', '88', '刘林', '313', 'hzz1', '0', '4', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1595', '87', '抉择', '313', 'hzz1', '4', '0', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1596', '35', 'qq3', '313', 'hzz1', '0', '4', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1597', '31', 'qq1', '313', 'hzz1', '0', '4', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1598', '1', 'admin', '313', 'hzz1', '0', '4', '2011-11-14 17:56:27');
INSERT INTO `duipeng` VALUES ('1599', '312', 'hzz', '314', 'hzz2', '0', '4', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1600', '259', 'LC1', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1601', '258', 'LC', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1602', '245', 'H', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1603', '244', 'L', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1604', '212', 'LX2', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1605', '210', 'LX', '314', 'hzz2', '0', '4', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1606', '193', 'ZGH', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1607', '189', '胡世明', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1608', '130', 'qq5', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1609', '108', '种瓜得豆', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1610', '106', 'YY11', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1611', '88', '刘林', '314', 'hzz2', '0', '4', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1612', '87', '抉择', '314', 'hzz2', '4', '0', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1613', '35', 'qq3', '314', 'hzz2', '0', '4', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1614', '31', 'qq1', '314', 'hzz2', '0', '4', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1615', '1', 'admin', '314', 'hzz2', '0', '4', '2011-11-14 17:57:55');
INSERT INTO `duipeng` VALUES ('1616', '264', 'LC2', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1617', '258', 'LC', '315', 'DY', '0', '4', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1618', '245', 'H', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1619', '244', 'L', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1620', '212', 'LX2', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1621', '210', 'LX', '315', 'DY', '0', '4', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1622', '193', 'ZGH', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1623', '189', '胡世明', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1624', '130', 'qq5', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1625', '108', '种瓜得豆', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1626', '106', 'YY11', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1627', '88', '刘林', '315', 'DY', '0', '4', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1628', '87', '抉择', '315', 'DY', '4', '0', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1629', '35', 'qq3', '315', 'DY', '0', '4', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1630', '31', 'qq1', '315', 'DY', '0', '4', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1631', '1', 'admin', '315', 'DY', '0', '4', '2011-11-14 19:24:56');
INSERT INTO `duipeng` VALUES ('1632', '306', 'LCZ1', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1633', '305', 'LCZ', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1634', '211', 'LX1', '316', 'GCS', '0', '20', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1635', '210', 'LX', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1636', '193', 'ZGH', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1637', '189', '胡世明', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1638', '130', 'qq5', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1639', '108', '种瓜得豆', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1640', '106', 'YY11', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1641', '88', '刘林', '316', 'GCS', '0', '20', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1642', '87', '抉择', '316', 'GCS', '20', '0', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1643', '35', 'qq3', '316', 'GCS', '0', '20', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1644', '31', 'qq1', '316', 'GCS', '0', '20', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1645', '1', 'admin', '316', 'GCS', '0', '20', '2011-11-14 20:57:22');
INSERT INTO `duipeng` VALUES ('1646', '316', 'GCS', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1647', '306', 'LCZ1', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1648', '305', 'LCZ', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1649', '211', 'LX1', '317', 'XXD', '0', '20', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1650', '210', 'LX', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1651', '193', 'ZGH', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1652', '189', '胡世明', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1653', '130', 'qq5', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1654', '108', '种瓜得豆', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1655', '106', 'YY11', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1656', '88', '刘林', '317', 'XXD', '0', '20', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1657', '87', '抉择', '317', 'XXD', '20', '0', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1658', '35', 'qq3', '317', 'XXD', '0', '20', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1659', '31', 'qq1', '317', 'XXD', '0', '20', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1660', '1', 'admin', '317', 'XXD', '0', '20', '2011-11-14 20:57:28');
INSERT INTO `duipeng` VALUES ('1661', '317', 'XXD', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1662', '316', 'GCS', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1663', '306', 'LCZ1', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1664', '305', 'LCZ', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1665', '211', 'LX1', '318', 'XXD1', '0', '10', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1666', '210', 'LX', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1667', '193', 'ZGH', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1668', '189', '胡世明', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1669', '130', 'qq5', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1670', '108', '种瓜得豆', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1671', '106', 'YY11', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1672', '88', '刘林', '318', 'XXD1', '0', '10', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1673', '87', '抉择', '318', 'XXD1', '10', '0', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1674', '35', 'qq3', '318', 'XXD1', '0', '10', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1675', '31', 'qq1', '318', 'XXD1', '0', '10', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1676', '1', 'admin', '318', 'XXD1', '0', '10', '2011-11-14 21:00:41');
INSERT INTO `duipeng` VALUES ('1677', '317', 'XXD', '319', 'XXD2', '0', '10', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1678', '316', 'GCS', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1679', '306', 'LCZ1', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1680', '305', 'LCZ', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1681', '211', 'LX1', '319', 'XXD2', '0', '10', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1682', '210', 'LX', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1683', '193', 'ZGH', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1684', '189', '胡世明', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1685', '130', 'qq5', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1686', '108', '种瓜得豆', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1687', '106', 'YY11', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1688', '88', '刘林', '319', 'XXD2', '0', '10', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1689', '87', '抉择', '319', 'XXD2', '10', '0', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1690', '35', 'qq3', '319', 'XXD2', '0', '10', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1691', '31', 'qq1', '319', 'XXD2', '0', '10', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1692', '1', 'admin', '319', 'XXD2', '0', '10', '2011-11-14 21:01:05');
INSERT INTO `duipeng` VALUES ('1693', '281', 'YMC1', '320', 'HDY', '0', '10', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1694', '263', 'YMC', '320', 'HDY', '10', '0', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1695', '262', 'ZJH', '320', 'HDY', '10', '0', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1696', '208', '挑战者2', '320', 'HDY', '0', '10', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1697', '193', 'ZGH', '320', 'HDY', '0', '10', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1698', '189', '胡世明', '320', 'HDY', '10', '0', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1699', '130', 'qq5', '320', 'HDY', '10', '0', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1700', '108', '种瓜得豆', '320', 'HDY', '10', '0', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1701', '106', 'YY11', '320', 'HDY', '10', '0', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1702', '88', '刘林', '320', 'HDY', '0', '10', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1703', '87', '抉择', '320', 'HDY', '10', '0', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1704', '35', 'qq3', '320', 'HDY', '0', '10', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1705', '31', 'qq1', '320', 'HDY', '0', '10', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1706', '1', 'admin', '320', 'HDY', '0', '10', '2011-11-14 21:06:12');
INSERT INTO `duipeng` VALUES ('1707', '287', 'ZJH1', '321', 'LJL', '10', '0', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1708', '282', 'MC', '321', 'LJL', '10', '0', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1709', '263', 'YMC', '321', 'LJL', '0', '10', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1710', '262', 'ZJH', '321', 'LJL', '10', '0', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1711', '208', '挑战者2', '321', 'LJL', '0', '10', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1712', '193', 'ZGH', '321', 'LJL', '0', '10', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1713', '189', '胡世明', '321', 'LJL', '10', '0', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1714', '130', 'qq5', '321', 'LJL', '10', '0', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1715', '108', '种瓜得豆', '321', 'LJL', '10', '0', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1716', '106', 'YY11', '321', 'LJL', '10', '0', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1717', '88', '刘林', '321', 'LJL', '0', '10', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1718', '87', '抉择', '321', 'LJL', '10', '0', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1719', '35', 'qq3', '321', 'LJL', '0', '10', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1720', '31', 'qq1', '321', 'LJL', '0', '10', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1721', '1', 'admin', '321', 'LJL', '0', '10', '2011-11-15 13:19:34');
INSERT INTO `duipeng` VALUES ('1722', '264', 'LC2', '323', 'lc5', '0', '4', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1723', '258', 'LC', '323', 'lc5', '0', '4', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1724', '245', 'H', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1725', '244', 'L', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1726', '212', 'LX2', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1727', '210', 'LX', '323', 'lc5', '0', '4', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1728', '193', 'ZGH', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1729', '189', '胡世明', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1730', '130', 'qq5', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1731', '108', '种瓜得豆', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1732', '106', 'YY11', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1733', '88', '刘林', '323', 'lc5', '0', '4', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1734', '87', '抉择', '323', 'lc5', '4', '0', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1735', '35', 'qq3', '323', 'lc5', '0', '4', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1736', '31', 'qq1', '323', 'lc5', '0', '4', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1737', '1', 'admin', '323', 'lc5', '0', '4', '2011-11-15 17:05:01');
INSERT INTO `duipeng` VALUES ('1738', '280', 'LC4', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1739', '259', 'LC1', '324', 'lc3', '0', '4', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1740', '258', 'LC', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1741', '245', 'H', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1742', '244', 'L', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1743', '212', 'LX2', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1744', '210', 'LX', '324', 'lc3', '0', '4', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1745', '193', 'ZGH', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1746', '189', '胡世明', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1747', '130', 'qq5', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1748', '108', '种瓜得豆', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1749', '106', 'YY11', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1750', '88', '刘林', '324', 'lc3', '0', '4', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1751', '87', '抉择', '324', 'lc3', '4', '0', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1752', '35', 'qq3', '324', 'lc3', '0', '4', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1753', '31', 'qq1', '324', 'lc3', '0', '4', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1754', '1', 'admin', '324', 'lc3', '0', '4', '2011-11-15 17:37:28');
INSERT INTO `duipeng` VALUES ('1755', '318', 'XXD1', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1756', '317', 'XXD', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1757', '316', 'GCS', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1758', '306', 'LCZ1', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1759', '305', 'LCZ', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1760', '211', 'LX1', '325', 'ZYM', '0', '10', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1761', '210', 'LX', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1762', '193', 'ZGH', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1763', '189', '胡世明', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1764', '130', 'qq5', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1765', '108', '种瓜得豆', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1766', '106', 'YY11', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1767', '88', '刘林', '325', 'ZYM', '0', '10', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1768', '87', '抉择', '325', 'ZYM', '10', '0', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1769', '35', 'qq3', '325', 'ZYM', '0', '10', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1770', '31', 'qq1', '325', 'ZYM', '0', '10', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1771', '1', 'admin', '325', 'ZYM', '0', '10', '2011-11-15 18:45:06');
INSERT INTO `duipeng` VALUES ('1772', '265', '006', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1773', '255', 'c1', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1774', '252', '03', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1775', '251', '02', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1776', '250', '005', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1777', '236', '01', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1778', '235', '003', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1779', '234', '002', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1780', '229', '吻着泪说爱你', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1781', '224', 'hui', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1782', '223', 'ming', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1783', '215', 'java', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1784', '33', 'tt3', '326', '13', '0', '4', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1785', '30', 'tt1', '326', '13', '0', '4', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1786', '1', 'admin', '326', '13', '4', '0', '2011-11-16 16:03:21');
INSERT INTO `duipeng` VALUES ('1787', '326', '13', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1788', '265', '006', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1789', '255', 'c1', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1790', '252', '03', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1791', '251', '02', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1792', '250', '005', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1793', '236', '01', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1794', '235', '003', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1795', '234', '002', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1796', '229', '吻着泪说爱你', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1797', '224', 'hui', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1798', '223', 'ming', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1799', '215', 'java', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1800', '33', 'tt3', '327', '14', '0', '4', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1801', '30', 'tt1', '327', '14', '0', '4', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1802', '1', 'admin', '327', '14', '4', '0', '2011-11-16 16:03:27');
INSERT INTO `duipeng` VALUES ('1803', '316', 'GCS', '328', 'TXD', '0', '10', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1804', '306', 'LCZ1', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1805', '305', 'LCZ', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1806', '211', 'LX1', '328', 'TXD', '0', '10', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1807', '210', 'LX', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1808', '193', 'ZGH', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1809', '189', '胡世明', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1810', '130', 'qq5', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1811', '108', '种瓜得豆', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1812', '106', 'YY11', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1813', '88', '刘林', '328', 'TXD', '0', '10', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1814', '87', '抉择', '328', 'TXD', '10', '0', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1815', '35', 'qq3', '328', 'TXD', '0', '10', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1816', '31', 'qq1', '328', 'TXD', '0', '10', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1817', '1', 'admin', '328', 'TXD', '0', '10', '2011-11-16 17:44:11');
INSERT INTO `duipeng` VALUES ('1818', '329', '0709', '330', '娟', '10', '0', '2011-11-16 20:36:59');
INSERT INTO `duipeng` VALUES ('1819', '266', 'cui', '330', '娟', '10', '0', '2011-11-16 20:36:59');
INSERT INTO `duipeng` VALUES ('1820', '224', 'hui', '330', '娟', '0', '10', '2011-11-16 20:36:59');
INSERT INTO `duipeng` VALUES ('1821', '223', 'ming', '330', '娟', '10', '0', '2011-11-16 20:36:59');
INSERT INTO `duipeng` VALUES ('1822', '215', 'java', '330', '娟', '10', '0', '2011-11-16 20:36:59');
INSERT INTO `duipeng` VALUES ('1823', '33', 'tt3', '330', '娟', '0', '10', '2011-11-16 20:36:59');
INSERT INTO `duipeng` VALUES ('1824', '30', 'tt1', '330', '娟', '0', '10', '2011-11-16 20:36:59');
INSERT INTO `duipeng` VALUES ('1825', '1', 'admin', '330', '娟', '10', '0', '2011-11-16 20:36:59');
INSERT INTO `duipeng` VALUES ('1826', '330', '娟', '331', '诺诺', '10', '0', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1827', '329', '0709', '331', '诺诺', '10', '0', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1828', '266', 'cui', '331', '诺诺', '10', '0', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1829', '224', 'hui', '331', '诺诺', '0', '10', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1830', '223', 'ming', '331', '诺诺', '10', '0', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1831', '215', 'java', '331', '诺诺', '10', '0', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1832', '33', 'tt3', '331', '诺诺', '0', '10', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1833', '30', 'tt1', '331', '诺诺', '0', '10', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1834', '1', 'admin', '331', '诺诺', '10', '0', '2011-11-17 09:52:28');
INSERT INTO `duipeng` VALUES ('1835', '330', '娟', '333', '雷', '0', '10', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1836', '329', '0709', '333', '雷', '10', '0', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1837', '266', 'cui', '333', '雷', '10', '0', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1838', '224', 'hui', '333', '雷', '0', '10', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1839', '223', 'ming', '333', '雷', '10', '0', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1840', '215', 'java', '333', '雷', '10', '0', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1841', '33', 'tt3', '333', '雷', '0', '10', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1842', '30', 'tt1', '333', '雷', '0', '10', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1843', '1', 'admin', '333', '雷', '10', '0', '2011-11-17 09:56:26');
INSERT INTO `duipeng` VALUES ('1844', '327', '14', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1845', '326', '13', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1846', '265', '006', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1847', '255', 'c1', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1848', '252', '03', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1849', '251', '02', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1850', '250', '005', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1851', '236', '01', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1852', '235', '003', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1853', '234', '002', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1854', '229', '吻着泪说爱你', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1855', '224', 'hui', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1856', '223', 'ming', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1857', '215', 'java', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1858', '33', 'tt3', '334', '15', '0', '4', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1859', '30', 'tt1', '334', '15', '0', '4', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1860', '1', 'admin', '334', '15', '4', '0', '2011-11-17 10:02:35');
INSERT INTO `duipeng` VALUES ('1861', '334', '15', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1862', '327', '14', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1863', '326', '13', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1864', '265', '006', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1865', '255', 'c1', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1866', '252', '03', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1867', '251', '02', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1868', '250', '005', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1869', '236', '01', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1870', '235', '003', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1871', '234', '002', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1872', '229', '吻着泪说爱你', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1873', '224', 'hui', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1874', '223', 'ming', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1875', '215', 'java', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1876', '33', 'tt3', '335', '16', '0', '4', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1877', '30', 'tt1', '335', '16', '0', '4', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1878', '1', 'admin', '335', '16', '4', '0', '2011-11-17 10:02:45');
INSERT INTO `duipeng` VALUES ('1879', '328', 'TXD', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1880', '316', 'GCS', '337', 'YW', '0', '10', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1881', '306', 'LCZ1', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1882', '305', 'LCZ', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1883', '211', 'LX1', '337', 'YW', '0', '10', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1884', '210', 'LX', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1885', '193', 'ZGH', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1886', '189', '胡世明', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1887', '130', 'qq5', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1888', '108', '种瓜得豆', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1889', '106', 'YY11', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1890', '88', '刘林', '337', 'YW', '0', '10', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1891', '87', '抉择', '337', 'YW', '10', '0', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1892', '35', 'qq3', '337', 'YW', '0', '10', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1893', '31', 'qq1', '337', 'YW', '0', '10', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1894', '1', 'admin', '337', 'YW', '0', '10', '2011-11-17 12:45:28');
INSERT INTO `duipeng` VALUES ('1895', '320', 'HDY', '338', 'CL', '10', '0', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1896', '281', 'YMC1', '338', 'CL', '0', '10', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1897', '263', 'YMC', '338', 'CL', '10', '0', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1898', '262', 'ZJH', '338', 'CL', '10', '0', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1899', '208', '挑战者2', '338', 'CL', '0', '10', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1900', '193', 'ZGH', '338', 'CL', '0', '10', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1901', '189', '胡世明', '338', 'CL', '10', '0', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1902', '130', 'qq5', '338', 'CL', '10', '0', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1903', '108', '种瓜得豆', '338', 'CL', '10', '0', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1904', '106', 'YY11', '338', 'CL', '10', '0', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1905', '88', '刘林', '338', 'CL', '0', '10', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1906', '87', '抉择', '338', 'CL', '10', '0', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1907', '35', 'qq3', '338', 'CL', '0', '10', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1908', '31', 'qq1', '338', 'CL', '0', '10', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1909', '1', 'admin', '338', 'CL', '0', '10', '2011-11-17 16:15:18');
INSERT INTO `duipeng` VALUES ('1910', '230', '挑战者3', '339', '挑战者1', '4', '0', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1911', '200', '轩168', '339', '挑战者1', '0', '4', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1912', '198', '传奇M', '339', '挑战者1', '4', '0', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1913', '189', '胡世明', '339', '挑战者1', '0', '4', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1914', '130', 'qq5', '339', '挑战者1', '4', '0', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1915', '108', '种瓜得豆', '339', '挑战者1', '4', '0', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1916', '106', 'YY11', '339', '挑战者1', '4', '0', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1917', '88', '刘林', '339', '挑战者1', '0', '4', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1918', '87', '抉择', '339', '挑战者1', '4', '0', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1919', '35', 'qq3', '339', '挑战者1', '0', '4', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1920', '31', 'qq1', '339', '挑战者1', '0', '4', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1921', '1', 'admin', '339', '挑战者1', '0', '4', '2011-11-17 18:15:34');
INSERT INTO `duipeng` VALUES ('1922', '280', 'LC4', '340', 'zxd', '0', '20', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1923', '259', 'LC1', '340', 'zxd', '0', '20', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1924', '258', 'LC', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1925', '245', 'H', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1926', '244', 'L', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1927', '212', 'LX2', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1928', '210', 'LX', '340', 'zxd', '0', '20', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1929', '193', 'ZGH', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1930', '189', '胡世明', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1931', '130', 'qq5', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1932', '108', '种瓜得豆', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1933', '106', 'YY11', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1934', '88', '刘林', '340', 'zxd', '0', '20', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1935', '87', '抉择', '340', 'zxd', '20', '0', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1936', '35', 'qq3', '340', 'zxd', '0', '20', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1937', '31', 'qq1', '340', 'zxd', '0', '20', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1938', '1', 'admin', '340', 'zxd', '0', '20', '2011-11-17 18:24:44');
INSERT INTO `duipeng` VALUES ('1939', '340', 'zxd', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1940', '280', 'LC4', '341', 'zxd1', '0', '4', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1941', '259', 'LC1', '341', 'zxd1', '0', '4', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1942', '258', 'LC', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1943', '245', 'H', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1944', '244', 'L', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1945', '212', 'LX2', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1946', '210', 'LX', '341', 'zxd1', '0', '4', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1947', '193', 'ZGH', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1948', '189', '胡世明', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1949', '130', 'qq5', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1950', '108', '种瓜得豆', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1951', '106', 'YY11', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1952', '88', '刘林', '341', 'zxd1', '0', '4', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1953', '87', '抉择', '341', 'zxd1', '4', '0', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1954', '35', 'qq3', '341', 'zxd1', '0', '4', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1955', '31', 'qq1', '341', 'zxd1', '0', '4', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1956', '1', 'admin', '341', 'zxd1', '0', '4', '2011-11-17 18:24:48');
INSERT INTO `duipeng` VALUES ('1957', '340', 'zxd', '342', 'zxd2', '0', '4', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1958', '280', 'LC4', '342', 'zxd2', '0', '4', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1959', '259', 'LC1', '342', 'zxd2', '0', '4', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1960', '258', 'LC', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1961', '245', 'H', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1962', '244', 'L', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1963', '212', 'LX2', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1964', '210', 'LX', '342', 'zxd2', '0', '4', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1965', '193', 'ZGH', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1966', '189', '胡世明', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1967', '130', 'qq5', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1968', '108', '种瓜得豆', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1969', '106', 'YY11', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1970', '88', '刘林', '342', 'zxd2', '0', '4', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1971', '87', '抉择', '342', 'zxd2', '4', '0', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1972', '35', 'qq3', '342', 'zxd2', '0', '4', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1973', '31', 'qq1', '342', 'zxd2', '0', '4', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1974', '1', 'admin', '342', 'zxd2', '0', '4', '2011-11-17 18:28:58');
INSERT INTO `duipeng` VALUES ('1975', '177', '李聪2', '336', '王盼', '10', '0', '2011-11-17 19:39:07');
INSERT INTO `duipeng` VALUES ('1976', '175', '李聪', '336', '王盼', '0', '10', '2011-11-17 19:39:07');
INSERT INTO `duipeng` VALUES ('1977', '129', 'qq4', '336', '王盼', '0', '10', '2011-11-17 19:39:07');
INSERT INTO `duipeng` VALUES ('1978', '35', 'qq3', '336', '王盼', '10', '0', '2011-11-17 19:39:07');
INSERT INTO `duipeng` VALUES ('1979', '31', 'qq1', '336', '王盼', '0', '10', '2011-11-17 19:39:07');
INSERT INTO `duipeng` VALUES ('1980', '1', 'admin', '336', '王盼', '0', '10', '2011-11-17 19:39:07');
INSERT INTO `duipeng` VALUES ('1981', '177', '李聪2', '343', '尹珍', '0', '4', '2011-11-17 22:16:31');
INSERT INTO `duipeng` VALUES ('1982', '175', '李聪', '343', '尹珍', '0', '4', '2011-11-17 22:16:31');
INSERT INTO `duipeng` VALUES ('1983', '129', 'qq4', '343', '尹珍', '0', '4', '2011-11-17 22:16:31');
INSERT INTO `duipeng` VALUES ('1984', '35', 'qq3', '343', '尹珍', '4', '0', '2011-11-17 22:16:31');
INSERT INTO `duipeng` VALUES ('1985', '31', 'qq1', '343', '尹珍', '0', '4', '2011-11-17 22:16:31');
INSERT INTO `duipeng` VALUES ('1986', '1', 'admin', '343', '尹珍', '0', '4', '2011-11-17 22:16:31');
INSERT INTO `duipeng` VALUES ('1987', '352', 'cc1', '353', 'bb1', '4', '0', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1988', '163', '陈旭', '353', 'bb1', '4', '0', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1989', '158', '黄从江', '353', 'bb1', '4', '0', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1990', '125', 'b1', '353', 'bb1', '4', '0', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1991', '120', '成功的路', '353', 'bb1', '4', '0', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1992', '118', '盛夏光年', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1993', '117', '游龙2', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1994', '115', '游龙', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1995', '114', '无敌', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1996', '73', 'mao2', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1997', '48', 'mao', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1998', '46', 'wang3', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('1999', '39', 'xin3', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('2000', '37', 'xin1', '353', 'bb1', '0', '4', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('2001', '32', 'tt2', '353', 'bb1', '4', '0', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('2002', '30', 'tt1', '353', 'bb1', '4', '0', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('2003', '1', 'admin', '353', 'bb1', '4', '0', '2011-11-22 13:06:43');
INSERT INTO `duipeng` VALUES ('2004', '353', 'bb1', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2005', '352', 'cc1', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2006', '163', '陈旭', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2007', '158', '黄从江', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2008', '125', 'b1', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2009', '120', '成功的路', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2010', '118', '盛夏光年', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2011', '117', '游龙2', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2012', '115', '游龙', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2013', '114', '无敌', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2014', '73', 'mao2', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2015', '48', 'mao', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2016', '46', 'wang3', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2017', '39', 'xin3', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2018', '37', 'xin1', '354', 'bb2', '0', '4', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2019', '32', 'tt2', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2020', '30', 'tt1', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2021', '1', 'admin', '354', 'bb2', '4', '0', '2011-11-22 13:06:57');
INSERT INTO `duipeng` VALUES ('2022', '1', 'admin', '6', 'tt2', '1200', '0', '2017-07-08 16:45:09');
INSERT INTO `duipeng` VALUES ('2023', '6', 'tt2', '8', 'wang1', '1200', '0', '2017-07-13 21:56:45');
INSERT INTO `duipeng` VALUES ('2024', '1', 'admin', '8', 'wang1', '1200', '0', '2017-07-13 21:56:45');
INSERT INTO `duipeng` VALUES ('2025', '8', 'wang1', '12', 'nnn1', '0', '1200', '2017-10-22 19:42:03');
INSERT INTO `duipeng` VALUES ('2026', '6', 'tt2', '12', 'nnn1', '1200', '0', '2017-10-22 19:42:03');
INSERT INTO `duipeng` VALUES ('2027', '1', 'admin', '12', 'nnn1', '1200', '0', '2017-10-22 19:42:03');
INSERT INTO `duipeng` VALUES ('2028', '12', 'nnn1', '13', 'nnn21', '1200', '0', '2017-10-22 19:44:13');
INSERT INTO `duipeng` VALUES ('2029', '8', 'wang1', '13', 'nnn21', '0', '1200', '2017-10-22 19:44:13');
INSERT INTO `duipeng` VALUES ('2030', '6', 'tt2', '13', 'nnn21', '1200', '0', '2017-10-22 19:44:13');
INSERT INTO `duipeng` VALUES ('2031', '1', 'admin', '13', 'nnn21', '1200', '0', '2017-10-22 19:44:13');
INSERT INTO `duipeng` VALUES ('2032', '9', 'wang2', '14', 'nnn112', '1200', '0', '2017-10-22 22:28:56');
INSERT INTO `duipeng` VALUES ('2033', '6', 'tt2', '14', 'nnn112', '0', '1200', '2017-10-22 22:28:56');
INSERT INTO `duipeng` VALUES ('2034', '1', 'admin', '14', 'nnn112', '1200', '0', '2017-10-22 22:28:56');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `Picture` varchar(250) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '30元面值，5张，价格75元', 'Images/by.gif', '75', '2011-06-29 21:10:36');
INSERT INTO `goods` VALUES ('2', '20元面值，5张，价格50元', 'Images/by.gif', '50', '2011-06-29 21:10:37');

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `InfoId` int(10) NOT NULL AUTO_INCREMENT,
  `SortId` int(10) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Title2` varchar(250) DEFAULT NULL,
  `TitleColor` varchar(50) DEFAULT NULL,
  `IsOutLink` int(10) DEFAULT NULL,
  `OutLink` int(10) DEFAULT NULL,
  `Author` varchar(250) DEFAULT NULL,
  `InfoSource` varchar(250) DEFAULT NULL,
  `Tags` varchar(250) DEFAULT NULL,
  `Content` text,
  `IsTop` int(10) DEFAULT NULL,
  `IsRecommend` int(10) DEFAULT NULL,
  `IsImagesInfo` int(10) DEFAULT NULL,
  `ImagePath` varchar(250) DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  `Hits` int(10) DEFAULT NULL,
  PRIMARY KEY (`InfoId`),
  KEY `Id` (`InfoId`),
  KEY `SortId` (`SortId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------

-- ----------------------------
-- Table structure for `infosort`
-- ----------------------------
DROP TABLE IF EXISTS `infosort`;
CREATE TABLE `infosort` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `ModuleId` int(10) DEFAULT NULL,
  `SortLevel` int(10) DEFAULT NULL,
  `Pid` int(10) DEFAULT NULL,
  `SortName` varchar(255) DEFAULT NULL,
  `SortType` int(10) DEFAULT NULL,
  `SortUrl` varchar(250) DEFAULT NULL,
  `SortOrder` int(10) DEFAULT NULL,
  `SortPath` varchar(250) DEFAULT NULL,
  `SortFileName` varchar(250) DEFAULT NULL,
  `SortTitle` varchar(250) DEFAULT NULL,
  `Keywords` varchar(250) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  `SortStatus` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `Keywords` (`Keywords`),
  KEY `ModuleId` (`ModuleId`),
  KEY `Pid` (`Pid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of infosort
-- ----------------------------
INSERT INTO `infosort` VALUES ('17', '12', '0', '0', '关于我们', '2', null, '1', null, null, null, null, null, '2011-06-30 23:06:18', '1');
INSERT INTO `infosort` VALUES ('18', '12', '1', '17', '企业简介', '2', null, '1', null, null, null, null, null, '2011-06-30 23:06:52', '1');
INSERT INTO `infosort` VALUES ('19', '12', '0', '0', '联系我们', '2', null, '5', null, null, null, null, null, '2011-06-30 23:07:27', '1');
INSERT INTO `infosort` VALUES ('20', '13', '0', '0', '新闻中心', '1', null, '2', null, null, null, null, null, '2011-06-30 23:11:07', '1');
INSERT INTO `infosort` VALUES ('21', '14', '0', '0', '产品展示', '1', null, '3', null, null, null, null, null, '2011-06-30 23:25:59', '1');
INSERT INTO `infosort` VALUES ('22', '12', '0', '0', '人才招聘', '2', null, '4', null, null, null, null, null, '2011-06-30 23:30:45', '1');
INSERT INTO `infosort` VALUES ('23', '12', '0', '0', '会员登陆', '3', '/vip/login.aspx', '6', null, null, null, null, null, '2011-06-30 23:35:10', '1');
INSERT INTO `infosort` VALUES ('24', '12', '1', '17', '企业宗旨', '2', null, '2', null, null, null, null, null, '2011-06-30 23:59:03', '1');
INSERT INTO `infosort` VALUES ('25', '12', '1', '17', '企业文化', '2', null, '3', null, null, null, null, null, '2011-06-30 23:59:22', '1');
INSERT INTO `infosort` VALUES ('26', '13', '1', '20', '公司新闻', '1', null, '1', null, null, null, null, null, '2011-07-01 00:00:13', '1');
INSERT INTO `infosort` VALUES ('27', '13', '1', '20', '行业新闻', '1', null, '2', null, null, null, null, null, '2011-07-01 00:00:49', '1');
INSERT INTO `infosort` VALUES ('28', '14', '1', '21', '充值卡', '1', null, '1', null, null, null, null, null, '2011-07-01 00:02:21', '1');
INSERT INTO `infosort` VALUES ('29', '12', '1', '17', '组织机构', '2', null, '4', null, null, null, null, null, '2011-07-01 20:30:55', '1');

-- ----------------------------
-- Table structure for `jiangjin`
-- ----------------------------
DROP TABLE IF EXISTS `jiangjin`;
CREATE TABLE `jiangjin` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `FromId` int(10) DEFAULT NULL,
  `FromName` varchar(50) DEFAULT NULL,
  `DuiPengJiang` double DEFAULT NULL,
  `JinTie` double DEFAULT NULL,
  `JiangJinType` varchar(50) DEFAULT NULL,
  `AllJiangJin` double DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FromId` (`FromId`),
  KEY `Id` (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiangjin
-- ----------------------------
INSERT INTO `jiangjin` VALUES ('1', '1', 'admin', '30', 'tt1', '0', '17.5', '服务津贴', '17.5', '2011-06-30 18:19:25');
INSERT INTO `jiangjin` VALUES ('2', '1', 'admin', '30', 'tt1', '10.5', '0', '对碰奖', '10.5', '2011-06-30 18:19:25');
INSERT INTO `jiangjin` VALUES ('3', '1', 'admin', '31', 'qq1', '0', '35', '服务津贴', '35', '2011-07-01 21:18:58');
INSERT INTO `jiangjin` VALUES ('4', '1', 'admin', '31', 'qq1', '24.5', '0', '对碰奖', '24.5', '2011-07-01 21:18:58');
INSERT INTO `jiangjin` VALUES ('5', '30', 'tt1', '32', 'tt2', '0', '25', '服务津贴', '25', '2011-07-01 21:36:07');
INSERT INTO `jiangjin` VALUES ('6', '1', 'admin', '32', 'tt2', '35', '0', '对碰奖', '35', '2011-07-01 21:36:07');
INSERT INTO `jiangjin` VALUES ('7', '30', 'tt1', '33', 'tt3', '0', '50', '服务津贴', '50', '2011-07-01 22:06:13');
INSERT INTO `jiangjin` VALUES ('8', '30', 'tt1', '33', 'tt3', '60', '0', '对碰奖', '60', '2011-07-01 22:06:13');
INSERT INTO `jiangjin` VALUES ('9', '31', 'qq1', '34', 'qq2', '0', '30', '服务津贴', '30', '2011-07-01 23:59:14');
INSERT INTO `jiangjin` VALUES ('10', '1', 'admin', '34', 'qq2', '70', '0', '对碰奖', '70', '2011-07-01 23:59:14');
INSERT INTO `jiangjin` VALUES ('11', '31', 'qq1', '35', 'qq3', '0', '60', '服务津贴', '60', '2011-07-01 23:59:18');
INSERT INTO `jiangjin` VALUES ('12', '31', 'qq1', '35', 'qq3', '70', '0', '对碰奖', '70', '2011-07-01 23:59:18');
INSERT INTO `jiangjin` VALUES ('13', '1', 'admin', '35', 'qq3', '105', '0', '对碰奖', '105', '2011-07-01 23:59:18');
INSERT INTO `jiangjin` VALUES ('14', '31', 'qq1', '36', 'hh', '0', '6', '服务津贴', '6', '2011-07-02 08:57:12');
INSERT INTO `jiangjin` VALUES ('15', '1', 'admin', '36', 'hh', '14', '0', '对碰奖', '14', '2011-07-02 08:57:12');
INSERT INTO `jiangjin` VALUES ('16', '30', 'tt1', '37', 'xin1', '0', '25', '服务津贴', '25', '2011-07-04 09:38:29');
INSERT INTO `jiangjin` VALUES ('17', '30', 'tt1', '37', 'xin1', '36', '0', '对碰奖', '36', '2011-07-04 09:38:29');
INSERT INTO `jiangjin` VALUES ('18', '1', 'admin', '37', 'xin1', '10.5', '0', '对碰奖', '10.5', '2011-07-04 09:38:29');
INSERT INTO `jiangjin` VALUES ('19', '30', 'tt1', '38', 'xin2', '0', '25', '服务津贴', '25', '2011-07-04 09:39:39');
INSERT INTO `jiangjin` VALUES ('20', '30', 'tt1', '39', 'xin3', '0', '25', '服务津贴', '25', '2011-07-04 09:39:42');
INSERT INTO `jiangjin` VALUES ('21', '37', 'xin1', '39', 'xin3', '70', '0', '对碰奖', '70', '2011-07-04 09:39:42');
INSERT INTO `jiangjin` VALUES ('22', '37', 'xin1', '41', 'srwxd1', '0', '17.5', '服务津贴', '17.5', '2011-07-04 10:46:45');
INSERT INTO `jiangjin` VALUES ('23', '37', 'xin1', '46', 'wang3', '0', '17.5', '服务津贴', '17.5', '2011-07-04 12:27:08');
INSERT INTO `jiangjin` VALUES ('24', '37', 'xin1', '46', 'wang3', '35', '0', '对碰奖', '35', '2011-07-04 12:27:08');
INSERT INTO `jiangjin` VALUES ('25', '38', 'xin2', '50', 'ding', '0', '35', '服务津贴', '35', '2011-07-05 19:57:41');
INSERT INTO `jiangjin` VALUES ('26', '38', 'xin2', '50', 'ding', '35', '0', '对碰奖', '35', '2011-07-05 19:57:41');
INSERT INTO `jiangjin` VALUES ('27', '50', 'ding', '51', 'ding2', '0', '17.5', '服务津贴', '17.5', '2011-07-05 20:48:57');
INSERT INTO `jiangjin` VALUES ('28', '50', 'ding', '52', 'ding3', '0', '17.5', '服务津贴', '17.5', '2011-07-05 20:49:02');
INSERT INTO `jiangjin` VALUES ('29', '50', 'ding', '52', 'ding3', '35', '0', '对碰奖', '35', '2011-07-05 20:49:02');
INSERT INTO `jiangjin` VALUES ('30', '50', 'ding', '53', 'niu', '0', '35', '服务津贴', '35', '2011-07-06 09:29:04');
INSERT INTO `jiangjin` VALUES ('31', '50', 'ding', '54', 'niu2', '0', '17.5', '服务津贴', '17.5', '2011-07-06 09:29:11');
INSERT INTO `jiangjin` VALUES ('32', '50', 'ding', '55', 'niu3', '0', '17.5', '服务津贴', '17.5', '2011-07-06 09:30:48');
INSERT INTO `jiangjin` VALUES ('33', '53', 'niu', '55', 'niu3', '35', '0', '对碰奖', '35', '2011-07-06 09:30:48');
INSERT INTO `jiangjin` VALUES ('34', '38', 'xin2', '69', 'wumei', '0', '35', '服务津贴', '35', '2011-07-06 21:54:39');
INSERT INTO `jiangjin` VALUES ('35', '38', 'xin2', '69', 'wumei', '70', '0', '对碰奖', '70', '2011-07-06 21:54:39');
INSERT INTO `jiangjin` VALUES ('36', '38', 'xin2', '70', 'wumei2', '0', '35', '服务津贴', '35', '2011-07-06 21:54:44');
INSERT INTO `jiangjin` VALUES ('37', '38', 'xin2', '70', 'wumei2', '70', '0', '对碰奖', '70', '2011-07-06 21:54:44');
INSERT INTO `jiangjin` VALUES ('38', '38', 'xin2', '71', 'wumei3', '0', '35', '服务津贴', '35', '2011-07-06 21:58:50');
INSERT INTO `jiangjin` VALUES ('39', '69', 'wumei', '71', 'wumei3', '70', '0', '对碰奖', '70', '2011-07-06 21:58:50');
INSERT INTO `jiangjin` VALUES ('40', '38', 'xin2', '71', 'wumei3', '70', '0', '对碰奖', '70', '2011-07-06 21:58:50');
INSERT INTO `jiangjin` VALUES ('41', '31', 'qq1', '74', 'a', '0', '30', '服务津贴', '30', '2011-07-06 22:43:36');
INSERT INTO `jiangjin` VALUES ('42', '31', 'qq1', '74', 'a', '35', '0', '对碰奖', '35', '2011-07-06 22:43:36');
INSERT INTO `jiangjin` VALUES ('43', '1', 'admin', '74', 'a', '70', '0', '对碰奖', '70', '2011-07-06 22:43:36');
INSERT INTO `jiangjin` VALUES ('44', '31', 'qq1', '75', 'aa', '0', '15', '服务津贴', '15', '2011-07-06 22:48:55');
INSERT INTO `jiangjin` VALUES ('45', '1', 'admin', '75', 'aa', '35', '0', '对碰奖', '35', '2011-07-06 22:48:55');
INSERT INTO `jiangjin` VALUES ('46', '31', 'qq1', '79', 'aaa', '0', '15', '服务津贴', '15', '2011-07-06 23:35:10');
INSERT INTO `jiangjin` VALUES ('47', '74', 'a', '79', 'aaa', '35', '0', '对碰奖', '35', '2011-07-06 23:35:10');
INSERT INTO `jiangjin` VALUES ('48', '1', 'admin', '79', 'aaa', '35', '0', '对碰奖', '35', '2011-07-06 23:35:10');
INSERT INTO `jiangjin` VALUES ('49', '38', 'xin2', '82', 'huanying', '0', '35', '服务津贴', '35', '2011-07-09 16:42:23');
INSERT INTO `jiangjin` VALUES ('50', '38', 'xin2', '82', 'huanying', '35', '0', '对碰奖', '35', '2011-07-09 16:42:23');
INSERT INTO `jiangjin` VALUES ('51', '38', 'xin2', '83', 'huanying2', '0', '35', '服务津贴', '35', '2011-07-09 16:43:05');
INSERT INTO `jiangjin` VALUES ('52', '38', 'xin2', '85', 'huanying3', '0', '35', '服务津贴', '35', '2011-07-09 16:46:52');
INSERT INTO `jiangjin` VALUES ('53', '82', 'huanying', '85', 'huanying3', '70', '0', '对碰奖', '70', '2011-07-09 16:46:52');
INSERT INTO `jiangjin` VALUES ('54', '41', 'srwxd1', '42', 'srwxd2', '0', '15', '服务津贴', '15', '2011-07-10 09:33:27');
INSERT INTO `jiangjin` VALUES ('55', '31', 'qq1', '87', '抉择', '0', '30', '服务津贴', '30', '2011-07-16 11:25:04');
INSERT INTO `jiangjin` VALUES ('56', '31', 'qq1', '87', '抉择', '70', '0', '对碰奖', '70', '2011-07-16 11:25:04');
INSERT INTO `jiangjin` VALUES ('57', '1', 'admin', '87', '抉择', '70', '0', '对碰奖', '70', '2011-07-16 11:25:04');
INSERT INTO `jiangjin` VALUES ('58', '87', '抉择', '88', '刘林', '0', '15', '服务津贴', '15', '2011-07-19 22:20:57');
INSERT INTO `jiangjin` VALUES ('59', '31', 'qq1', '88', '刘林', '35', '0', '对碰奖', '35', '2011-07-19 22:20:57');
INSERT INTO `jiangjin` VALUES ('60', '1', 'admin', '88', '刘林', '35', '0', '对碰奖', '35', '2011-07-19 22:20:57');
INSERT INTO `jiangjin` VALUES ('61', '87', '抉择', '89', '王超', '0', '15', '服务津贴', '15', '2011-07-19 22:30:09');
INSERT INTO `jiangjin` VALUES ('62', '87', '抉择', '89', '王超', '35', '0', '对碰奖', '35', '2011-07-19 22:30:09');
INSERT INTO `jiangjin` VALUES ('63', '31', 'qq1', '89', '王超', '35', '0', '对碰奖', '35', '2011-07-19 22:30:09');
INSERT INTO `jiangjin` VALUES ('64', '1', 'admin', '89', '王超', '35', '0', '对碰奖', '35', '2011-07-19 22:30:09');
INSERT INTO `jiangjin` VALUES ('65', '87', '抉择', '90', '郭丽娜', '0', '30', '服务津贴', '30', '2011-07-19 23:09:44');
INSERT INTO `jiangjin` VALUES ('66', '31', 'qq1', '90', '郭丽娜', '70', '0', '对碰奖', '70', '2011-07-19 23:09:44');
INSERT INTO `jiangjin` VALUES ('67', '1', 'admin', '90', '郭丽娜', '70', '0', '对碰奖', '70', '2011-07-19 23:09:44');
INSERT INTO `jiangjin` VALUES ('68', '31', 'qq1', '98', 'hh1', '0', '15', '服务津贴', '15', '2011-08-12 11:54:27');
INSERT INTO `jiangjin` VALUES ('69', '34', 'qq2', '98', 'hh1', '35', '0', '对碰奖', '35', '2011-08-12 11:54:27');
INSERT INTO `jiangjin` VALUES ('70', '1', 'admin', '98', 'hh1', '35', '0', '对碰奖', '35', '2011-08-12 11:54:27');
INSERT INTO `jiangjin` VALUES ('71', '87', '抉择', '95', '六月流觞', '0', '30', '服务津贴', '30', '2011-08-12 13:16:12');
INSERT INTO `jiangjin` VALUES ('72', '87', '抉择', '95', '六月流觞', '70', '0', '对碰奖', '70', '2011-08-12 13:16:12');
INSERT INTO `jiangjin` VALUES ('73', '31', 'qq1', '95', '六月流觞', '35', '0', '对碰奖', '35', '2011-08-12 13:16:12');
INSERT INTO `jiangjin` VALUES ('74', '1', 'admin', '95', '六月流觞', '70', '0', '对碰奖', '70', '2011-08-12 13:16:12');
INSERT INTO `jiangjin` VALUES ('75', '31', 'qq1', '99', 'yue', '0', '15', '服务津贴', '15', '2011-09-01 12:27:38');
INSERT INTO `jiangjin` VALUES ('76', '30', 'tt1', '100', 'hy1', '0', '80', '服务津贴', '80', '2011-09-01 22:19:26');
INSERT INTO `jiangjin` VALUES ('77', '30', 'tt1', '100', 'hy1', '160', '0', '对碰奖', '160', '2011-09-01 22:19:26');
INSERT INTO `jiangjin` VALUES ('78', '30', 'tt1', '101', 'hy2', '0', '48', '服务津贴', '48', '2011-09-01 22:20:45');
INSERT INTO `jiangjin` VALUES ('79', '30', 'tt1', '101', 'hy2', '80', '0', '对碰奖', '80', '2011-09-01 22:20:45');
INSERT INTO `jiangjin` VALUES ('80', '30', 'tt1', '102', 'hy3', '0', '48', '服务津贴', '48', '2011-09-01 22:20:50');
INSERT INTO `jiangjin` VALUES ('81', '100', 'hy1', '102', 'hy3', '80', '0', '对碰奖', '80', '2011-09-01 22:20:50');
INSERT INTO `jiangjin` VALUES ('82', '30', 'tt1', '102', 'hy3', '80', '0', '对碰奖', '80', '2011-09-01 22:20:50');
INSERT INTO `jiangjin` VALUES ('83', '30', 'tt1', '103', 'zhu1', '0', '80', '服务津贴', '80', '2011-09-01 22:22:10');
INSERT INTO `jiangjin` VALUES ('84', '30', 'tt1', '103', 'zhu1', '160', '0', '对碰奖', '160', '2011-09-01 22:22:10');
INSERT INTO `jiangjin` VALUES ('85', '30', 'tt1', '104', 'zhu2', '0', '48', '服务津贴', '48', '2011-09-01 22:22:16');
INSERT INTO `jiangjin` VALUES ('86', '30', 'tt1', '104', 'zhu2', '80', '0', '对碰奖', '80', '2011-09-01 22:22:16');
INSERT INTO `jiangjin` VALUES ('87', '30', 'tt1', '105', 'zhu3', '0', '48', '服务津贴', '48', '2011-09-01 22:23:06');
INSERT INTO `jiangjin` VALUES ('88', '103', 'zhu1', '105', 'zhu3', '80', '0', '对碰奖', '80', '2011-09-01 22:23:06');
INSERT INTO `jiangjin` VALUES ('89', '30', 'tt1', '105', 'zhu3', '80', '0', '对碰奖', '80', '2011-09-01 22:23:06');
INSERT INTO `jiangjin` VALUES ('90', '87', '抉择', '106', 'YY11', '0', '6', '服务津贴', '6', '2011-09-02 21:20:22');
INSERT INTO `jiangjin` VALUES ('91', '88', '刘林', '106', 'YY11', '6', '0', '对碰奖', '6', '2011-09-02 21:20:22');
INSERT INTO `jiangjin` VALUES ('92', '1', 'admin', '106', 'YY11', '8', '0', '对碰奖', '8', '2011-09-02 21:20:22');
INSERT INTO `jiangjin` VALUES ('93', '87', '抉择', '107', '吕明明', '0', '6', '服务津贴', '6', '2011-09-02 21:35:20');
INSERT INTO `jiangjin` VALUES ('94', '89', '王超', '107', '吕明明', '6', '0', '对碰奖', '6', '2011-09-02 21:35:20');
INSERT INTO `jiangjin` VALUES ('95', '87', '抉择', '107', '吕明明', '8', '0', '对碰奖', '8', '2011-09-02 21:35:20');
INSERT INTO `jiangjin` VALUES ('96', '1', 'admin', '107', '吕明明', '8', '0', '对碰奖', '8', '2011-09-02 21:35:20');
INSERT INTO `jiangjin` VALUES ('97', '87', '抉择', '108', '种瓜得豆', '0', '24', '服务津贴', '24', '2011-09-03 10:17:21');
INSERT INTO `jiangjin` VALUES ('98', '88', '刘林', '108', '种瓜得豆', '24', '0', '对碰奖', '24', '2011-09-03 10:17:21');
INSERT INTO `jiangjin` VALUES ('99', '1', 'admin', '108', '种瓜得豆', '40', '0', '对碰奖', '40', '2011-09-03 10:17:21');
INSERT INTO `jiangjin` VALUES ('100', '99', 'yue', '111', 'wp', '0', '10', '服务津贴', '10', '2011-09-04 13:14:11');
INSERT INTO `jiangjin` VALUES ('101', '31', 'qq1', '112', '东区', '0', '6', '服务津贴', '6', '2011-09-04 16:09:29');
INSERT INTO `jiangjin` VALUES ('102', '99', 'yue', '112', '东区', '6', '0', '对碰奖', '6', '2011-09-04 16:09:29');
INSERT INTO `jiangjin` VALUES ('103', '87', '抉择', '113', '王魁峰', '0', '6', '服务津贴', '6', '2011-09-05 23:06:34');
INSERT INTO `jiangjin` VALUES ('104', '89', '王超', '113', '王魁峰', '6', '0', '对碰奖', '6', '2011-09-05 23:06:34');
INSERT INTO `jiangjin` VALUES ('105', '87', '抉择', '113', '王魁峰', '8', '0', '对碰奖', '8', '2011-09-05 23:06:34');
INSERT INTO `jiangjin` VALUES ('106', '1', 'admin', '113', '王魁峰', '8', '0', '对碰奖', '8', '2011-09-05 23:06:34');
INSERT INTO `jiangjin` VALUES ('107', '37', 'xin1', '114', '无敌', '0', '6', '服务津贴', '6', '2011-09-07 14:31:26');
INSERT INTO `jiangjin` VALUES ('108', '37', 'xin1', '114', '无敌', '8', '0', '对碰奖', '8', '2011-09-07 14:31:26');
INSERT INTO `jiangjin` VALUES ('109', '37', 'xin1', '115', '游龙', '0', '30', '服务津贴', '30', '2011-09-09 18:03:09');
INSERT INTO `jiangjin` VALUES ('110', '37', 'xin1', '115', '游龙', '80', '0', '对碰奖', '80', '2011-09-09 18:03:09');
INSERT INTO `jiangjin` VALUES ('111', '37', 'xin1', '116', '游龙1', '0', '15', '服务津贴', '15', '2011-09-09 18:03:14');
INSERT INTO `jiangjin` VALUES ('112', '37', 'xin1', '116', '游龙1', '40', '0', '对碰奖', '40', '2011-09-09 18:03:14');
INSERT INTO `jiangjin` VALUES ('113', '37', 'xin1', '117', '游龙2', '0', '15', '服务津贴', '15', '2011-09-09 18:04:18');
INSERT INTO `jiangjin` VALUES ('114', '115', '游龙', '117', '游龙2', '40', '0', '对碰奖', '40', '2011-09-09 18:04:18');
INSERT INTO `jiangjin` VALUES ('115', '37', 'xin1', '117', '游龙2', '40', '0', '对碰奖', '40', '2011-09-09 18:04:18');
INSERT INTO `jiangjin` VALUES ('116', '87', '抉择', '119', '今相见', '0', '6', '服务津贴', '6', '2011-09-11 08:08:32');
INSERT INTO `jiangjin` VALUES ('117', '88', '刘林', '119', '今相见', '6', '0', '对碰奖', '6', '2011-09-11 08:08:32');
INSERT INTO `jiangjin` VALUES ('118', '1', 'admin', '119', '今相见', '8', '0', '对碰奖', '8', '2011-09-11 08:08:32');
INSERT INTO `jiangjin` VALUES ('119', '37', 'xin1', '120', '成功的路', '0', '6', '服务津贴', '6', '2011-09-11 11:36:21');
INSERT INTO `jiangjin` VALUES ('120', '37', 'xin1', '120', '成功的路', '8', '0', '对碰奖', '8', '2011-09-11 11:36:21');
INSERT INTO `jiangjin` VALUES ('121', '120', '成功的路', '125', 'b1', '0', '0', '服务津贴', '0', '2011-09-11 15:17:58');
INSERT INTO `jiangjin` VALUES ('122', '37', 'xin1', '125', 'b1', '2', '0', '对碰奖', '2', '2011-09-11 15:17:58');
INSERT INTO `jiangjin` VALUES ('123', '37', 'xin1', '127', '蓝天', '0', '30', '服务津贴', '30', '2011-09-11 22:08:10');
INSERT INTO `jiangjin` VALUES ('124', '37', 'xin1', '127', '蓝天', '80', '0', '对碰奖', '80', '2011-09-11 22:08:10');
INSERT INTO `jiangjin` VALUES ('125', '35', 'qq3', '130', 'qq5', '0', '30', '服务津贴', '30', '2011-09-12 11:55:37');
INSERT INTO `jiangjin` VALUES ('126', '1', 'admin', '130', 'qq5', '80', '0', '对碰奖', '80', '2011-09-12 11:55:37');
INSERT INTO `jiangjin` VALUES ('127', '35', 'qq3', '129', 'qq4', '0', '15', '服务津贴', '15', '2011-09-12 11:56:08');
INSERT INTO `jiangjin` VALUES ('128', '35', 'qq3', '129', 'qq4', '40', '0', '对碰奖', '40', '2011-09-12 11:56:08');
INSERT INTO `jiangjin` VALUES ('129', '1', 'admin', '129', 'qq4', '40', '0', '对碰奖', '40', '2011-09-12 11:56:08');
INSERT INTO `jiangjin` VALUES ('130', '31', 'qq1', '135', 'haha', '0', '15', '服务津贴', '15', '2011-09-13 21:22:55');
INSERT INTO `jiangjin` VALUES ('131', '34', 'qq2', '135', 'haha', '30', '0', '对碰奖', '30', '2011-09-13 21:22:55');
INSERT INTO `jiangjin` VALUES ('132', '31', 'qq1', '135', 'haha', '40', '0', '对碰奖', '40', '2011-09-13 21:22:55');
INSERT INTO `jiangjin` VALUES ('133', '1', 'admin', '135', 'haha', '40', '0', '对碰奖', '40', '2011-09-13 21:22:55');
INSERT INTO `jiangjin` VALUES ('134', '87', '抉择', '138', '郭芳', '0', '30', '服务津贴', '30', '2011-09-14 15:18:16');
INSERT INTO `jiangjin` VALUES ('135', '107', '吕明明', '138', '郭芳', '12', '0', '对碰奖', '12', '2011-09-14 15:18:16');
INSERT INTO `jiangjin` VALUES ('136', '89', '王超', '138', '郭芳', '36', '0', '对碰奖', '36', '2011-09-14 15:18:16');
INSERT INTO `jiangjin` VALUES ('137', '87', '抉择', '138', '郭芳', '80', '0', '对碰奖', '80', '2011-09-14 15:18:16');
INSERT INTO `jiangjin` VALUES ('138', '1', 'admin', '138', '郭芳', '80', '0', '对碰奖', '80', '2011-09-14 15:18:16');
INSERT INTO `jiangjin` VALUES ('139', '35', 'qq3', '140', '马薪', '0', '30', '服务津贴', '30', '2011-09-17 14:16:29');
INSERT INTO `jiangjin` VALUES ('140', '35', 'qq3', '140', '马薪', '80', '0', '对碰奖', '80', '2011-09-17 14:16:29');
INSERT INTO `jiangjin` VALUES ('141', '1', 'admin', '140', '马薪', '80', '0', '对碰奖', '80', '2011-09-17 14:16:29');
INSERT INTO `jiangjin` VALUES ('142', '35', 'qq3', '141', '马薪1', '0', '15', '服务津贴', '15', '2011-09-17 14:16:34');
INSERT INTO `jiangjin` VALUES ('143', '35', 'qq3', '141', '马薪1', '40', '0', '对碰奖', '40', '2011-09-17 14:16:34');
INSERT INTO `jiangjin` VALUES ('144', '1', 'admin', '141', '马薪1', '40', '0', '对碰奖', '40', '2011-09-17 14:16:34');
INSERT INTO `jiangjin` VALUES ('145', '35', 'qq3', '142', '马薪2', '0', '15', '服务津贴', '15', '2011-09-17 14:19:33');
INSERT INTO `jiangjin` VALUES ('146', '140', '马薪', '142', '马薪2', '30', '0', '对碰奖', '30', '2011-09-17 14:19:33');
INSERT INTO `jiangjin` VALUES ('147', '35', 'qq3', '142', '马薪2', '40', '0', '对碰奖', '40', '2011-09-17 14:19:33');
INSERT INTO `jiangjin` VALUES ('148', '1', 'admin', '142', '马薪2', '40', '0', '对碰奖', '40', '2011-09-17 14:19:33');
INSERT INTO `jiangjin` VALUES ('149', '35', 'qq3', '143', '张志明', '0', '15', '服务津贴', '15', '2011-09-18 15:42:54');
INSERT INTO `jiangjin` VALUES ('150', '35', 'qq3', '143', '张志明', '40', '0', '对碰奖', '40', '2011-09-18 15:42:54');
INSERT INTO `jiangjin` VALUES ('151', '1', 'admin', '143', '张志明', '40', '0', '对碰奖', '40', '2011-09-18 15:42:54');
INSERT INTO `jiangjin` VALUES ('152', '35', 'qq3', '146', '陈永旺', '0', '30', '服务津贴', '30', '2011-09-19 17:39:36');
INSERT INTO `jiangjin` VALUES ('153', '140', '马薪', '146', '陈永旺', '30', '0', '对碰奖', '30', '2011-09-19 17:39:36');
INSERT INTO `jiangjin` VALUES ('154', '35', 'qq3', '146', '陈永旺', '80', '0', '对碰奖', '80', '2011-09-19 17:39:36');
INSERT INTO `jiangjin` VALUES ('155', '1', 'admin', '146', '陈永旺', '80', '0', '对碰奖', '80', '2011-09-19 17:39:36');
INSERT INTO `jiangjin` VALUES ('156', '35', 'qq3', '148', '冯涛', '0', '30', '服务津贴', '30', '2011-09-21 12:22:38');
INSERT INTO `jiangjin` VALUES ('157', '140', '马薪', '148', '冯涛', '30', '0', '对碰奖', '30', '2011-09-21 12:22:38');
INSERT INTO `jiangjin` VALUES ('158', '35', 'qq3', '148', '冯涛', '80', '0', '对碰奖', '80', '2011-09-21 12:22:38');
INSERT INTO `jiangjin` VALUES ('159', '1', 'admin', '148', '冯涛', '80', '0', '对碰奖', '80', '2011-09-21 12:22:38');
INSERT INTO `jiangjin` VALUES ('160', '37', 'xin1', '149', '冷风', '0', '6', '服务津贴', '6', '2011-09-21 14:53:03');
INSERT INTO `jiangjin` VALUES ('161', '37', 'xin1', '149', '冷风', '16', '0', '对碰奖', '16', '2011-09-21 14:53:03');
INSERT INTO `jiangjin` VALUES ('162', '37', 'xin1', '118', '盛夏光年', '0', '30', '服务津贴', '30', '2011-09-21 17:23:02');
INSERT INTO `jiangjin` VALUES ('163', '37', 'xin1', '118', '盛夏光年', '80', '0', '对碰奖', '80', '2011-09-21 17:23:02');
INSERT INTO `jiangjin` VALUES ('164', '37', 'xin1', '150', '1', '0', '1.5', '服务津贴', '1.5', '2011-09-21 20:07:56');
INSERT INTO `jiangjin` VALUES ('165', '37', 'xin1', '150', '1', '4', '0', '对碰奖', '4', '2011-09-21 20:07:56');
INSERT INTO `jiangjin` VALUES ('166', '118', '盛夏光年', '152', '666666', '0', '25', '服务津贴', '25', '2011-09-21 21:54:14');
INSERT INTO `jiangjin` VALUES ('167', '118', '盛夏光年', '152', '666666', '60', '0', '对碰奖', '60', '2011-09-21 21:54:14');
INSERT INTO `jiangjin` VALUES ('168', '37', 'xin1', '152', '666666', '80', '0', '对碰奖', '80', '2011-09-21 21:54:14');
INSERT INTO `jiangjin` VALUES ('169', '120', '成功的路', '156', 'STAR88', '0', '0', '服务津贴', '0', '2011-09-23 18:47:04');
INSERT INTO `jiangjin` VALUES ('170', '37', 'xin1', '156', 'STAR88', '16', '0', '对碰奖', '16', '2011-09-23 18:47:04');
INSERT INTO `jiangjin` VALUES ('171', '118', '盛夏光年', '158', '黄从江', '0', '25', '服务津贴', '25', '2011-09-23 20:46:32');
INSERT INTO `jiangjin` VALUES ('172', '125', 'b1', '158', '黄从江', '60', '0', '对碰奖', '60', '2011-09-23 20:46:32');
INSERT INTO `jiangjin` VALUES ('173', '37', 'xin1', '158', '黄从江', '80', '0', '对碰奖', '80', '2011-09-23 20:46:32');
INSERT INTO `jiangjin` VALUES ('174', '35', 'qq3', '159', '马薪3', '0', '6', '服务津贴', '6', '2011-09-23 21:16:27');
INSERT INTO `jiangjin` VALUES ('175', '142', '马薪2', '159', '马薪3', '12', '0', '对碰奖', '12', '2011-09-23 21:16:27');
INSERT INTO `jiangjin` VALUES ('176', '140', '马薪', '159', '马薪3', '12', '0', '对碰奖', '12', '2011-09-23 21:16:27');
INSERT INTO `jiangjin` VALUES ('177', '35', 'qq3', '159', '马薪3', '16', '0', '对碰奖', '16', '2011-09-23 21:16:27');
INSERT INTO `jiangjin` VALUES ('178', '1', 'admin', '159', '马薪3', '16', '0', '对碰奖', '16', '2011-09-23 21:16:27');
INSERT INTO `jiangjin` VALUES ('179', '143', '张志明', '160', '顾天云', '0', '4', '服务津贴', '4', '2011-09-24 10:58:48');
INSERT INTO `jiangjin` VALUES ('180', '143', '张志明', '160', '顾天云', '12', '0', '对碰奖', '12', '2011-09-24 10:58:48');
INSERT INTO `jiangjin` VALUES ('181', '35', 'qq3', '160', '顾天云', '16', '0', '对碰奖', '16', '2011-09-24 10:58:48');
INSERT INTO `jiangjin` VALUES ('182', '1', 'admin', '160', '顾天云', '16', '0', '对碰奖', '16', '2011-09-24 10:58:48');
INSERT INTO `jiangjin` VALUES ('183', '118', '盛夏光年', '161', 'lijinjin', '0', '25', '服务津贴', '25', '2011-09-24 13:35:54');
INSERT INTO `jiangjin` VALUES ('184', '118', '盛夏光年', '161', 'lijinjin', '60', '0', '对碰奖', '60', '2011-09-24 13:35:54');
INSERT INTO `jiangjin` VALUES ('185', '37', 'xin1', '161', 'lijinjin', '80', '0', '对碰奖', '80', '2011-09-24 13:35:54');
INSERT INTO `jiangjin` VALUES ('186', '140', '马薪', '165', '曹海涛', '0', '12.5', '服务津贴', '12.5', '2011-09-26 12:44:54');
INSERT INTO `jiangjin` VALUES ('187', '142', '马薪2', '165', '曹海涛', '30', '0', '对碰奖', '30', '2011-09-26 12:44:54');
INSERT INTO `jiangjin` VALUES ('188', '140', '马薪', '165', '曹海涛', '30', '0', '对碰奖', '30', '2011-09-26 12:44:54');
INSERT INTO `jiangjin` VALUES ('189', '35', 'qq3', '165', '曹海涛', '40', '0', '对碰奖', '40', '2011-09-26 12:44:54');
INSERT INTO `jiangjin` VALUES ('190', '1', 'admin', '165', '曹海涛', '40', '0', '对碰奖', '40', '2011-09-26 12:44:54');
INSERT INTO `jiangjin` VALUES ('191', '87', '抉择', '166', '崔宗仁', '0', '6', '服务津贴', '6', '2011-09-26 22:52:09');
INSERT INTO `jiangjin` VALUES ('192', '89', '王超', '166', '崔宗仁', '12', '0', '对碰奖', '12', '2011-09-26 22:52:09');
INSERT INTO `jiangjin` VALUES ('193', '87', '抉择', '166', '崔宗仁', '16', '0', '对碰奖', '16', '2011-09-26 22:52:09');
INSERT INTO `jiangjin` VALUES ('194', '1', 'admin', '166', '崔宗仁', '16', '0', '对碰奖', '16', '2011-09-26 22:52:09');
INSERT INTO `jiangjin` VALUES ('195', '143', '张志明', '167', '小希', '0', '4', '服务津贴', '4', '2011-09-27 10:30:58');
INSERT INTO `jiangjin` VALUES ('196', '35', 'qq3', '167', '小希', '16', '0', '对碰奖', '16', '2011-09-27 10:30:58');
INSERT INTO `jiangjin` VALUES ('197', '1', 'admin', '167', '小希', '16', '0', '对碰奖', '16', '2011-09-27 10:30:58');
INSERT INTO `jiangjin` VALUES ('198', '37', 'xin1', '169', '冷风1', '0', '6', '服务津贴', '6', '2011-09-28 13:39:18');
INSERT INTO `jiangjin` VALUES ('199', '149', '冷风', '169', '冷风1', '6', '0', '对碰奖', '6', '2011-09-28 13:39:18');
INSERT INTO `jiangjin` VALUES ('200', '37', 'xin1', '169', '冷风1', '8', '0', '对碰奖', '8', '2011-09-28 13:39:18');
INSERT INTO `jiangjin` VALUES ('201', '35', 'qq3', '175', '李聪', '0', '15', '服务津贴', '15', '2011-09-29 14:46:18');
INSERT INTO `jiangjin` VALUES ('202', '129', 'qq4', '175', '李聪', '30', '0', '对碰奖', '30', '2011-09-29 14:46:18');
INSERT INTO `jiangjin` VALUES ('203', '35', 'qq3', '175', '李聪', '40', '0', '对碰奖', '40', '2011-09-29 14:46:18');
INSERT INTO `jiangjin` VALUES ('204', '1', 'admin', '175', '李聪', '40', '0', '对碰奖', '40', '2011-09-29 14:46:18');
INSERT INTO `jiangjin` VALUES ('205', '35', 'qq3', '176', '李聪1', '0', '7.5', '服务津贴', '7.5', '2011-09-29 14:47:37');
INSERT INTO `jiangjin` VALUES ('206', '129', 'qq4', '176', '李聪1', '15', '0', '对碰奖', '15', '2011-09-29 14:47:37');
INSERT INTO `jiangjin` VALUES ('207', '35', 'qq3', '176', '李聪1', '20', '0', '对碰奖', '20', '2011-09-29 14:47:37');
INSERT INTO `jiangjin` VALUES ('208', '1', 'admin', '176', '李聪1', '20', '0', '对碰奖', '20', '2011-09-29 14:47:37');
INSERT INTO `jiangjin` VALUES ('209', '35', 'qq3', '177', '李聪2', '0', '7.5', '服务津贴', '7.5', '2011-09-29 14:47:42');
INSERT INTO `jiangjin` VALUES ('210', '175', '李聪', '177', '李聪2', '15', '0', '对碰奖', '15', '2011-09-29 14:47:42');
INSERT INTO `jiangjin` VALUES ('211', '129', 'qq4', '177', '李聪2', '15', '0', '对碰奖', '15', '2011-09-29 14:47:42');
INSERT INTO `jiangjin` VALUES ('212', '35', 'qq3', '177', '李聪2', '16', '0', '对碰奖', '16', '2011-09-29 14:47:42');
INSERT INTO `jiangjin` VALUES ('213', '1', 'admin', '177', '李聪2', '20', '0', '对碰奖', '20', '2011-09-29 14:47:42');
INSERT INTO `jiangjin` VALUES ('214', '118', '盛夏光年', '162', '枫', '0', '40', '服务津贴', '40', '2011-09-29 22:04:51');
INSERT INTO `jiangjin` VALUES ('215', '118', '盛夏光年', '162', '枫', '76', '0', '对碰奖', '76', '2011-09-29 22:04:51');
INSERT INTO `jiangjin` VALUES ('216', '37', 'xin1', '162', '枫', '80', '0', '对碰奖', '80', '2011-09-29 22:04:51');
INSERT INTO `jiangjin` VALUES ('217', '118', '盛夏光年', '153', '999999', '0', '10', '服务津贴', '10', '2011-10-07 11:28:50');
INSERT INTO `jiangjin` VALUES ('218', '152', '666666', '153', '999999', '15', '0', '对碰奖', '15', '2011-10-07 11:28:50');
INSERT INTO `jiangjin` VALUES ('219', '37', 'xin1', '153', '999999', '20', '0', '对碰奖', '20', '2011-10-07 11:28:50');
INSERT INTO `jiangjin` VALUES ('220', '127', '蓝天', '178', '蓝天A', '0', '15', '服务津贴', '15', '2011-10-08 17:51:09');
INSERT INTO `jiangjin` VALUES ('221', '127', '蓝天', '178', '蓝天A', '26', '0', '对碰奖', '26', '2011-10-08 17:51:09');
INSERT INTO `jiangjin` VALUES ('222', '118', '盛夏光年', '178', '蓝天A', '24', '0', '对碰奖', '24', '2011-10-08 17:51:09');
INSERT INTO `jiangjin` VALUES ('223', '37', 'xin1', '178', '蓝天A', '40', '0', '对碰奖', '40', '2011-10-08 17:51:09');
INSERT INTO `jiangjin` VALUES ('224', '127', '蓝天', '181', '蓝天B', '0', '7.5', '服务津贴', '7.5', '2011-10-08 17:51:54');
INSERT INTO `jiangjin` VALUES ('225', '37', 'xin1', '181', '蓝天B', '20', '0', '对碰奖', '20', '2011-10-08 17:51:54');
INSERT INTO `jiangjin` VALUES ('226', '127', '蓝天', '180', '蓝天C', '0', '7.5', '服务津贴', '7.5', '2011-10-08 17:52:40');
INSERT INTO `jiangjin` VALUES ('227', '127', '蓝天', '180', '蓝天C', '20', '0', '对碰奖', '20', '2011-10-08 17:52:40');
INSERT INTO `jiangjin` VALUES ('228', '37', 'xin1', '180', '蓝天C', '20', '0', '对碰奖', '20', '2011-10-08 17:52:40');
INSERT INTO `jiangjin` VALUES ('229', '140', '马薪', '183', '冯涛1', '0', '5', '服务津贴', '5', '2011-10-08 19:32:04');
INSERT INTO `jiangjin` VALUES ('230', '1', 'admin', '183', '冯涛1', '8', '0', '对碰奖', '8', '2011-10-08 19:32:04');
INSERT INTO `jiangjin` VALUES ('231', '143', '张志明', '184', '帅', '0', '4', '服务津贴', '4', '2011-10-08 20:58:18');
INSERT INTO `jiangjin` VALUES ('232', '143', '张志明', '184', '帅', '6', '0', '对碰奖', '6', '2011-10-08 20:58:18');
INSERT INTO `jiangjin` VALUES ('233', '1', 'admin', '184', '帅', '8', '0', '对碰奖', '8', '2011-10-08 20:58:18');
INSERT INTO `jiangjin` VALUES ('234', '127', '蓝天', '186', '银行', '0', '15', '服务津贴', '15', '2011-10-09 14:56:18');
INSERT INTO `jiangjin` VALUES ('235', '178', '蓝天A', '186', '银行', '15', '0', '对碰奖', '15', '2011-10-09 14:56:18');
INSERT INTO `jiangjin` VALUES ('236', '37', 'xin1', '186', '银行', '40', '0', '对碰奖', '40', '2011-10-09 14:56:18');
INSERT INTO `jiangjin` VALUES ('237', '127', '蓝天', '187', '蓝天1', '0', '7.5', '服务津贴', '7.5', '2011-10-09 14:56:42');
INSERT INTO `jiangjin` VALUES ('238', '37', 'xin1', '187', '蓝天1', '20', '0', '对碰奖', '20', '2011-10-09 14:56:42');
INSERT INTO `jiangjin` VALUES ('239', '127', '蓝天', '188', '蓝天2', '0', '7.5', '服务津贴', '7.5', '2011-10-09 14:56:51');
INSERT INTO `jiangjin` VALUES ('240', '127', '蓝天', '188', '蓝天2', '20', '0', '对碰奖', '20', '2011-10-09 14:56:51');
INSERT INTO `jiangjin` VALUES ('241', '37', 'xin1', '188', '蓝天2', '20', '0', '对碰奖', '20', '2011-10-09 14:56:51');
INSERT INTO `jiangjin` VALUES ('242', '35', 'qq3', '189', '胡世明', '0', '7.5', '服务津贴', '7.5', '2011-10-10 12:08:13');
INSERT INTO `jiangjin` VALUES ('243', '35', 'qq3', '189', '胡世明', '20', '0', '对碰奖', '20', '2011-10-10 12:08:13');
INSERT INTO `jiangjin` VALUES ('244', '1', 'admin', '189', '胡世明', '20', '0', '对碰奖', '20', '2011-10-10 12:08:13');
INSERT INTO `jiangjin` VALUES ('245', '118', '盛夏光年', '190', '18737552173', '0', '20', '服务津贴', '20', '2011-10-10 15:52:19');
INSERT INTO `jiangjin` VALUES ('246', '118', '盛夏光年', '190', '18737552173', '40', '0', '对碰奖', '40', '2011-10-10 15:52:19');
INSERT INTO `jiangjin` VALUES ('247', '37', 'xin1', '190', '18737552173', '40', '0', '对碰奖', '40', '2011-10-10 15:52:19');
INSERT INTO `jiangjin` VALUES ('248', '118', '盛夏光年', '191', '18790260106', '0', '10', '服务津贴', '10', '2011-10-10 15:54:20');
INSERT INTO `jiangjin` VALUES ('249', '118', '盛夏光年', '191', '18790260106', '20', '0', '对碰奖', '20', '2011-10-10 15:54:20');
INSERT INTO `jiangjin` VALUES ('250', '37', 'xin1', '191', '18790260106', '20', '0', '对碰奖', '20', '2011-10-10 15:54:20');
INSERT INTO `jiangjin` VALUES ('251', '118', '盛夏光年', '192', '13523752198', '0', '10', '服务津贴', '10', '2011-10-10 15:54:27');
INSERT INTO `jiangjin` VALUES ('252', '190', '18737552173', '192', '13523752198', '15', '0', '对碰奖', '15', '2011-10-10 15:54:27');
INSERT INTO `jiangjin` VALUES ('253', '118', '盛夏光年', '192', '13523752198', '20', '0', '对碰奖', '20', '2011-10-10 15:54:27');
INSERT INTO `jiangjin` VALUES ('254', '37', 'xin1', '192', '13523752198', '20', '0', '对碰奖', '20', '2011-10-10 15:54:27');
INSERT INTO `jiangjin` VALUES ('255', '118', '盛夏光年', '151', 'xiaosi', '0', '20', '服务津贴', '20', '2011-10-10 16:55:11');
INSERT INTO `jiangjin` VALUES ('256', '118', '盛夏光年', '151', 'xiaosi', '40', '0', '对碰奖', '40', '2011-10-10 16:55:11');
INSERT INTO `jiangjin` VALUES ('257', '37', 'xin1', '151', 'xiaosi', '40', '0', '对碰奖', '40', '2011-10-10 16:55:11');
INSERT INTO `jiangjin` VALUES ('258', '35', 'qq3', '193', 'ZGH', '0', '7.5', '服务津贴', '7.5', '2011-10-10 21:15:01');
INSERT INTO `jiangjin` VALUES ('259', '1', 'admin', '193', 'ZGH', '20', '0', '对碰奖', '20', '2011-10-10 21:15:01');
INSERT INTO `jiangjin` VALUES ('260', '152', '666666', '154', '888888', '0', '12.5', '服务津贴', '12.5', '2011-10-14 12:12:18');
INSERT INTO `jiangjin` VALUES ('261', '118', '盛夏光年', '154', '888888', '32', '0', '对碰奖', '32', '2011-10-14 12:12:18');
INSERT INTO `jiangjin` VALUES ('262', '37', 'xin1', '154', '888888', '40', '0', '对碰奖', '40', '2011-10-14 12:12:18');
INSERT INTO `jiangjin` VALUES ('263', '189', '胡世明', '198', '传奇M', '0', '5', '服务津贴', '5', '2011-10-16 12:26:59');
INSERT INTO `jiangjin` VALUES ('264', '189', '胡世明', '198', '传奇M', '15', '0', '对碰奖', '15', '2011-10-16 12:26:59');
INSERT INTO `jiangjin` VALUES ('265', '1', 'admin', '198', '传奇M', '20', '0', '对碰奖', '20', '2011-10-16 12:26:59');
INSERT INTO `jiangjin` VALUES ('266', '189', '胡世明', '200', '轩168', '0', '1', '服务津贴', '1', '2011-10-16 18:45:50');
INSERT INTO `jiangjin` VALUES ('267', '1', 'admin', '200', '轩168', '2', '0', '对碰奖', '2', '2011-10-16 18:45:50');
INSERT INTO `jiangjin` VALUES ('268', '189', '胡世明', '201', '一一123', '0', '5', '服务津贴', '5', '2011-10-16 20:43:24');
INSERT INTO `jiangjin` VALUES ('269', '198', '传奇M', '201', '一一123', '1.5', '0', '对碰奖', '1.5', '2011-10-16 20:43:24');
INSERT INTO `jiangjin` VALUES ('270', '1', 'admin', '201', '一一123', '20', '0', '对碰奖', '20', '2011-10-16 20:43:24');
INSERT INTO `jiangjin` VALUES ('271', '35', 'qq3', '202', '胡俊', '0', '15', '服务津贴', '15', '2011-10-16 20:48:27');
INSERT INTO `jiangjin` VALUES ('272', '141', '马薪1', '202', '胡俊', '30', '0', '对碰奖', '30', '2011-10-16 20:48:27');
INSERT INTO `jiangjin` VALUES ('273', '35', 'qq3', '202', '胡俊', '40', '0', '对碰奖', '40', '2011-10-16 20:48:27');
INSERT INTO `jiangjin` VALUES ('274', '1', 'admin', '202', '胡俊', '40', '0', '对碰奖', '40', '2011-10-16 20:48:27');
INSERT INTO `jiangjin` VALUES ('275', '35', 'qq3', '203', '胡俊1', '0', '7.5', '服务津贴', '7.5', '2011-10-16 20:48:32');
INSERT INTO `jiangjin` VALUES ('276', '141', '马薪1', '203', '胡俊1', '15', '0', '对碰奖', '15', '2011-10-16 20:48:32');
INSERT INTO `jiangjin` VALUES ('277', '35', 'qq3', '203', '胡俊1', '20', '0', '对碰奖', '20', '2011-10-16 20:48:32');
INSERT INTO `jiangjin` VALUES ('278', '1', 'admin', '203', '胡俊1', '20', '0', '对碰奖', '20', '2011-10-16 20:48:32');
INSERT INTO `jiangjin` VALUES ('279', '35', 'qq3', '204', '胡俊2', '0', '7.5', '服务津贴', '7.5', '2011-10-16 20:53:29');
INSERT INTO `jiangjin` VALUES ('280', '202', '胡俊', '204', '胡俊2', '15', '0', '对碰奖', '15', '2011-10-16 20:53:29');
INSERT INTO `jiangjin` VALUES ('281', '141', '马薪1', '204', '胡俊2', '15', '0', '对碰奖', '15', '2011-10-16 20:53:29');
INSERT INTO `jiangjin` VALUES ('282', '35', 'qq3', '204', '胡俊2', '2', '0', '对碰奖', '2', '2011-10-16 20:53:29');
INSERT INTO `jiangjin` VALUES ('283', '1', 'admin', '204', '胡俊2', '20', '0', '对碰奖', '20', '2011-10-16 20:53:29');
INSERT INTO `jiangjin` VALUES ('284', '35', 'qq3', '205', '王亚龙', '0', '15', '服务津贴', '15', '2011-10-16 20:53:34');
INSERT INTO `jiangjin` VALUES ('285', '141', '马薪1', '205', '王亚龙', '9', '0', '对碰奖', '9', '2011-10-16 20:53:34');
INSERT INTO `jiangjin` VALUES ('286', '1', 'admin', '205', '王亚龙', '40', '0', '对碰奖', '40', '2011-10-16 20:53:34');
INSERT INTO `jiangjin` VALUES ('287', '35', 'qq3', '206', '王亚龙1', '0', '7.5', '服务津贴', '7.5', '2011-10-16 21:00:02');
INSERT INTO `jiangjin` VALUES ('288', '1', 'admin', '206', '王亚龙1', '20', '0', '对碰奖', '20', '2011-10-16 21:00:02');
INSERT INTO `jiangjin` VALUES ('289', '35', 'qq3', '207', '王亚龙2', '0', '7.5', '服务津贴', '7.5', '2011-10-16 21:00:07');
INSERT INTO `jiangjin` VALUES ('290', '205', '王亚龙', '207', '王亚龙2', '15', '0', '对碰奖', '15', '2011-10-16 21:00:07');
INSERT INTO `jiangjin` VALUES ('291', '1', 'admin', '207', '王亚龙2', '20', '0', '对碰奖', '20', '2011-10-16 21:00:07');
INSERT INTO `jiangjin` VALUES ('292', '189', '胡世明', '208', '挑战者2', '0', '5', '服务津贴', '5', '2011-10-17 19:33:35');
INSERT INTO `jiangjin` VALUES ('293', '189', '胡世明', '208', '挑战者2', '15', '0', '对碰奖', '15', '2011-10-17 19:33:35');
INSERT INTO `jiangjin` VALUES ('294', '35', 'qq3', '208', '挑战者2', '20', '0', '对碰奖', '20', '2011-10-17 19:33:35');
INSERT INTO `jiangjin` VALUES ('295', '1', 'admin', '208', '挑战者2', '20', '0', '对碰奖', '20', '2011-10-17 19:33:35');
INSERT INTO `jiangjin` VALUES ('296', '189', '胡世明', '209', '二二123', '0', '5', '服务津贴', '5', '2011-10-17 20:04:59');
INSERT INTO `jiangjin` VALUES ('297', '35', 'qq3', '209', '二二123', '20', '0', '对碰奖', '20', '2011-10-17 20:04:59');
INSERT INTO `jiangjin` VALUES ('298', '1', 'admin', '209', '二二123', '20', '0', '对碰奖', '20', '2011-10-17 20:04:59');
INSERT INTO `jiangjin` VALUES ('299', '35', 'qq3', '210', 'LX', '0', '15', '服务津贴', '15', '2011-10-17 21:14:41');
INSERT INTO `jiangjin` VALUES ('300', '193', 'ZGH', '210', 'LX', '15', '0', '对碰奖', '15', '2011-10-17 21:14:41');
INSERT INTO `jiangjin` VALUES ('301', '189', '胡世明', '210', 'LX', '16.5', '0', '对碰奖', '16.5', '2011-10-17 21:14:41');
INSERT INTO `jiangjin` VALUES ('302', '35', 'qq3', '210', 'LX', '40', '0', '对碰奖', '40', '2011-10-17 21:14:41');
INSERT INTO `jiangjin` VALUES ('303', '1', 'admin', '210', 'LX', '40', '0', '对碰奖', '40', '2011-10-17 21:14:41');
INSERT INTO `jiangjin` VALUES ('304', '35', 'qq3', '211', 'LX1', '0', '7.5', '服务津贴', '7.5', '2011-10-17 21:14:47');
INSERT INTO `jiangjin` VALUES ('305', '35', 'qq3', '211', 'LX1', '18', '0', '对碰奖', '18', '2011-10-17 21:14:47');
INSERT INTO `jiangjin` VALUES ('306', '1', 'admin', '211', 'LX1', '20', '0', '对碰奖', '20', '2011-10-17 21:14:47');
INSERT INTO `jiangjin` VALUES ('307', '35', 'qq3', '212', 'LX2', '0', '7.5', '服务津贴', '7.5', '2011-10-17 21:15:50');
INSERT INTO `jiangjin` VALUES ('308', '210', 'LX', '212', 'LX2', '15', '0', '对碰奖', '15', '2011-10-17 21:15:50');
INSERT INTO `jiangjin` VALUES ('309', '1', 'admin', '212', 'LX2', '20', '0', '对碰奖', '20', '2011-10-17 21:15:50');
INSERT INTO `jiangjin` VALUES ('310', '118', '盛夏光年', '215', 'java', '0', '8', '服务津贴', '8', '2011-10-20 22:49:57');
INSERT INTO `jiangjin` VALUES ('311', '33', 'tt3', '215', 'java', '16', '0', '对碰奖', '16', '2011-10-20 22:49:57');
INSERT INTO `jiangjin` VALUES ('312', '30', 'tt1', '215', 'java', '16', '0', '对碰奖', '16', '2011-10-20 22:49:57');
INSERT INTO `jiangjin` VALUES ('313', '210', 'LX', '222', 'ZZJ', '0', '5', '服务津贴', '5', '2011-10-24 18:11:21');
INSERT INTO `jiangjin` VALUES ('314', '1', 'admin', '222', 'ZZJ', '16', '0', '对碰奖', '16', '2011-10-24 18:11:21');
INSERT INTO `jiangjin` VALUES ('315', '118', '盛夏光年', '224', 'hui', '0', '8', '服务津贴', '8', '2011-10-25 21:30:36');
INSERT INTO `jiangjin` VALUES ('316', '33', 'tt3', '224', 'hui', '16', '0', '对碰奖', '16', '2011-10-25 21:30:36');
INSERT INTO `jiangjin` VALUES ('317', '30', 'tt1', '224', 'hui', '16', '0', '对碰奖', '16', '2011-10-25 21:30:36');
INSERT INTO `jiangjin` VALUES ('318', '35', 'qq3', '225', 'GYL', '0', '6', '服务津贴', '6', '2011-10-26 12:47:23');
INSERT INTO `jiangjin` VALUES ('319', '210', 'LX', '225', 'GYL', '12', '0', '对碰奖', '12', '2011-10-26 12:47:23');
INSERT INTO `jiangjin` VALUES ('320', '1', 'admin', '225', 'GYL', '16', '0', '对碰奖', '16', '2011-10-26 12:47:23');
INSERT INTO `jiangjin` VALUES ('321', '189', '胡世明', '226', '传奇N', '0', '4', '服务津贴', '4', '2011-10-26 13:42:45');
INSERT INTO `jiangjin` VALUES ('322', '198', '传奇M', '226', '传奇N', '12', '0', '对碰奖', '12', '2011-10-26 13:42:45');
INSERT INTO `jiangjin` VALUES ('323', '189', '胡世明', '226', '传奇N', '12', '0', '对碰奖', '12', '2011-10-26 13:42:45');
INSERT INTO `jiangjin` VALUES ('324', '1', 'admin', '226', '传奇N', '16', '0', '对碰奖', '16', '2011-10-26 13:42:45');
INSERT INTO `jiangjin` VALUES ('325', '118', '盛夏光年', '229', '吻着泪说爱你', '0', '8', '服务津贴', '8', '2011-10-27 22:02:18');
INSERT INTO `jiangjin` VALUES ('326', '33', 'tt3', '229', '吻着泪说爱你', '16', '0', '对碰奖', '16', '2011-10-27 22:02:18');
INSERT INTO `jiangjin` VALUES ('327', '30', 'tt1', '229', '吻着泪说爱你', '16', '0', '对碰奖', '16', '2011-10-27 22:02:18');
INSERT INTO `jiangjin` VALUES ('328', '189', '胡世明', '230', '挑战者3', '0', '4', '服务津贴', '4', '2011-10-28 13:58:52');
INSERT INTO `jiangjin` VALUES ('329', '200', '轩168', '230', '挑战者3', '0', '0', '对碰奖', '0', '2011-10-28 13:58:52');
INSERT INTO `jiangjin` VALUES ('330', '198', '传奇M', '230', '挑战者3', '12', '0', '对碰奖', '12', '2011-10-28 13:58:52');
INSERT INTO `jiangjin` VALUES ('331', '189', '胡世明', '230', '挑战者3', '12', '0', '对碰奖', '12', '2011-10-28 13:58:52');
INSERT INTO `jiangjin` VALUES ('332', '1', 'admin', '230', '挑战者3', '16', '0', '对碰奖', '16', '2011-10-28 13:58:52');
INSERT INTO `jiangjin` VALUES ('333', '118', '盛夏光年', '231', '001', '0', '2', '服务津贴', '2', '2011-10-28 18:11:19');
INSERT INTO `jiangjin` VALUES ('334', '152', '666666', '231', '001', '3', '0', '对碰奖', '3', '2011-10-28 18:11:19');
INSERT INTO `jiangjin` VALUES ('335', '37', 'xin1', '231', '001', '4', '0', '对碰奖', '4', '2011-10-28 18:11:19');
INSERT INTO `jiangjin` VALUES ('336', '118', '盛夏光年', '234', '002', '0', '2.5', '服务津贴', '2.5', '2011-11-03 12:39:55');
INSERT INTO `jiangjin` VALUES ('337', '33', 'tt3', '234', '002', '5', '0', '对碰奖', '5', '2011-11-03 12:39:55');
INSERT INTO `jiangjin` VALUES ('338', '30', 'tt1', '234', '002', '5', '0', '对碰奖', '5', '2011-11-03 12:39:55');
INSERT INTO `jiangjin` VALUES ('339', '87', '抉择', '237', '抉择2', '0', '2.5', '服务津贴', '2.5', '2011-11-04 22:27:39');
INSERT INTO `jiangjin` VALUES ('340', '95', '六月流觞', '237', '抉择2', '4', '0', '对碰奖', '4', '2011-11-04 22:27:39');
INSERT INTO `jiangjin` VALUES ('341', '89', '王超', '237', '抉择2', '3', '0', '对碰奖', '3', '2011-11-04 22:27:39');
INSERT INTO `jiangjin` VALUES ('342', '87', '抉择', '237', '抉择2', '5', '0', '对碰奖', '5', '2011-11-04 22:27:39');
INSERT INTO `jiangjin` VALUES ('343', '1', 'admin', '237', '抉择2', '5', '0', '对碰奖', '5', '2011-11-04 22:27:39');
INSERT INTO `jiangjin` VALUES ('344', '35', 'qq3', '245', 'H', '0', '10', '服务津贴', '10', '2011-11-05 17:08:10');
INSERT INTO `jiangjin` VALUES ('345', '212', 'LX2', '245', 'H', '12', '0', '对碰奖', '12', '2011-11-05 17:08:10');
INSERT INTO `jiangjin` VALUES ('346', '1', 'admin', '245', 'H', '20', '0', '对碰奖', '20', '2011-11-05 17:08:10');
INSERT INTO `jiangjin` VALUES ('347', '35', 'qq3', '244', 'L', '0', '25', '服务津贴', '25', '2011-11-05 17:10:21');
INSERT INTO `jiangjin` VALUES ('348', '1', 'admin', '244', 'L', '50', '0', '对碰奖', '50', '2011-11-05 17:10:21');
INSERT INTO `jiangjin` VALUES ('349', '35', 'qq3', '246', 'D', '0', '10', '服务津贴', '10', '2011-11-05 17:11:23');
INSERT INTO `jiangjin` VALUES ('350', '244', 'L', '246', 'D', '12', '0', '对碰奖', '12', '2011-11-05 17:11:23');
INSERT INTO `jiangjin` VALUES ('351', '1', 'admin', '246', 'D', '20', '0', '对碰奖', '20', '2011-11-05 17:11:23');
INSERT INTO `jiangjin` VALUES ('352', '118', '盛夏光年', '236', '01', '0', '10', '服务津贴', '10', '2011-11-06 15:57:03');
INSERT INTO `jiangjin` VALUES ('353', '33', 'tt3', '236', '01', '20', '0', '对碰奖', '20', '2011-11-06 15:57:03');
INSERT INTO `jiangjin` VALUES ('354', '30', 'tt1', '236', '01', '20', '0', '对碰奖', '20', '2011-11-06 15:57:03');
INSERT INTO `jiangjin` VALUES ('355', '118', '盛夏光年', '249', '004', '0', '2.5', '服务津贴', '2.5', '2011-11-08 19:35:54');
INSERT INTO `jiangjin` VALUES ('356', '151', 'xiaosi', '249', '004', '4', '0', '对碰奖', '4', '2011-11-08 19:35:54');
INSERT INTO `jiangjin` VALUES ('357', '37', 'xin1', '249', '004', '5', '0', '对碰奖', '5', '2011-11-08 19:35:54');
INSERT INTO `jiangjin` VALUES ('358', '118', '盛夏光年', '250', '005', '0', '2.5', '服务津贴', '2.5', '2011-11-09 21:34:00');
INSERT INTO `jiangjin` VALUES ('359', '33', 'tt3', '250', '005', '5', '0', '对碰奖', '5', '2011-11-09 21:34:00');
INSERT INTO `jiangjin` VALUES ('360', '30', 'tt1', '250', '005', '5', '0', '对碰奖', '5', '2011-11-09 21:34:00');
INSERT INTO `jiangjin` VALUES ('361', '118', '盛夏光年', '235', '003', '0', '2.5', '服务津贴', '2.5', '2011-11-09 21:36:07');
INSERT INTO `jiangjin` VALUES ('362', '33', 'tt3', '235', '003', '5', '0', '对碰奖', '5', '2011-11-09 21:36:07');
INSERT INTO `jiangjin` VALUES ('363', '30', 'tt1', '235', '003', '5', '0', '对碰奖', '5', '2011-11-09 21:36:07');
INSERT INTO `jiangjin` VALUES ('364', '118', '盛夏光年', '251', '02', '0', '5', '服务津贴', '5', '2011-11-10 12:33:28');
INSERT INTO `jiangjin` VALUES ('365', '33', 'tt3', '251', '02', '10', '0', '对碰奖', '10', '2011-11-10 12:33:28');
INSERT INTO `jiangjin` VALUES ('366', '30', 'tt1', '251', '02', '10', '0', '对碰奖', '10', '2011-11-10 12:33:28');
INSERT INTO `jiangjin` VALUES ('367', '118', '盛夏光年', '252', '03', '0', '5', '服务津贴', '5', '2011-11-10 12:34:12');
INSERT INTO `jiangjin` VALUES ('368', '33', 'tt3', '252', '03', '10', '0', '对碰奖', '10', '2011-11-10 12:34:12');
INSERT INTO `jiangjin` VALUES ('369', '30', 'tt1', '252', '03', '10', '0', '对碰奖', '10', '2011-11-10 12:34:12');
INSERT INTO `jiangjin` VALUES ('370', '118', '盛夏光年', '253', '04', '0', '5', '服务津贴', '5', '2011-11-10 12:34:18');
INSERT INTO `jiangjin` VALUES ('371', '251', '02', '253', '04', '6', '0', '对碰奖', '6', '2011-11-10 12:34:18');
INSERT INTO `jiangjin` VALUES ('372', '33', 'tt3', '253', '04', '10', '0', '对碰奖', '10', '2011-11-10 12:34:18');
INSERT INTO `jiangjin` VALUES ('373', '30', 'tt1', '253', '04', '10', '0', '对碰奖', '10', '2011-11-10 12:34:18');
INSERT INTO `jiangjin` VALUES ('374', '118', '盛夏光年', '255', 'c1', '0', '12.5', '服务津贴', '12.5', '2011-11-10 12:52:04');
INSERT INTO `jiangjin` VALUES ('375', '33', 'tt3', '255', 'c1', '25', '0', '对碰奖', '25', '2011-11-10 12:52:04');
INSERT INTO `jiangjin` VALUES ('376', '30', 'tt1', '255', 'c1', '25', '0', '对碰奖', '25', '2011-11-10 12:52:04');
INSERT INTO `jiangjin` VALUES ('377', '152', '666666', '256', '000000', '0', '4', '服务津贴', '4', '2011-11-10 13:06:20');
INSERT INTO `jiangjin` VALUES ('378', '152', '666666', '256', '000000', '8', '0', '对碰奖', '8', '2011-11-10 13:06:20');
INSERT INTO `jiangjin` VALUES ('379', '37', 'xin1', '256', '000000', '10', '0', '对碰奖', '10', '2011-11-10 13:06:20');
INSERT INTO `jiangjin` VALUES ('380', '152', '666666', '257', '111111', '0', '4', '服务津贴', '4', '2011-11-10 13:06:26');
INSERT INTO `jiangjin` VALUES ('381', '152', '666666', '257', '111111', '8', '0', '对碰奖', '8', '2011-11-10 13:06:26');
INSERT INTO `jiangjin` VALUES ('382', '37', 'xin1', '257', '111111', '10', '0', '对碰奖', '10', '2011-11-10 13:06:26');
INSERT INTO `jiangjin` VALUES ('383', '35', 'qq3', '258', 'LC', '0', '25', '服务津贴', '25', '2011-11-10 18:22:50');
INSERT INTO `jiangjin` VALUES ('384', '1', 'admin', '258', 'LC', '50', '0', '对碰奖', '50', '2011-11-10 18:22:50');
INSERT INTO `jiangjin` VALUES ('385', '35', 'qq3', '259', 'LC1', '0', '5', '服务津贴', '5', '2011-11-10 18:22:57');
INSERT INTO `jiangjin` VALUES ('386', '1', 'admin', '259', 'LC1', '10', '0', '对碰奖', '10', '2011-11-10 18:22:57');
INSERT INTO `jiangjin` VALUES ('387', '35', 'qq3', '264', 'LC2', '0', '5', '服务津贴', '5', '2011-11-10 18:25:15');
INSERT INTO `jiangjin` VALUES ('388', '258', 'LC', '264', 'LC2', '8', '0', '对碰奖', '8', '2011-11-10 18:25:15');
INSERT INTO `jiangjin` VALUES ('389', '1', 'admin', '264', 'LC2', '10', '0', '对碰奖', '10', '2011-11-10 18:25:15');
INSERT INTO `jiangjin` VALUES ('390', '193', 'ZGH', '262', 'ZJH', '0', '40', '服务津贴', '40', '2011-11-10 21:18:18');
INSERT INTO `jiangjin` VALUES ('391', '193', 'ZGH', '262', 'ZJH', '60', '0', '对碰奖', '60', '2011-11-10 21:18:18');
INSERT INTO `jiangjin` VALUES ('392', '1', 'admin', '262', 'ZJH', '100', '0', '对碰奖', '100', '2011-11-10 21:18:18');
INSERT INTO `jiangjin` VALUES ('393', '193', 'ZGH', '263', 'YMC', '0', '40', '服务津贴', '40', '2011-11-10 21:18:25');
INSERT INTO `jiangjin` VALUES ('394', '193', 'ZGH', '263', 'YMC', '60', '0', '对碰奖', '60', '2011-11-10 21:18:25');
INSERT INTO `jiangjin` VALUES ('395', '1', 'admin', '263', 'YMC', '100', '0', '对碰奖', '100', '2011-11-10 21:18:25');
INSERT INTO `jiangjin` VALUES ('396', '118', '盛夏光年', '265', '006', '0', '1.25', '服务津贴', '1.25', '2011-11-10 21:26:19');
INSERT INTO `jiangjin` VALUES ('397', '33', 'tt3', '265', '006', '2.5', '0', '对碰奖', '2.5', '2011-11-10 21:26:19');
INSERT INTO `jiangjin` VALUES ('398', '30', 'tt1', '265', '006', '2.5', '0', '对碰奖', '2.5', '2011-11-10 21:26:19');
INSERT INTO `jiangjin` VALUES ('399', '118', '盛夏光年', '266', 'cui', '0', '5', '服务津贴', '5', '2011-11-10 21:28:17');
INSERT INTO `jiangjin` VALUES ('400', '224', 'hui', '266', 'cui', '6', '0', '对碰奖', '6', '2011-11-10 21:28:17');
INSERT INTO `jiangjin` VALUES ('401', '33', 'tt3', '266', 'cui', '10', '0', '对碰奖', '10', '2011-11-10 21:28:17');
INSERT INTO `jiangjin` VALUES ('402', '30', 'tt1', '266', 'cui', '10', '0', '对碰奖', '10', '2011-11-10 21:28:17');
INSERT INTO `jiangjin` VALUES ('403', '244', 'L', '269', 'LJH', '0', '20', '服务津贴', '20', '2011-11-11 19:41:13');
INSERT INTO `jiangjin` VALUES ('404', '244', 'L', '269', 'LJH', '30', '0', '对碰奖', '30', '2011-11-11 19:41:13');
INSERT INTO `jiangjin` VALUES ('405', '1', 'admin', '269', 'LJH', '50', '0', '对碰奖', '50', '2011-11-11 19:41:13');
INSERT INTO `jiangjin` VALUES ('406', '244', 'L', '277', 'asd', '0', '4', '服务津贴', '4', '2011-11-11 20:13:38');
INSERT INTO `jiangjin` VALUES ('407', '244', 'L', '277', 'asd', '6', '0', '对碰奖', '6', '2011-11-11 20:13:38');
INSERT INTO `jiangjin` VALUES ('408', '1', 'admin', '277', 'asd', '10', '0', '对碰奖', '10', '2011-11-11 20:13:38');
INSERT INTO `jiangjin` VALUES ('409', '35', 'qq3', '280', 'LC4', '0', '5', '服务津贴', '5', '2011-11-11 20:40:35');
INSERT INTO `jiangjin` VALUES ('410', '1', 'admin', '280', 'LC4', '10', '0', '对碰奖', '10', '2011-11-11 20:40:35');
INSERT INTO `jiangjin` VALUES ('411', '193', 'ZGH', '281', 'YMC1', '0', '1', '服务津贴', '1', '2011-11-11 21:24:36');
INSERT INTO `jiangjin` VALUES ('412', '193', 'ZGH', '281', 'YMC1', '1.5', '0', '对碰奖', '1.5', '2011-11-11 21:24:36');
INSERT INTO `jiangjin` VALUES ('413', '1', 'admin', '281', 'YMC1', '2.5', '0', '对碰奖', '2.5', '2011-11-11 21:24:36');
INSERT INTO `jiangjin` VALUES ('414', '193', 'ZGH', '282', 'MC', '0', '20', '服务津贴', '20', '2011-11-11 21:27:04');
INSERT INTO `jiangjin` VALUES ('415', '263', 'YMC', '282', 'MC', '2.5', '0', '对碰奖', '2.5', '2011-11-11 21:27:04');
INSERT INTO `jiangjin` VALUES ('416', '193', 'ZGH', '282', 'MC', '30', '0', '对碰奖', '30', '2011-11-11 21:27:04');
INSERT INTO `jiangjin` VALUES ('417', '1', 'admin', '282', 'MC', '50', '0', '对碰奖', '50', '2011-11-11 21:27:04');
INSERT INTO `jiangjin` VALUES ('418', '118', '盛夏光年', '283', '强子', '0', '12.5', '服务津贴', '12.5', '2011-11-11 21:56:10');
INSERT INTO `jiangjin` VALUES ('419', '152', '666666', '283', '强子', '20', '0', '对碰奖', '20', '2011-11-11 21:56:10');
INSERT INTO `jiangjin` VALUES ('420', '37', 'xin1', '283', '强子', '25', '0', '对碰奖', '25', '2011-11-11 21:56:10');
INSERT INTO `jiangjin` VALUES ('421', '118', '盛夏光年', '272', '07', '0', '5', '服务津贴', '5', '2011-11-11 22:07:23');
INSERT INTO `jiangjin` VALUES ('422', '251', '02', '272', '07', '6', '0', '对碰奖', '6', '2011-11-11 22:07:23');
INSERT INTO `jiangjin` VALUES ('423', '33', 'tt3', '272', '07', '10', '0', '对碰奖', '10', '2011-11-11 22:07:23');
INSERT INTO `jiangjin` VALUES ('424', '30', 'tt1', '272', '07', '10', '0', '对碰奖', '10', '2011-11-11 22:07:23');
INSERT INTO `jiangjin` VALUES ('425', '118', '盛夏光年', '275', '10', '0', '5', '服务津贴', '5', '2011-11-11 22:07:36');
INSERT INTO `jiangjin` VALUES ('426', '251', '02', '275', '10', '6', '0', '对碰奖', '6', '2011-11-11 22:07:36');
INSERT INTO `jiangjin` VALUES ('427', '33', 'tt3', '275', '10', '10', '0', '对碰奖', '10', '2011-11-11 22:07:36');
INSERT INTO `jiangjin` VALUES ('428', '30', 'tt1', '275', '10', '10', '0', '对碰奖', '10', '2011-11-11 22:07:36');
INSERT INTO `jiangjin` VALUES ('429', '118', '盛夏光年', '270', '05', '0', '5', '服务津贴', '5', '2011-11-12 13:31:10');
INSERT INTO `jiangjin` VALUES ('430', '252', '03', '270', '05', '6', '0', '对碰奖', '6', '2011-11-12 13:31:10');
INSERT INTO `jiangjin` VALUES ('431', '33', 'tt3', '270', '05', '10', '0', '对碰奖', '10', '2011-11-12 13:31:10');
INSERT INTO `jiangjin` VALUES ('432', '30', 'tt1', '270', '05', '10', '0', '对碰奖', '10', '2011-11-12 13:31:10');
INSERT INTO `jiangjin` VALUES ('433', '118', '盛夏光年', '285', '08', '0', '5', '服务津贴', '5', '2011-11-12 13:35:07');
INSERT INTO `jiangjin` VALUES ('434', '253', '04', '285', '08', '6', '0', '对碰奖', '6', '2011-11-12 13:35:07');
INSERT INTO `jiangjin` VALUES ('435', '251', '02', '285', '08', '6', '0', '对碰奖', '6', '2011-11-12 13:35:07');
INSERT INTO `jiangjin` VALUES ('436', '33', 'tt3', '285', '08', '10', '0', '对碰奖', '10', '2011-11-12 13:35:07');
INSERT INTO `jiangjin` VALUES ('437', '30', 'tt1', '285', '08', '10', '0', '对碰奖', '10', '2011-11-12 13:35:07');
INSERT INTO `jiangjin` VALUES ('438', '118', '盛夏光年', '286', '09', '0', '5', '服务津贴', '5', '2011-11-12 13:35:11');
INSERT INTO `jiangjin` VALUES ('439', '253', '04', '286', '09', '6', '0', '对碰奖', '6', '2011-11-12 13:35:11');
INSERT INTO `jiangjin` VALUES ('440', '251', '02', '286', '09', '4.5', '0', '对碰奖', '4.5', '2011-11-12 13:35:11');
INSERT INTO `jiangjin` VALUES ('441', '33', 'tt3', '286', '09', '10', '0', '对碰奖', '10', '2011-11-12 13:35:11');
INSERT INTO `jiangjin` VALUES ('442', '30', 'tt1', '286', '09', '10', '0', '对碰奖', '10', '2011-11-12 13:35:11');
INSERT INTO `jiangjin` VALUES ('443', '262', 'ZJH', '287', 'ZJH1', '0', '25', '服务津贴', '25', '2011-11-12 18:56:00');
INSERT INTO `jiangjin` VALUES ('444', '193', 'ZGH', '287', 'ZJH1', '16.5', '0', '对碰奖', '16.5', '2011-11-12 18:56:00');
INSERT INTO `jiangjin` VALUES ('445', '1', 'admin', '287', 'ZJH1', '50', '0', '对碰奖', '50', '2011-11-12 18:56:00');
INSERT INTO `jiangjin` VALUES ('446', '118', '盛夏光年', '300', '11', '0', '5', '服务津贴', '5', '2011-11-13 14:34:24');
INSERT INTO `jiangjin` VALUES ('447', '33', 'tt3', '300', '11', '10', '0', '对碰奖', '10', '2011-11-13 14:34:24');
INSERT INTO `jiangjin` VALUES ('448', '30', 'tt1', '300', '11', '10', '0', '对碰奖', '10', '2011-11-13 14:34:24');
INSERT INTO `jiangjin` VALUES ('449', '118', '盛夏光年', '301', '12', '0', '5', '服务津贴', '5', '2011-11-13 14:34:29');
INSERT INTO `jiangjin` VALUES ('450', '33', 'tt3', '301', '12', '10', '0', '对碰奖', '10', '2011-11-13 14:34:29');
INSERT INTO `jiangjin` VALUES ('451', '30', 'tt1', '301', '12', '10', '0', '对碰奖', '10', '2011-11-13 14:34:29');
INSERT INTO `jiangjin` VALUES ('452', '35', 'qq3', '305', 'LCZ', '0', '12.5', '服务津贴', '12.5', '2011-11-14 10:06:14');
INSERT INTO `jiangjin` VALUES ('453', '211', 'LX1', '305', 'LCZ', '6', '0', '对碰奖', '6', '2011-11-14 10:06:14');
INSERT INTO `jiangjin` VALUES ('454', '210', 'LX', '305', 'LCZ', '20', '0', '对碰奖', '20', '2011-11-14 10:06:14');
INSERT INTO `jiangjin` VALUES ('455', '193', 'ZGH', '305', 'LCZ', '13.5', '0', '对碰奖', '13.5', '2011-11-14 10:06:14');
INSERT INTO `jiangjin` VALUES ('456', '1', 'admin', '305', 'LCZ', '25', '0', '对碰奖', '25', '2011-11-14 10:06:14');
INSERT INTO `jiangjin` VALUES ('457', '35', 'qq3', '306', 'LCZ1', '0', '5', '服务津贴', '5', '2011-11-14 10:06:24');
INSERT INTO `jiangjin` VALUES ('458', '210', 'LX', '306', 'LCZ1', '8', '0', '对碰奖', '8', '2011-11-14 10:06:24');
INSERT INTO `jiangjin` VALUES ('459', '1', 'admin', '306', 'LCZ1', '10', '0', '对碰奖', '10', '2011-11-14 10:06:24');
INSERT INTO `jiangjin` VALUES ('460', '35', 'qq3', '307', 'LCZ2', '0', '5', '服务津贴', '5', '2011-11-14 10:15:43');
INSERT INTO `jiangjin` VALUES ('461', '305', 'LCZ', '307', 'LCZ2', '6', '0', '对碰奖', '6', '2011-11-14 10:15:43');
INSERT INTO `jiangjin` VALUES ('462', '210', 'LX', '307', 'LCZ2', '8', '0', '对碰奖', '8', '2011-11-14 10:15:43');
INSERT INTO `jiangjin` VALUES ('463', '1', 'admin', '307', 'LCZ2', '10', '0', '对碰奖', '10', '2011-11-14 10:15:43');
INSERT INTO `jiangjin` VALUES ('464', '35', 'qq3', '308', '现在', '0', '50', '服务津贴', '50', '2011-11-14 15:21:57');
INSERT INTO `jiangjin` VALUES ('465', '129', 'qq4', '308', '现在', '80', '0', '对碰奖', '80', '2011-11-14 15:21:57');
INSERT INTO `jiangjin` VALUES ('466', '35', 'qq3', '308', '现在', '100', '0', '对碰奖', '100', '2011-11-14 15:21:57');
INSERT INTO `jiangjin` VALUES ('467', '1', 'admin', '308', '现在', '100', '0', '对碰奖', '100', '2011-11-14 15:21:57');
INSERT INTO `jiangjin` VALUES ('468', '35', 'qq3', '309', '过去', '0', '12.5', '服务津贴', '12.5', '2011-11-14 15:22:02');
INSERT INTO `jiangjin` VALUES ('469', '129', 'qq4', '309', '过去', '20', '0', '对碰奖', '20', '2011-11-14 15:22:02');
INSERT INTO `jiangjin` VALUES ('470', '35', 'qq3', '309', '过去', '25', '0', '对碰奖', '25', '2011-11-14 15:22:02');
INSERT INTO `jiangjin` VALUES ('471', '1', 'admin', '309', '过去', '25', '0', '对碰奖', '25', '2011-11-14 15:22:02');
INSERT INTO `jiangjin` VALUES ('472', '35', 'qq3', '310', '未来', '0', '12.5', '服务津贴', '12.5', '2011-11-14 15:26:22');
INSERT INTO `jiangjin` VALUES ('473', '308', '现在', '310', '未来', '25', '0', '对碰奖', '25', '2011-11-14 15:26:22');
INSERT INTO `jiangjin` VALUES ('474', '129', 'qq4', '310', '未来', '20', '0', '对碰奖', '20', '2011-11-14 15:26:22');
INSERT INTO `jiangjin` VALUES ('475', '35', 'qq3', '310', '未来', '25', '0', '对碰奖', '25', '2011-11-14 15:26:22');
INSERT INTO `jiangjin` VALUES ('476', '1', 'admin', '310', '未来', '25', '0', '对碰奖', '25', '2011-11-14 15:26:22');
INSERT INTO `jiangjin` VALUES ('477', '35', 'qq3', '311', '遇见', '0', '50', '服务津贴', '50', '2011-11-14 15:26:29');
INSERT INTO `jiangjin` VALUES ('478', '129', 'qq4', '311', '遇见', '80', '0', '对碰奖', '80', '2011-11-14 15:26:29');
INSERT INTO `jiangjin` VALUES ('479', '35', 'qq3', '311', '遇见', '100', '0', '对碰奖', '100', '2011-11-14 15:26:29');
INSERT INTO `jiangjin` VALUES ('480', '1', 'admin', '311', '遇见', '100', '0', '对碰奖', '100', '2011-11-14 15:26:29');
INSERT INTO `jiangjin` VALUES ('481', '258', 'LC', '312', 'hzz', '0', '10', '服务津贴', '10', '2011-11-14 17:56:15');
INSERT INTO `jiangjin` VALUES ('482', '259', 'LC1', '312', 'hzz', '6', '0', '对碰奖', '6', '2011-11-14 17:56:15');
INSERT INTO `jiangjin` VALUES ('483', '1', 'admin', '312', 'hzz', '25', '0', '对碰奖', '25', '2011-11-14 17:56:15');
INSERT INTO `jiangjin` VALUES ('484', '258', 'LC', '313', 'hzz1', '0', '4', '服务津贴', '4', '2011-11-14 17:56:27');
INSERT INTO `jiangjin` VALUES ('485', '1', 'admin', '313', 'hzz1', '10', '0', '对碰奖', '10', '2011-11-14 17:56:27');
INSERT INTO `jiangjin` VALUES ('486', '258', 'LC', '314', 'hzz2', '0', '4', '服务津贴', '4', '2011-11-14 17:57:55');
INSERT INTO `jiangjin` VALUES ('487', '312', 'hzz', '314', 'hzz2', '6', '0', '对碰奖', '6', '2011-11-14 17:57:55');
INSERT INTO `jiangjin` VALUES ('488', '1', 'admin', '314', 'hzz2', '10', '0', '对碰奖', '10', '2011-11-14 17:57:55');
INSERT INTO `jiangjin` VALUES ('489', '258', 'LC', '315', 'DY', '0', '4', '服务津贴', '4', '2011-11-14 19:24:56');
INSERT INTO `jiangjin` VALUES ('490', '258', 'LC', '315', 'DY', '8', '0', '对碰奖', '8', '2011-11-14 19:24:56');
INSERT INTO `jiangjin` VALUES ('491', '1', 'admin', '315', 'DY', '10', '0', '对碰奖', '10', '2011-11-14 19:24:56');
INSERT INTO `jiangjin` VALUES ('492', '31', 'qq1', '316', 'GCS', '0', '25', '服务津贴', '25', '2011-11-14 20:57:22');
INSERT INTO `jiangjin` VALUES ('493', '210', 'LX', '316', 'GCS', '40', '0', '对碰奖', '40', '2011-11-14 20:57:22');
INSERT INTO `jiangjin` VALUES ('494', '1', 'admin', '316', 'GCS', '50', '0', '对碰奖', '50', '2011-11-14 20:57:22');
INSERT INTO `jiangjin` VALUES ('495', '31', 'qq1', '317', 'XXD', '0', '25', '服务津贴', '25', '2011-11-14 20:57:28');
INSERT INTO `jiangjin` VALUES ('496', '210', 'LX', '317', 'XXD', '40', '0', '对碰奖', '40', '2011-11-14 20:57:28');
INSERT INTO `jiangjin` VALUES ('497', '1', 'admin', '317', 'XXD', '50', '0', '对碰奖', '50', '2011-11-14 20:57:28');
INSERT INTO `jiangjin` VALUES ('498', '31', 'qq1', '318', 'XXD1', '0', '12.5', '服务津贴', '12.5', '2011-11-14 21:00:41');
INSERT INTO `jiangjin` VALUES ('499', '210', 'LX', '318', 'XXD1', '20', '0', '对碰奖', '20', '2011-11-14 21:00:41');
INSERT INTO `jiangjin` VALUES ('500', '1', 'admin', '318', 'XXD1', '25', '0', '对碰奖', '25', '2011-11-14 21:00:41');
INSERT INTO `jiangjin` VALUES ('501', '31', 'qq1', '319', 'XXD2', '0', '12.5', '服务津贴', '12.5', '2011-11-14 21:01:05');
INSERT INTO `jiangjin` VALUES ('502', '317', 'XXD', '319', 'XXD2', '20', '0', '对碰奖', '20', '2011-11-14 21:01:05');
INSERT INTO `jiangjin` VALUES ('503', '210', 'LX', '319', 'XXD2', '20', '0', '对碰奖', '20', '2011-11-14 21:01:05');
INSERT INTO `jiangjin` VALUES ('504', '1', 'admin', '319', 'XXD2', '25', '0', '对碰奖', '25', '2011-11-14 21:01:05');
INSERT INTO `jiangjin` VALUES ('505', '31', 'qq1', '320', 'HDY', '0', '12.5', '服务津贴', '12.5', '2011-11-14 21:06:12');
INSERT INTO `jiangjin` VALUES ('506', '263', 'YMC', '320', 'HDY', '25', '0', '对碰奖', '25', '2011-11-14 21:06:12');
INSERT INTO `jiangjin` VALUES ('507', '193', 'ZGH', '320', 'HDY', '15', '0', '对碰奖', '15', '2011-11-14 21:06:12');
INSERT INTO `jiangjin` VALUES ('508', '1', 'admin', '320', 'HDY', '25', '0', '对碰奖', '25', '2011-11-14 21:06:12');
INSERT INTO `jiangjin` VALUES ('509', '35', 'qq3', '321', 'LJL', '0', '12.5', '服务津贴', '12.5', '2011-11-15 13:19:34');
INSERT INTO `jiangjin` VALUES ('510', '193', 'ZGH', '321', 'LJL', '15', '0', '对碰奖', '15', '2011-11-15 13:19:34');
INSERT INTO `jiangjin` VALUES ('511', '1', 'admin', '321', 'LJL', '25', '0', '对碰奖', '25', '2011-11-15 13:19:34');
INSERT INTO `jiangjin` VALUES ('512', '258', 'LC', '323', 'lc5', '0', '4', '服务津贴', '4', '2011-11-15 17:05:01');
INSERT INTO `jiangjin` VALUES ('513', '264', 'LC2', '323', 'lc5', '6', '0', '对碰奖', '6', '2011-11-15 17:05:01');
INSERT INTO `jiangjin` VALUES ('514', '258', 'LC', '323', 'lc5', '8', '0', '对碰奖', '8', '2011-11-15 17:05:01');
INSERT INTO `jiangjin` VALUES ('515', '1', 'admin', '323', 'lc5', '10', '0', '对碰奖', '10', '2011-11-15 17:05:01');
INSERT INTO `jiangjin` VALUES ('516', '258', 'LC', '324', 'lc3', '0', '4', '服务津贴', '4', '2011-11-15 17:37:28');
INSERT INTO `jiangjin` VALUES ('517', '259', 'LC1', '324', 'lc3', '6', '0', '对碰奖', '6', '2011-11-15 17:37:28');
INSERT INTO `jiangjin` VALUES ('518', '1', 'admin', '324', 'lc3', '10', '0', '对碰奖', '10', '2011-11-15 17:37:28');
INSERT INTO `jiangjin` VALUES ('519', '210', 'LX', '325', 'ZYM', '0', '10', '服务津贴', '10', '2011-11-15 18:45:06');
INSERT INTO `jiangjin` VALUES ('520', '210', 'LX', '325', 'ZYM', '20', '0', '对碰奖', '20', '2011-11-15 18:45:06');
INSERT INTO `jiangjin` VALUES ('521', '1', 'admin', '325', 'ZYM', '25', '0', '对碰奖', '25', '2011-11-15 18:45:06');
INSERT INTO `jiangjin` VALUES ('522', '118', '盛夏光年', '326', '13', '0', '5', '服务津贴', '5', '2011-11-16 16:03:21');
INSERT INTO `jiangjin` VALUES ('523', '251', '02', '326', '13', '6', '0', '对碰奖', '6', '2011-11-16 16:03:21');
INSERT INTO `jiangjin` VALUES ('524', '33', 'tt3', '326', '13', '10', '0', '对碰奖', '10', '2011-11-16 16:03:21');
INSERT INTO `jiangjin` VALUES ('525', '30', 'tt1', '326', '13', '10', '0', '对碰奖', '10', '2011-11-16 16:03:21');
INSERT INTO `jiangjin` VALUES ('526', '118', '盛夏光年', '327', '14', '0', '5', '服务津贴', '5', '2011-11-16 16:03:27');
INSERT INTO `jiangjin` VALUES ('527', '251', '02', '327', '14', '6', '0', '对碰奖', '6', '2011-11-16 16:03:27');
INSERT INTO `jiangjin` VALUES ('528', '33', 'tt3', '327', '14', '10', '0', '对碰奖', '10', '2011-11-16 16:03:27');
INSERT INTO `jiangjin` VALUES ('529', '30', 'tt1', '327', '14', '10', '0', '对碰奖', '10', '2011-11-16 16:03:27');
INSERT INTO `jiangjin` VALUES ('530', '210', 'LX', '328', 'TXD', '0', '10', '服务津贴', '10', '2011-11-16 17:44:11');
INSERT INTO `jiangjin` VALUES ('531', '316', 'GCS', '328', 'TXD', '20', '0', '对碰奖', '20', '2011-11-16 17:44:11');
INSERT INTO `jiangjin` VALUES ('532', '210', 'LX', '328', 'TXD', '20', '0', '对碰奖', '20', '2011-11-16 17:44:11');
INSERT INTO `jiangjin` VALUES ('533', '1', 'admin', '328', 'TXD', '25', '0', '对碰奖', '25', '2011-11-16 17:44:11');
INSERT INTO `jiangjin` VALUES ('534', '118', '盛夏光年', '330', '娟', '0', '12.5', '服务津贴', '12.5', '2011-11-16 20:36:59');
INSERT INTO `jiangjin` VALUES ('535', '224', 'hui', '330', '娟', '15', '0', '对碰奖', '15', '2011-11-16 20:36:59');
INSERT INTO `jiangjin` VALUES ('536', '33', 'tt3', '330', '娟', '25', '0', '对碰奖', '25', '2011-11-16 20:36:59');
INSERT INTO `jiangjin` VALUES ('537', '30', 'tt1', '330', '娟', '25', '0', '对碰奖', '25', '2011-11-16 20:36:59');
INSERT INTO `jiangjin` VALUES ('538', '118', '盛夏光年', '331', '诺诺', '0', '12.5', '服务津贴', '12.5', '2011-11-17 09:52:28');
INSERT INTO `jiangjin` VALUES ('539', '224', 'hui', '331', '诺诺', '15', '0', '对碰奖', '15', '2011-11-17 09:52:28');
INSERT INTO `jiangjin` VALUES ('540', '33', 'tt3', '331', '诺诺', '25', '0', '对碰奖', '25', '2011-11-17 09:52:28');
INSERT INTO `jiangjin` VALUES ('541', '30', 'tt1', '331', '诺诺', '25', '0', '对碰奖', '25', '2011-11-17 09:52:28');
INSERT INTO `jiangjin` VALUES ('542', '118', '盛夏光年', '333', '雷', '0', '12.5', '服务津贴', '12.5', '2011-11-17 09:56:26');
INSERT INTO `jiangjin` VALUES ('543', '330', '娟', '333', '雷', '15', '0', '对碰奖', '15', '2011-11-17 09:56:26');
INSERT INTO `jiangjin` VALUES ('544', '224', 'hui', '333', '雷', '15', '0', '对碰奖', '15', '2011-11-17 09:56:26');
INSERT INTO `jiangjin` VALUES ('545', '33', 'tt3', '333', '雷', '25', '0', '对碰奖', '25', '2011-11-17 09:56:26');
INSERT INTO `jiangjin` VALUES ('546', '30', 'tt1', '333', '雷', '25', '0', '对碰奖', '25', '2011-11-17 09:56:26');
INSERT INTO `jiangjin` VALUES ('547', '118', '盛夏光年', '334', '15', '0', '5', '服务津贴', '5', '2011-11-17 10:02:35');
INSERT INTO `jiangjin` VALUES ('548', '251', '02', '334', '15', '1.5', '0', '对碰奖', '1.5', '2011-11-17 10:02:35');
INSERT INTO `jiangjin` VALUES ('549', '33', 'tt3', '334', '15', '10', '0', '对碰奖', '10', '2011-11-17 10:02:35');
INSERT INTO `jiangjin` VALUES ('550', '30', 'tt1', '334', '15', '10', '0', '对碰奖', '10', '2011-11-17 10:02:35');
INSERT INTO `jiangjin` VALUES ('551', '118', '盛夏光年', '335', '16', '0', '5', '服务津贴', '5', '2011-11-17 10:02:45');
INSERT INTO `jiangjin` VALUES ('552', '33', 'tt3', '335', '16', '10', '0', '对碰奖', '10', '2011-11-17 10:02:45');
INSERT INTO `jiangjin` VALUES ('553', '30', 'tt1', '335', '16', '10', '0', '对碰奖', '10', '2011-11-17 10:02:45');
INSERT INTO `jiangjin` VALUES ('554', '328', 'TXD', '337', 'YW', '0', '10', '服务津贴', '10', '2011-11-17 12:45:28');
INSERT INTO `jiangjin` VALUES ('555', '316', 'GCS', '337', 'YW', '20', '0', '对碰奖', '20', '2011-11-17 12:45:28');
INSERT INTO `jiangjin` VALUES ('556', '210', 'LX', '337', 'YW', '12', '0', '对碰奖', '12', '2011-11-17 12:45:28');
INSERT INTO `jiangjin` VALUES ('557', '1', 'admin', '337', 'YW', '25', '0', '对碰奖', '25', '2011-11-17 12:45:28');
INSERT INTO `jiangjin` VALUES ('558', '31', 'qq1', '338', 'CL', '0', '12.5', '服务津贴', '12.5', '2011-11-17 16:15:18');
INSERT INTO `jiangjin` VALUES ('559', '263', 'YMC', '338', 'CL', '25', '0', '对碰奖', '25', '2011-11-17 16:15:18');
INSERT INTO `jiangjin` VALUES ('560', '193', 'ZGH', '338', 'CL', '15', '0', '对碰奖', '15', '2011-11-17 16:15:18');
INSERT INTO `jiangjin` VALUES ('561', '1', 'admin', '338', 'CL', '25', '0', '对碰奖', '25', '2011-11-17 16:15:18');
INSERT INTO `jiangjin` VALUES ('562', '189', '胡世明', '339', '挑战者1', '0', '4', '服务津贴', '4', '2011-11-17 18:15:34');
INSERT INTO `jiangjin` VALUES ('563', '198', '传奇M', '339', '挑战者1', '6', '0', '对碰奖', '6', '2011-11-17 18:15:34');
INSERT INTO `jiangjin` VALUES ('564', '189', '胡世明', '339', '挑战者1', '6', '0', '对碰奖', '6', '2011-11-17 18:15:34');
INSERT INTO `jiangjin` VALUES ('565', '1', 'admin', '339', '挑战者1', '10', '0', '对碰奖', '10', '2011-11-17 18:15:34');
INSERT INTO `jiangjin` VALUES ('566', '258', 'LC', '340', 'zxd', '0', '20', '服务津贴', '20', '2011-11-17 18:24:44');
INSERT INTO `jiangjin` VALUES ('567', '280', 'LC4', '340', 'zxd', '6', '0', '对碰奖', '6', '2011-11-17 18:24:44');
INSERT INTO `jiangjin` VALUES ('568', '259', 'LC1', '340', 'zxd', '15', '0', '对碰奖', '15', '2011-11-17 18:24:44');
INSERT INTO `jiangjin` VALUES ('569', '210', 'LX', '340', 'zxd', '8', '0', '对碰奖', '8', '2011-11-17 18:24:44');
INSERT INTO `jiangjin` VALUES ('570', '1', 'admin', '340', 'zxd', '50', '0', '对碰奖', '50', '2011-11-17 18:24:44');
INSERT INTO `jiangjin` VALUES ('571', '258', 'LC', '341', 'zxd1', '0', '4', '服务津贴', '4', '2011-11-17 18:24:48');
INSERT INTO `jiangjin` VALUES ('572', '1', 'admin', '341', 'zxd1', '10', '0', '对碰奖', '10', '2011-11-17 18:24:48');
INSERT INTO `jiangjin` VALUES ('573', '258', 'LC', '342', 'zxd2', '0', '4', '服务津贴', '4', '2011-11-17 18:28:58');
INSERT INTO `jiangjin` VALUES ('574', '340', 'zxd', '342', 'zxd2', '8', '0', '对碰奖', '8', '2011-11-17 18:28:58');
INSERT INTO `jiangjin` VALUES ('575', '1', 'admin', '342', 'zxd2', '10', '0', '对碰奖', '10', '2011-11-17 18:28:58');
INSERT INTO `jiangjin` VALUES ('576', '175', '李聪', '336', '王盼', '0', '10', '服务津贴', '10', '2011-11-17 19:39:07');
INSERT INTO `jiangjin` VALUES ('577', '175', '李聪', '336', '王盼', '20', '0', '对碰奖', '20', '2011-11-17 19:39:07');
INSERT INTO `jiangjin` VALUES ('578', '129', 'qq4', '336', '王盼', '20', '0', '对碰奖', '20', '2011-11-17 19:39:07');
INSERT INTO `jiangjin` VALUES ('579', '35', 'qq3', '336', '王盼', '25', '0', '对碰奖', '25', '2011-11-17 19:39:07');
INSERT INTO `jiangjin` VALUES ('580', '1', 'admin', '336', '王盼', '25', '0', '对碰奖', '25', '2011-11-17 19:39:07');
INSERT INTO `jiangjin` VALUES ('581', '175', '李聪', '343', '尹珍', '0', '4', '服务津贴', '4', '2011-11-17 22:16:31');
INSERT INTO `jiangjin` VALUES ('582', '177', '李聪2', '343', '尹珍', '6', '0', '对碰奖', '6', '2011-11-17 22:16:31');
INSERT INTO `jiangjin` VALUES ('583', '175', '李聪', '343', '尹珍', '8', '0', '对碰奖', '8', '2011-11-17 22:16:31');
INSERT INTO `jiangjin` VALUES ('584', '129', 'qq4', '343', '尹珍', '8', '0', '对碰奖', '8', '2011-11-17 22:16:31');
INSERT INTO `jiangjin` VALUES ('585', '35', 'qq3', '343', '尹珍', '10', '0', '对碰奖', '10', '2011-11-17 22:16:31');
INSERT INTO `jiangjin` VALUES ('586', '1', 'admin', '343', '尹珍', '10', '0', '对碰奖', '10', '2011-11-17 22:16:31');
INSERT INTO `jiangjin` VALUES ('587', '118', '盛夏光年', '353', 'bb1', '0', '10', '服务津贴', '10', '2011-11-22 13:06:43');
INSERT INTO `jiangjin` VALUES ('588', '125', 'b1', '353', 'bb1', '12', '0', '对碰奖', '12', '2011-11-22 13:06:43');
INSERT INTO `jiangjin` VALUES ('589', '118', '盛夏光年', '353', 'bb1', '20', '0', '对碰奖', '20', '2011-11-22 13:06:43');
INSERT INTO `jiangjin` VALUES ('590', '37', 'xin1', '353', 'bb1', '10', '0', '对碰奖', '10', '2011-11-22 13:06:43');
INSERT INTO `jiangjin` VALUES ('591', '118', '盛夏光年', '354', 'bb2', '0', '10', '服务津贴', '10', '2011-11-22 13:06:57');
INSERT INTO `jiangjin` VALUES ('592', '125', 'b1', '354', 'bb2', '12', '0', '对碰奖', '12', '2011-11-22 13:06:57');
INSERT INTO `jiangjin` VALUES ('593', '118', '盛夏光年', '354', 'bb2', '20', '0', '对碰奖', '20', '2011-11-22 13:06:57');
INSERT INTO `jiangjin` VALUES ('594', '1', 'admin', '6', 'tt2', '0', '120', '服务津贴', '120', '2017-07-08 16:45:09');
INSERT INTO `jiangjin` VALUES ('595', '1', 'admin', '8', 'wang1', '0', '120', '服务津贴', '120', '2017-07-13 21:56:45');
INSERT INTO `jiangjin` VALUES ('596', '1', 'admin', '12', 'nnn1', '0', '120', '服务津贴', '120', '2017-10-22 19:42:03');
INSERT INTO `jiangjin` VALUES ('597', '1', 'admin', '13', 'nnn21', '0', '120', '服务津贴', '120', '2017-10-22 19:44:13');
INSERT INTO `jiangjin` VALUES ('598', '1', 'admin', '14', 'nnn112', '0', '120', '服务津贴', '120', '2017-10-22 22:28:56');
INSERT INTO `jiangjin` VALUES ('599', '6', 'tt2', '14', 'nnn112', '120000', '0', '对碰奖', '120000', '2017-10-22 22:28:56');

-- ----------------------------
-- Table structure for `jiesuan`
-- ----------------------------
DROP TABLE IF EXISTS `jiesuan`;
CREATE TABLE `jiesuan` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `DuiPengJiang` double DEFAULT NULL,
  `JinTie` double DEFAULT NULL,
  `AllMoney` double DEFAULT NULL,
  `FenHong` double DEFAULT NULL,
  `KouShui` double DEFAULT NULL,
  `ShiJiang` double DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  `JieSuanId` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `JieSuanId` (`JieSuanId`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiesuan
-- ----------------------------
INSERT INTO `jiesuan` VALUES ('1', '1', 'admin', '234.5', '35', '269.5', '13.48', '13.48', '242.55', '2011-07-01 23:59:59', '2');
INSERT INTO `jiesuan` VALUES ('2', '31', 'qq1', '70', '90', '160', '8', '8', '144', '2011-07-01 23:59:59', '2');
INSERT INTO `jiesuan` VALUES ('3', '30', 'tt1', '60', '75', '135', '6.75', '6.75', '121.5', '2011-07-01 23:59:59', '2');
INSERT INTO `jiesuan` VALUES ('4', '1', 'admin', '14', '0', '14', '0.7', '0.7', '12.6', '2011-07-02 23:59:59', '3');
INSERT INTO `jiesuan` VALUES ('5', '31', 'qq1', '0', '6', '6', '0.3', '0.3', '5.4', '2011-07-02 23:59:59', '3');
INSERT INTO `jiesuan` VALUES ('6', '1', 'admin', '10.5', '0', '10.5', '0.52', '0.52', '9.45', '2011-07-04 23:59:59', '5');
INSERT INTO `jiesuan` VALUES ('7', '30', 'tt1', '36', '75', '111', '5.55', '5.55', '112.5', '2011-07-04 23:59:59', '5');
INSERT INTO `jiesuan` VALUES ('8', '37', 'xin1', '105', '35', '140', '7', '7', '126', '2011-07-04 23:59:59', '5');
INSERT INTO `jiesuan` VALUES ('9', '50', 'ding', '35', '35', '70', '3.5', '3.5', '63', '2011-07-05 23:59:59', '6');
INSERT INTO `jiesuan` VALUES ('10', '38', 'xin2', '35', '35', '70', '3.5', '3.5', '63', '2011-07-05 23:59:59', '6');
INSERT INTO `jiesuan` VALUES ('11', '74', 'a', '35', '0', '35', '1.75', '1.75', '31.5', '2011-07-06 23:59:59', '7');
INSERT INTO `jiesuan` VALUES ('12', '1', 'admin', '140', '0', '140', '7', '7', '126', '2011-07-06 23:59:59', '7');
INSERT INTO `jiesuan` VALUES ('13', '50', 'ding', '0', '70', '70', '3.5', '3.5', '63', '2011-07-06 23:59:59', '7');
INSERT INTO `jiesuan` VALUES ('14', '53', 'niu', '35', '0', '35', '1.75', '1.75', '31.5', '2011-07-06 23:59:59', '7');
INSERT INTO `jiesuan` VALUES ('15', '31', 'qq1', '35', '60', '95', '4.75', '4.75', '85.5', '2011-07-06 23:59:59', '7');
INSERT INTO `jiesuan` VALUES ('16', '69', 'wumei', '70', '0', '70', '3.5', '3.5', '63', '2011-07-06 23:59:59', '7');
INSERT INTO `jiesuan` VALUES ('17', '38', 'xin2', '210', '105', '315', '15.75', '15.75', '283.5', '2011-07-06 23:59:59', '7');
INSERT INTO `jiesuan` VALUES ('18', '82', 'huanying', '70', '0', '70', '3.5', '3.5', '63', '2011-07-09 23:59:59', '10');
INSERT INTO `jiesuan` VALUES ('19', '38', 'xin2', '35', '105', '140', '7', '7', '126', '2011-07-09 23:59:59', '10');
INSERT INTO `jiesuan` VALUES ('20', '41', 'srwxd1', '0', '15', '15', '0.75', '0.75', '13.5', '2011-07-10 23:59:59', '11');
INSERT INTO `jiesuan` VALUES ('21', '1', 'admin', '70', '0', '70', '3.5', '3.5', '63', '2011-07-16 23:59:59', '17');
INSERT INTO `jiesuan` VALUES ('22', '31', 'qq1', '70', '30', '100', '5', '5', '90', '2011-07-16 23:59:59', '17');
INSERT INTO `jiesuan` VALUES ('23', '1', 'admin', '140', '0', '140', '7', '7', '126', '2011-07-19 23:59:59', '20');
INSERT INTO `jiesuan` VALUES ('24', '31', 'qq1', '140', '0', '140', '7', '7', '126', '2011-07-19 23:59:59', '20');
INSERT INTO `jiesuan` VALUES ('25', '87', '抉择', '35', '60', '95', '4.75', '4.75', '85.5', '2011-07-19 23:59:59', '20');
INSERT INTO `jiesuan` VALUES ('26', '1', 'admin', '105', '0', '105', '5.25', '5.25', '94.5', '2011-08-12 23:59:59', '44');
INSERT INTO `jiesuan` VALUES ('27', '31', 'qq1', '35', '15', '50', '2.5', '2.5', '45', '2011-08-12 23:59:59', '44');
INSERT INTO `jiesuan` VALUES ('28', '34', 'qq2', '35', '0', '35', '1.75', '1.75', '31.5', '2011-08-12 23:59:59', '44');
INSERT INTO `jiesuan` VALUES ('29', '87', '抉择', '70', '30', '100', '5', '5', '90', '2011-08-12 23:59:59', '44');
INSERT INTO `jiesuan` VALUES ('30', '100', 'hy1', '80', '0', '80', '4', '4', '72', '2011-09-01 23:59:59', '64');
INSERT INTO `jiesuan` VALUES ('31', '31', 'qq1', '0', '15', '15', '0.75', '0.75', '13.5', '2011-09-01 23:59:59', '64');
INSERT INTO `jiesuan` VALUES ('32', '30', 'tt1', '640', '352', '992', '49.6', '49.6', '892.8', '2011-09-01 23:59:59', '64');
INSERT INTO `jiesuan` VALUES ('33', '103', 'zhu1', '80', '0', '80', '4', '4', '72', '2011-09-01 23:59:59', '64');
INSERT INTO `jiesuan` VALUES ('34', '1', 'admin', '16', '0', '16', '0.8', '0.8', '14.4', '2011-09-02 23:59:59', '65');
INSERT INTO `jiesuan` VALUES ('35', '87', '抉择', '8', '12', '20', '1', '1', '18', '2011-09-02 23:59:59', '65');
INSERT INTO `jiesuan` VALUES ('36', '88', '刘林', '6', '0', '6', '0.3', '0.3', '5.4', '2011-09-02 23:59:59', '65');
INSERT INTO `jiesuan` VALUES ('37', '89', '王超', '6', '0', '6', '0.3', '0.3', '5.4', '2011-09-02 23:59:59', '65');
INSERT INTO `jiesuan` VALUES ('38', '1', 'admin', '40', '0', '40', '2', '2', '36', '2011-09-03 23:59:59', '66');
INSERT INTO `jiesuan` VALUES ('39', '87', '抉择', '0', '24', '24', '1.2', '1.2', '21.6', '2011-09-03 23:59:59', '66');
INSERT INTO `jiesuan` VALUES ('40', '88', '刘林', '24', '0', '24', '1.2', '1.2', '21.6', '2011-09-03 23:59:59', '66');
INSERT INTO `jiesuan` VALUES ('41', '31', 'qq1', '0', '6', '6', '0.3', '0.3', '5.4', '2011-09-04 23:59:59', '67');
INSERT INTO `jiesuan` VALUES ('42', '99', 'yue', '6', '10', '16', '0.8', '0.8', '14.4', '2011-09-04 23:59:59', '67');
INSERT INTO `jiesuan` VALUES ('43', '1', 'admin', '8', '0', '8', '0.4', '0.4', '7.2', '2011-09-05 23:59:59', '68');
INSERT INTO `jiesuan` VALUES ('44', '87', '抉择', '8', '6', '14', '0.7', '0.7', '12.6', '2011-09-05 23:59:59', '68');
INSERT INTO `jiesuan` VALUES ('45', '89', '王超', '6', '0', '6', '0.3', '0.3', '5.4', '2011-09-05 23:59:59', '68');
INSERT INTO `jiesuan` VALUES ('46', '37', 'xin1', '8', '6', '14', '0.7', '0.7', '12.6', '2011-09-07 23:59:59', '70');
INSERT INTO `jiesuan` VALUES ('47', '37', 'xin1', '160', '60', '220', '11', '11', '198', '2011-09-09 23:59:59', '72');
INSERT INTO `jiesuan` VALUES ('48', '115', '游龙', '40', '0', '40', '2', '2', '36', '2011-09-09 23:59:59', '72');
INSERT INTO `jiesuan` VALUES ('49', '1', 'admin', '8', '0', '8', '0.4', '0.4', '7.2', '2011-09-11 23:59:59', '74');
INSERT INTO `jiesuan` VALUES ('50', '37', 'xin1', '90', '36', '126', '6.3', '6.3', '113.4', '2011-09-11 23:59:59', '74');
INSERT INTO `jiesuan` VALUES ('51', '120', '成功的路', '0', '0', '0', '0', '0', '0', '2011-09-11 23:59:59', '74');
INSERT INTO `jiesuan` VALUES ('52', '87', '抉择', '0', '6', '6', '0.3', '0.3', '5.4', '2011-09-11 23:59:59', '74');
INSERT INTO `jiesuan` VALUES ('53', '88', '刘林', '6', '0', '6', '0.3', '0.3', '5.4', '2011-09-11 23:59:59', '74');
INSERT INTO `jiesuan` VALUES ('54', '1', 'admin', '120', '0', '120', '6', '6', '108', '2011-09-12 23:59:59', '75');
INSERT INTO `jiesuan` VALUES ('55', '35', 'qq3', '40', '45', '85', '4.25', '4.25', '76.5', '2011-09-12 23:59:59', '75');
INSERT INTO `jiesuan` VALUES ('56', '1', 'admin', '40', '0', '40', '2', '2', '36', '2011-09-13 23:59:59', '76');
INSERT INTO `jiesuan` VALUES ('57', '31', 'qq1', '40', '15', '55', '2.75', '2.75', '49.5', '2011-09-13 23:59:59', '76');
INSERT INTO `jiesuan` VALUES ('58', '34', 'qq2', '30', '0', '30', '1.5', '1.5', '27', '2011-09-13 23:59:59', '76');
INSERT INTO `jiesuan` VALUES ('59', '1', 'admin', '80', '0', '80', '4', '4', '72', '2011-09-14 23:59:59', '77');
INSERT INTO `jiesuan` VALUES ('60', '87', '抉择', '80', '30', '110', '5.5', '5.5', '99', '2011-09-14 23:59:59', '77');
INSERT INTO `jiesuan` VALUES ('61', '107', '吕明明', '12', '0', '12', '0.6', '0.6', '10.8', '2011-09-14 23:59:59', '77');
INSERT INTO `jiesuan` VALUES ('62', '89', '王超', '36', '0', '36', '1.8', '1.8', '32.4', '2011-09-14 23:59:59', '77');
INSERT INTO `jiesuan` VALUES ('63', '1', 'admin', '160', '0', '160', '8', '8', '144', '2011-09-17 23:59:59', '80');
INSERT INTO `jiesuan` VALUES ('64', '35', 'qq3', '160', '60', '220', '11', '11', '198', '2011-09-17 23:59:59', '80');
INSERT INTO `jiesuan` VALUES ('65', '140', '马薪', '30', '0', '30', '1.5', '1.5', '27', '2011-09-17 23:59:59', '80');
INSERT INTO `jiesuan` VALUES ('66', '1', 'admin', '40', '0', '40', '2', '2', '36', '2011-09-18 23:59:59', '81');
INSERT INTO `jiesuan` VALUES ('67', '35', 'qq3', '40', '15', '55', '2.75', '2.75', '49.5', '2011-09-18 23:59:59', '81');
INSERT INTO `jiesuan` VALUES ('68', '1', 'admin', '80', '0', '80', '4', '4', '72', '2011-09-19 23:59:59', '82');
INSERT INTO `jiesuan` VALUES ('69', '35', 'qq3', '80', '30', '110', '5.5', '5.5', '99', '2011-09-19 23:59:59', '82');
INSERT INTO `jiesuan` VALUES ('70', '140', '马薪', '30', '0', '30', '1.5', '1.5', '27', '2011-09-19 23:59:59', '82');
INSERT INTO `jiesuan` VALUES ('71', '1', 'admin', '80', '0', '80', '4', '4', '72', '2011-09-21 23:59:59', '84');
INSERT INTO `jiesuan` VALUES ('72', '35', 'qq3', '80', '30', '110', '5.5', '5.5', '99', '2011-09-21 23:59:59', '84');
INSERT INTO `jiesuan` VALUES ('73', '37', 'xin1', '180', '37.5', '217.5', '10.88', '10.88', '195.75', '2011-09-21 23:59:59', '84');
INSERT INTO `jiesuan` VALUES ('74', '140', '马薪', '30', '0', '30', '1.5', '1.5', '27', '2011-09-21 23:59:59', '84');
INSERT INTO `jiesuan` VALUES ('75', '118', '盛夏光年', '60', '25', '85', '4.25', '4.25', '76.5', '2011-09-21 23:59:59', '84');
INSERT INTO `jiesuan` VALUES ('76', '1', 'admin', '16', '0', '16', '0.8', '0.8', '14.4', '2011-09-23 23:59:59', '86');
INSERT INTO `jiesuan` VALUES ('77', '125', 'b1', '60', '0', '60', '3', '3', '45', '2011-09-23 23:59:59', '86');
INSERT INTO `jiesuan` VALUES ('78', '35', 'qq3', '16', '6', '22', '1.1', '1.1', '19.8', '2011-09-23 23:59:59', '86');
INSERT INTO `jiesuan` VALUES ('79', '37', 'xin1', '96', '0', '96', '4.8', '4.8', '86.4', '2011-09-23 23:59:59', '86');
INSERT INTO `jiesuan` VALUES ('80', '120', '成功的路', '0', '0', '0', '0', '0', '0', '2011-09-23 23:59:59', '86');
INSERT INTO `jiesuan` VALUES ('81', '140', '马薪', '12', '0', '12', '0.6', '0.6', '10.8', '2011-09-23 23:59:59', '86');
INSERT INTO `jiesuan` VALUES ('82', '142', '马薪2', '12', '0', '12', '0.6', '0.6', '10.8', '2011-09-23 23:59:59', '86');
INSERT INTO `jiesuan` VALUES ('83', '118', '盛夏光年', '0', '25', '25', '1.25', '1.25', '22.5', '2011-09-23 23:59:59', '86');
INSERT INTO `jiesuan` VALUES ('84', '1', 'admin', '16', '0', '16', '0.8', '0.8', '14.4', '2011-09-24 23:59:59', '87');
INSERT INTO `jiesuan` VALUES ('85', '35', 'qq3', '16', '0', '16', '0.8', '0.8', '14.4', '2011-09-24 23:59:59', '87');
INSERT INTO `jiesuan` VALUES ('86', '37', 'xin1', '80', '0', '80', '4', '4', '72', '2011-09-24 23:59:59', '87');
INSERT INTO `jiesuan` VALUES ('87', '118', '盛夏光年', '60', '25', '85', '4.25', '4.25', '76.5', '2011-09-24 23:59:59', '87');
INSERT INTO `jiesuan` VALUES ('88', '143', '张志明', '12', '4', '16', '0.8', '0.8', '14.4', '2011-09-24 23:59:59', '87');
INSERT INTO `jiesuan` VALUES ('89', '1', 'admin', '56', '0', '56', '2.8', '2.8', '50.4', '2011-09-26 23:59:59', '89');
INSERT INTO `jiesuan` VALUES ('90', '35', 'qq3', '40', '0', '40', '2', '2', '36', '2011-09-26 23:59:59', '89');
INSERT INTO `jiesuan` VALUES ('91', '87', '抉择', '16', '6', '22', '1.1', '1.1', '19.8', '2011-09-26 23:59:59', '89');
INSERT INTO `jiesuan` VALUES ('92', '140', '马薪', '30', '12.5', '42.5', '2.12', '2.12', '38.25', '2011-09-26 23:59:59', '89');
INSERT INTO `jiesuan` VALUES ('93', '142', '马薪2', '30', '0', '30', '1.5', '1.5', '27', '2011-09-26 23:59:59', '89');
INSERT INTO `jiesuan` VALUES ('94', '89', '王超', '12', '0', '12', '0.6', '0.6', '10.8', '2011-09-26 23:59:59', '89');
INSERT INTO `jiesuan` VALUES ('95', '1', 'admin', '16', '0', '16', '0.8', '0.8', '14.4', '2011-09-27 23:59:59', '90');
INSERT INTO `jiesuan` VALUES ('96', '35', 'qq3', '16', '0', '16', '0.8', '0.8', '14.4', '2011-09-27 23:59:59', '90');
INSERT INTO `jiesuan` VALUES ('97', '143', '张志明', '0', '4', '4', '0.2', '0.2', '3.6', '2011-09-27 23:59:59', '90');
INSERT INTO `jiesuan` VALUES ('98', '37', 'xin1', '8', '6', '14', '0.7', '0.7', '12.6', '2011-09-28 23:59:59', '91');
INSERT INTO `jiesuan` VALUES ('99', '149', '冷风', '6', '0', '6', '0.3', '0.3', '5.4', '2011-09-28 23:59:59', '91');
INSERT INTO `jiesuan` VALUES ('100', '1', 'admin', '80', '0', '80', '4', '4', '72', '2011-09-29 23:59:59', '92');
INSERT INTO `jiesuan` VALUES ('101', '35', 'qq3', '76', '30', '106', '5.3', '5.3', '95.4', '2011-09-29 23:59:59', '92');
INSERT INTO `jiesuan` VALUES ('102', '129', 'qq4', '60', '0', '60', '3', '3', '54', '2011-09-29 23:59:59', '92');
INSERT INTO `jiesuan` VALUES ('103', '37', 'xin1', '80', '0', '80', '4', '4', '72', '2011-09-29 23:59:59', '92');
INSERT INTO `jiesuan` VALUES ('104', '175', '李聪', '15', '0', '15', '0.75', '0.75', '13.5', '2011-09-29 23:59:59', '92');
INSERT INTO `jiesuan` VALUES ('105', '118', '盛夏光年', '76', '40', '116', '5.8', '5.8', '104.4', '2011-09-29 23:59:59', '92');
INSERT INTO `jiesuan` VALUES ('106', '152', '666666', '15', '0', '15', '0.75', '0.75', '13.5', '2011-10-07 23:59:59', '100');
INSERT INTO `jiesuan` VALUES ('107', '37', 'xin1', '20', '0', '20', '1', '1', '18', '2011-10-07 23:59:59', '100');
INSERT INTO `jiesuan` VALUES ('108', '118', '盛夏光年', '0', '10', '10', '0.5', '0.5', '9', '2011-10-07 23:59:59', '100');
INSERT INTO `jiesuan` VALUES ('109', '1', 'admin', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-08 23:59:59', '101');
INSERT INTO `jiesuan` VALUES ('110', '37', 'xin1', '80', '0', '80', '4', '4', '72', '2011-10-08 23:59:59', '101');
INSERT INTO `jiesuan` VALUES ('111', '127', '蓝天', '46', '30', '76', '3.8', '3.8', '68.4', '2011-10-08 23:59:59', '101');
INSERT INTO `jiesuan` VALUES ('112', '140', '马薪', '0', '5', '5', '0.25', '0.25', '4.5', '2011-10-08 23:59:59', '101');
INSERT INTO `jiesuan` VALUES ('113', '118', '盛夏光年', '24', '0', '24', '1.2', '1.2', '21.6', '2011-10-08 23:59:59', '101');
INSERT INTO `jiesuan` VALUES ('114', '143', '张志明', '6', '4', '10', '0.5', '0.5', '9', '2011-10-08 23:59:59', '101');
INSERT INTO `jiesuan` VALUES ('115', '37', 'xin1', '80', '0', '80', '4', '4', '72', '2011-10-09 23:59:59', '102');
INSERT INTO `jiesuan` VALUES ('116', '127', '蓝天', '20', '30', '50', '2.5', '2.5', '45', '2011-10-09 23:59:59', '102');
INSERT INTO `jiesuan` VALUES ('117', '178', '蓝天A', '15', '0', '15', '0.75', '0.75', '13.5', '2011-10-09 23:59:59', '102');
INSERT INTO `jiesuan` VALUES ('118', '190', '18737552173', '15', '0', '15', '0.75', '0.75', '13.5', '2011-10-10 23:59:59', '103');
INSERT INTO `jiesuan` VALUES ('119', '1', 'admin', '40', '0', '40', '2', '2', '36', '2011-10-10 23:59:59', '103');
INSERT INTO `jiesuan` VALUES ('120', '35', 'qq3', '20', '15', '35', '1.75', '1.75', '31.5', '2011-10-10 23:59:59', '103');
INSERT INTO `jiesuan` VALUES ('121', '37', 'xin1', '120', '0', '120', '6', '6', '108', '2011-10-10 23:59:59', '103');
INSERT INTO `jiesuan` VALUES ('122', '118', '盛夏光年', '120', '60', '180', '9', '9', '162', '2011-10-10 23:59:59', '103');
INSERT INTO `jiesuan` VALUES ('123', '152', '666666', '0', '12.5', '12.5', '0.62', '0.62', '11.25', '2011-10-14 23:59:59', '107');
INSERT INTO `jiesuan` VALUES ('124', '37', 'xin1', '40', '0', '40', '2', '2', '36', '2011-10-14 23:59:59', '107');
INSERT INTO `jiesuan` VALUES ('125', '118', '盛夏光年', '32', '0', '32', '1.6', '1.6', '28.8', '2011-10-14 23:59:59', '107');
INSERT INTO `jiesuan` VALUES ('126', '1', 'admin', '202', '0', '202', '10.1', '10.1', '181.8', '2011-10-16 23:59:59', '109');
INSERT INTO `jiesuan` VALUES ('127', '35', 'qq3', '62', '60', '122', '6.1', '6.1', '109.8', '2011-10-16 23:59:59', '109');
INSERT INTO `jiesuan` VALUES ('128', '198', '传奇M', '1.5', '0', '1.5', '0.08', '0.08', '1.35', '2011-10-16 23:59:59', '109');
INSERT INTO `jiesuan` VALUES ('129', '202', '胡俊', '15', '0', '15', '0.75', '0.75', '13.5', '2011-10-16 23:59:59', '109');
INSERT INTO `jiesuan` VALUES ('130', '189', '胡世明', '15', '11', '26', '1.3', '1.3', '23.4', '2011-10-16 23:59:59', '109');
INSERT INTO `jiesuan` VALUES ('131', '141', '马薪1', '69', '0', '69', '3.45', '3.45', '62.1', '2011-10-16 23:59:59', '109');
INSERT INTO `jiesuan` VALUES ('132', '205', '王亚龙', '15', '0', '15', '0.75', '0.75', '13.5', '2011-10-16 23:59:59', '109');
INSERT INTO `jiesuan` VALUES ('133', '1', 'admin', '120', '0', '120', '6', '6', '108', '2011-10-17 23:59:59', '110');
INSERT INTO `jiesuan` VALUES ('134', '210', 'LX', '15', '0', '15', '0.75', '0.75', '13.5', '2011-10-17 23:59:59', '110');
INSERT INTO `jiesuan` VALUES ('135', '35', 'qq3', '98', '30', '128', '6.4', '6.4', '115.2', '2011-10-17 23:59:59', '110');
INSERT INTO `jiesuan` VALUES ('136', '193', 'ZGH', '15', '0', '15', '0.75', '0.75', '13.5', '2011-10-17 23:59:59', '110');
INSERT INTO `jiesuan` VALUES ('137', '189', '胡世明', '31.5', '10', '41.5', '2.08', '2.08', '37.35', '2011-10-17 23:59:59', '110');
INSERT INTO `jiesuan` VALUES ('138', '30', 'tt1', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-20 23:59:59', '113');
INSERT INTO `jiesuan` VALUES ('139', '33', 'tt3', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-20 23:59:59', '113');
INSERT INTO `jiesuan` VALUES ('140', '118', '盛夏光年', '0', '8', '8', '0.4', '0.4', '7.2', '2011-10-20 23:59:59', '113');
INSERT INTO `jiesuan` VALUES ('141', '1', 'admin', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-24 23:59:59', '117');
INSERT INTO `jiesuan` VALUES ('142', '210', 'LX', '0', '5', '5', '0.25', '0.25', '4.5', '2011-10-24 23:59:59', '117');
INSERT INTO `jiesuan` VALUES ('143', '30', 'tt1', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-25 23:59:59', '118');
INSERT INTO `jiesuan` VALUES ('144', '33', 'tt3', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-25 23:59:59', '118');
INSERT INTO `jiesuan` VALUES ('145', '118', '盛夏光年', '0', '8', '8', '0.4', '0.4', '7.2', '2011-10-25 23:59:59', '118');
INSERT INTO `jiesuan` VALUES ('146', '1', 'admin', '32', '0', '32', '1.6', '1.6', '28.8', '2011-10-26 23:59:59', '119');
INSERT INTO `jiesuan` VALUES ('147', '210', 'LX', '12', '0', '12', '0.6', '0.6', '10.8', '2011-10-26 23:59:59', '119');
INSERT INTO `jiesuan` VALUES ('148', '35', 'qq3', '0', '6', '6', '0.3', '0.3', '5.4', '2011-10-26 23:59:59', '119');
INSERT INTO `jiesuan` VALUES ('149', '198', '传奇M', '12', '0', '12', '0.6', '0.6', '10.8', '2011-10-26 23:59:59', '119');
INSERT INTO `jiesuan` VALUES ('150', '189', '胡世明', '12', '4', '16', '0.8', '0.8', '14.4', '2011-10-26 23:59:59', '119');
INSERT INTO `jiesuan` VALUES ('151', '30', 'tt1', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-27 23:59:59', '120');
INSERT INTO `jiesuan` VALUES ('152', '33', 'tt3', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-27 23:59:59', '120');
INSERT INTO `jiesuan` VALUES ('153', '118', '盛夏光年', '0', '8', '8', '0.4', '0.4', '7.2', '2011-10-27 23:59:59', '120');
INSERT INTO `jiesuan` VALUES ('154', '152', '666666', '3', '0', '3', '0.15', '0.15', '2.7', '2011-10-28 23:59:59', '121');
INSERT INTO `jiesuan` VALUES ('155', '1', 'admin', '16', '0', '16', '0.8', '0.8', '14.4', '2011-10-28 23:59:59', '121');
INSERT INTO `jiesuan` VALUES ('156', '37', 'xin1', '4', '0', '4', '0.2', '0.2', '3.6', '2011-10-28 23:59:59', '121');
INSERT INTO `jiesuan` VALUES ('157', '198', '传奇M', '12', '0', '12', '0.6', '0.6', '10.8', '2011-10-28 23:59:59', '121');
INSERT INTO `jiesuan` VALUES ('158', '189', '胡世明', '12', '4', '16', '0.8', '0.8', '14.4', '2011-10-28 23:59:59', '121');
INSERT INTO `jiesuan` VALUES ('159', '118', '盛夏光年', '0', '2', '2', '0.1', '0.1', '1.8', '2011-10-28 23:59:59', '121');
INSERT INTO `jiesuan` VALUES ('160', '200', '轩168', '0', '0', '0', '0', '0', '0', '2011-10-28 23:59:59', '121');
INSERT INTO `jiesuan` VALUES ('161', '30', 'tt1', '5', '0', '5', '0.25', '0.25', '4.5', '2011-11-03 23:59:59', '127');
INSERT INTO `jiesuan` VALUES ('162', '33', 'tt3', '5', '0', '5', '0.25', '0.25', '4.5', '2011-11-03 23:59:59', '127');
INSERT INTO `jiesuan` VALUES ('163', '118', '盛夏光年', '0', '2.5', '2.5', '0.12', '0.12', '2.25', '2011-11-03 23:59:59', '127');
INSERT INTO `jiesuan` VALUES ('164', '1', 'admin', '5', '0', '5', '0.25', '0.25', '4.5', '2011-11-04 23:59:59', '128');
INSERT INTO `jiesuan` VALUES ('165', '87', '抉择', '5', '2.5', '7.5', '0.38', '0.38', '6.75', '2011-11-04 23:59:59', '128');
INSERT INTO `jiesuan` VALUES ('166', '95', '六月流觞', '4', '0', '4', '0.2', '0.2', '3.6', '2011-11-04 23:59:59', '128');
INSERT INTO `jiesuan` VALUES ('167', '89', '王超', '3', '0', '3', '0.15', '0.15', '2.7', '2011-11-04 23:59:59', '128');
INSERT INTO `jiesuan` VALUES ('168', '1', 'admin', '90', '0', '90', '4.5', '4.5', '81', '2011-11-05 23:59:59', '129');
INSERT INTO `jiesuan` VALUES ('169', '244', 'L', '12', '0', '12', '0.6', '0.6', '10.8', '2011-11-05 23:59:59', '129');
INSERT INTO `jiesuan` VALUES ('170', '212', 'LX2', '12', '0', '12', '0.6', '0.6', '10.8', '2011-11-05 23:59:59', '129');
INSERT INTO `jiesuan` VALUES ('171', '35', 'qq3', '0', '45', '45', '2.25', '2.25', '40.5', '2011-11-05 23:59:59', '129');
INSERT INTO `jiesuan` VALUES ('172', '30', 'tt1', '20', '0', '20', '1', '1', '18', '2011-11-06 23:59:59', '130');
INSERT INTO `jiesuan` VALUES ('173', '33', 'tt3', '20', '0', '20', '1', '1', '18', '2011-11-06 23:59:59', '130');
INSERT INTO `jiesuan` VALUES ('174', '118', '盛夏光年', '0', '10', '10', '0.5', '0.5', '9', '2011-11-06 23:59:59', '130');
INSERT INTO `jiesuan` VALUES ('175', '151', 'xiaosi', '4', '0', '4', '0.2', '0.2', '3.6', '2011-11-08 23:59:59', '132');
INSERT INTO `jiesuan` VALUES ('176', '37', 'xin1', '5', '0', '5', '0.25', '0.25', '4.5', '2011-11-08 23:59:59', '132');
INSERT INTO `jiesuan` VALUES ('177', '118', '盛夏光年', '0', '2.5', '2.5', '0.12', '0.12', '2.25', '2011-11-08 23:59:59', '132');
INSERT INTO `jiesuan` VALUES ('178', '30', 'tt1', '10', '0', '10', '0.5', '0.5', '9', '2011-11-09 23:59:59', '133');
INSERT INTO `jiesuan` VALUES ('179', '33', 'tt3', '10', '0', '10', '0.5', '0.5', '9', '2011-11-09 23:59:59', '133');
INSERT INTO `jiesuan` VALUES ('180', '118', '盛夏光年', '0', '5', '5', '0.25', '0.25', '4.5', '2011-11-09 23:59:59', '133');
INSERT INTO `jiesuan` VALUES ('181', '251', '02', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('182', '152', '666666', '16', '8', '24', '1.2', '1.2', '21.6', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('183', '1', 'admin', '270', '0', '270', '13.5', '13.5', '243', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('184', '224', 'hui', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('185', '258', 'LC', '8', '0', '8', '0.4', '0.4', '7.2', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('186', '35', 'qq3', '0', '35', '35', '1.75', '1.75', '31.5', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('187', '30', 'tt1', '67.5', '0', '67.5', '3.38', '3.38', '60.75', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('188', '33', 'tt3', '67.5', '0', '67.5', '3.38', '3.38', '60.75', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('189', '37', 'xin1', '20', '0', '20', '1', '1', '18', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('190', '193', 'ZGH', '120', '80', '200', '10', '10', '90', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('191', '118', '盛夏光年', '0', '33.75', '33.75', '1.69', '1.69', '30.38', '2011-11-10 23:59:59', '134');
INSERT INTO `jiesuan` VALUES ('192', '251', '02', '12', '0', '12', '0.6', '0.6', '10.8', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('193', '152', '666666', '20', '0', '20', '1', '1', '18', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('194', '1', 'admin', '122.5', '0', '122.5', '6.12', '6.12', '110.25', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('195', '244', 'L', '36', '24', '60', '3', '3', '54', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('196', '35', 'qq3', '0', '5', '5', '0.25', '0.25', '4.5', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('197', '30', 'tt1', '20', '0', '20', '1', '1', '18', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('198', '33', 'tt3', '20', '0', '20', '1', '1', '18', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('199', '37', 'xin1', '25', '0', '25', '1.25', '1.25', '22.5', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('200', '263', 'YMC', '2.5', '0', '2.5', '0.12', '0.12', '2.25', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('201', '193', 'ZGH', '31.5', '21', '52.5', '2.62', '2.62', '47.25', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('202', '118', '盛夏光年', '0', '22.5', '22.5', '1.12', '1.12', '20.25', '2011-11-11 23:59:59', '135');
INSERT INTO `jiesuan` VALUES ('203', '251', '02', '10.5', '0', '10.5', '0.52', '0.52', '9.45', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('204', '252', '03', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('205', '253', '04', '12', '0', '12', '0.6', '0.6', '10.8', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('206', '1', 'admin', '50', '0', '50', '2.5', '2.5', '45', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('207', '30', 'tt1', '30', '0', '30', '1.5', '1.5', '27', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('208', '33', 'tt3', '30', '0', '30', '1.5', '1.5', '27', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('209', '193', 'ZGH', '16.5', '0', '16.5', '0.82', '0.82', '14.85', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('210', '262', 'ZJH', '0', '25', '25', '1.25', '1.25', '22.5', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('211', '118', '盛夏光年', '0', '15', '15', '0.75', '0.75', '13.5', '2011-11-12 23:59:59', '136');
INSERT INTO `jiesuan` VALUES ('212', '30', 'tt1', '20', '0', '20', '1', '1', '18', '2011-11-13 23:59:59', '137');
INSERT INTO `jiesuan` VALUES ('213', '33', 'tt3', '20', '0', '20', '1', '1', '18', '2011-11-13 23:59:59', '137');
INSERT INTO `jiesuan` VALUES ('214', '118', '盛夏光年', '0', '10', '10', '0.5', '0.5', '9', '2011-11-13 23:59:59', '137');
INSERT INTO `jiesuan` VALUES ('215', '1', 'admin', '525', '0', '525', '26.25', '26.25', '450', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('216', '312', 'hzz', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('217', '258', 'LC', '8', '22', '30', '1.5', '1.5', '27', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('218', '259', 'LC1', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('219', '305', 'LCZ', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('220', '210', 'LX', '156', '0', '156', '7.8', '7.8', '140.4', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('221', '211', 'LX1', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('222', '31', 'qq1', '0', '87.5', '87.5', '4.38', '4.38', '78.75', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('223', '35', 'qq3', '250', '147.5', '397.5', '19.88', '19.88', '357.75', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('224', '129', 'qq4', '200', '0', '200', '10', '10', '180', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('225', '317', 'XXD', '20', '0', '20', '1', '1', '18', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('226', '263', 'YMC', '25', '0', '25', '1.25', '1.25', '22.5', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('227', '193', 'ZGH', '28.5', '0', '28.5', '1.42', '1.42', '25.65', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('228', '308', '现在', '25', '0', '25', '1.25', '1.25', '22.5', '2011-11-14 23:59:59', '138');
INSERT INTO `jiesuan` VALUES ('229', '1', 'admin', '70', '0', '70', '3.5', '3.5', '63', '2011-11-15 23:59:59', '139');
INSERT INTO `jiesuan` VALUES ('230', '258', 'LC', '8', '8', '16', '0.8', '0.8', '14.4', '2011-11-15 23:59:59', '139');
INSERT INTO `jiesuan` VALUES ('231', '259', 'LC1', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-15 23:59:59', '139');
INSERT INTO `jiesuan` VALUES ('232', '264', 'LC2', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-15 23:59:59', '139');
INSERT INTO `jiesuan` VALUES ('233', '210', 'LX', '20', '10', '30', '1.5', '1.5', '27', '2011-11-15 23:59:59', '139');
INSERT INTO `jiesuan` VALUES ('234', '35', 'qq3', '0', '12.5', '12.5', '0.62', '0.62', '11.25', '2011-11-15 23:59:59', '139');
INSERT INTO `jiesuan` VALUES ('235', '193', 'ZGH', '15', '0', '15', '0.75', '0.75', '13.5', '2011-11-15 23:59:59', '139');
INSERT INTO `jiesuan` VALUES ('236', '251', '02', '12', '0', '12', '0.6', '0.6', '10.8', '2011-11-16 23:59:59', '140');
INSERT INTO `jiesuan` VALUES ('237', '1', 'admin', '25', '0', '25', '1.25', '1.25', '22.5', '2011-11-16 23:59:59', '140');
INSERT INTO `jiesuan` VALUES ('238', '316', 'GCS', '20', '0', '20', '1', '1', '18', '2011-11-16 23:59:59', '140');
INSERT INTO `jiesuan` VALUES ('239', '224', 'hui', '15', '0', '15', '0.75', '0.75', '13.5', '2011-11-16 23:59:59', '140');
INSERT INTO `jiesuan` VALUES ('240', '210', 'LX', '20', '10', '30', '1.5', '1.5', '27', '2011-11-16 23:59:59', '140');
INSERT INTO `jiesuan` VALUES ('241', '30', 'tt1', '45', '0', '45', '2.25', '2.25', '40.5', '2011-11-16 23:59:59', '140');
INSERT INTO `jiesuan` VALUES ('242', '33', 'tt3', '45', '0', '45', '2.25', '2.25', '40.5', '2011-11-16 23:59:59', '140');
INSERT INTO `jiesuan` VALUES ('243', '118', '盛夏光年', '0', '22.5', '22.5', '1.12', '1.12', '20.25', '2011-11-16 23:59:59', '140');
INSERT INTO `jiesuan` VALUES ('244', '251', '02', '1.5', '0', '1.5', '0.08', '0.08', '1.35', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('245', '1', 'admin', '165', '0', '165', '8.25', '8.25', '148.5', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('246', '316', 'GCS', '20', '0', '20', '1', '1', '18', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('247', '224', 'hui', '30', '0', '30', '1.5', '1.5', '22.5', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('248', '258', 'LC', '0', '28', '28', '1.4', '1.4', '25.2', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('249', '259', 'LC1', '15', '0', '15', '0.75', '0.75', '13.5', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('250', '280', 'LC4', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('251', '210', 'LX', '20', '0', '20', '1', '1', '18', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('252', '31', 'qq1', '0', '12.5', '12.5', '0.62', '0.62', '11.25', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('253', '35', 'qq3', '35', '0', '35', '1.75', '1.75', '31.5', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('254', '129', 'qq4', '28', '0', '28', '1.4', '1.4', '25.2', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('255', '30', 'tt1', '70', '0', '70', '3.5', '3.5', '63', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('256', '33', 'tt3', '70', '0', '70', '3.5', '3.5', '63', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('257', '328', 'TXD', '0', '10', '10', '0.5', '0.5', '9', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('258', '263', 'YMC', '25', '0', '25', '1.25', '1.25', '22.5', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('259', '193', 'ZGH', '15', '0', '15', '0.75', '0.75', '13.5', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('260', '340', 'zxd', '8', '0', '8', '0.4', '0.4', '7.2', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('261', '198', '传奇M', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('262', '189', '胡世明', '6', '4', '10', '0.5', '0.5', '9', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('263', '330', '娟', '15', '0', '15', '0.75', '0.75', '13.5', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('264', '175', '李聪', '28', '14', '42', '2.1', '2.1', '37.8', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('265', '177', '李聪2', '6', '0', '6', '0.3', '0.3', '5.4', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('266', '118', '盛夏光年', '0', '35', '35', '1.75', '1.75', '31.5', '2011-11-17 23:59:59', '141');
INSERT INTO `jiesuan` VALUES ('267', '125', 'b1', '24', '0', '24', '1.2', '1.2', '21.6', '2011-11-22 23:59:59', '146');
INSERT INTO `jiesuan` VALUES ('268', '37', 'xin1', '10', '0', '10', '0.5', '0.5', '9', '2011-11-22 23:59:59', '146');
INSERT INTO `jiesuan` VALUES ('269', '118', '盛夏光年', '40', '20', '60', '3', '3', '54', '2011-11-22 23:59:59', '146');

-- ----------------------------
-- Table structure for `jiesuandate`
-- ----------------------------
DROP TABLE IF EXISTS `jiesuandate`;
CREATE TABLE `jiesuandate` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `JieSuanId` int(10) DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `JieSuanId` (`JieSuanId`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiesuandate
-- ----------------------------
INSERT INTO `jiesuandate` VALUES ('1', '1', '2011-06-30 23:59:59');
INSERT INTO `jiesuandate` VALUES ('2', '2', '2011-07-01 23:59:59');
INSERT INTO `jiesuandate` VALUES ('3', '3', '2011-07-02 23:59:59');
INSERT INTO `jiesuandate` VALUES ('4', '4', '2011-07-03 23:59:59');
INSERT INTO `jiesuandate` VALUES ('5', '5', '2011-07-04 23:59:59');
INSERT INTO `jiesuandate` VALUES ('6', '6', '2011-07-05 23:59:59');
INSERT INTO `jiesuandate` VALUES ('7', '7', '2011-07-06 23:59:59');
INSERT INTO `jiesuandate` VALUES ('8', '8', '2011-07-07 23:59:59');
INSERT INTO `jiesuandate` VALUES ('9', '9', '2011-07-08 23:59:59');
INSERT INTO `jiesuandate` VALUES ('10', '10', '2011-07-09 23:59:59');
INSERT INTO `jiesuandate` VALUES ('11', '11', '2011-07-10 23:59:59');
INSERT INTO `jiesuandate` VALUES ('12', '12', '2011-07-11 23:59:59');
INSERT INTO `jiesuandate` VALUES ('13', '13', '2011-07-12 23:59:59');
INSERT INTO `jiesuandate` VALUES ('14', '14', '2011-07-13 23:59:59');
INSERT INTO `jiesuandate` VALUES ('15', '15', '2011-07-14 23:59:59');
INSERT INTO `jiesuandate` VALUES ('16', '16', '2011-07-15 23:59:59');
INSERT INTO `jiesuandate` VALUES ('17', '17', '2011-07-16 23:59:59');
INSERT INTO `jiesuandate` VALUES ('18', '18', '2011-07-17 23:59:59');
INSERT INTO `jiesuandate` VALUES ('19', '19', '2011-07-18 23:59:59');
INSERT INTO `jiesuandate` VALUES ('21', '20', '2011-07-19 23:59:59');
INSERT INTO `jiesuandate` VALUES ('22', '21', '2011-07-20 23:59:59');
INSERT INTO `jiesuandate` VALUES ('23', '22', '2011-07-21 23:59:59');
INSERT INTO `jiesuandate` VALUES ('24', '23', '2011-07-22 23:59:59');
INSERT INTO `jiesuandate` VALUES ('25', '24', '2011-07-23 23:59:59');
INSERT INTO `jiesuandate` VALUES ('26', '25', '2011-07-24 23:59:59');
INSERT INTO `jiesuandate` VALUES ('27', '26', '2011-07-25 23:59:59');
INSERT INTO `jiesuandate` VALUES ('29', '27', '2011-07-26 23:59:59');
INSERT INTO `jiesuandate` VALUES ('30', '28', '2011-07-27 23:59:59');
INSERT INTO `jiesuandate` VALUES ('31', '29', '2011-07-28 23:59:59');
INSERT INTO `jiesuandate` VALUES ('32', '30', '2011-07-29 23:59:59');
INSERT INTO `jiesuandate` VALUES ('33', '31', '2011-07-30 23:59:59');
INSERT INTO `jiesuandate` VALUES ('34', '32', '2011-07-31 23:59:59');
INSERT INTO `jiesuandate` VALUES ('35', '33', '2011-08-01 23:59:59');
INSERT INTO `jiesuandate` VALUES ('36', '34', '2011-08-02 23:59:59');
INSERT INTO `jiesuandate` VALUES ('37', '35', '2011-08-03 23:59:59');
INSERT INTO `jiesuandate` VALUES ('38', '36', '2011-08-04 23:59:59');
INSERT INTO `jiesuandate` VALUES ('39', '37', '2011-08-05 23:59:59');
INSERT INTO `jiesuandate` VALUES ('40', '38', '2011-08-06 23:59:59');
INSERT INTO `jiesuandate` VALUES ('41', '39', '2011-08-07 23:59:59');
INSERT INTO `jiesuandate` VALUES ('42', '40', '2011-08-08 23:59:59');
INSERT INTO `jiesuandate` VALUES ('43', '41', '2011-08-09 23:59:59');
INSERT INTO `jiesuandate` VALUES ('44', '42', '2011-08-10 23:59:59');
INSERT INTO `jiesuandate` VALUES ('45', '43', '2011-08-11 23:59:59');
INSERT INTO `jiesuandate` VALUES ('46', '44', '2011-08-12 23:59:59');
INSERT INTO `jiesuandate` VALUES ('47', '45', '2011-08-13 23:59:59');
INSERT INTO `jiesuandate` VALUES ('48', '46', '2011-08-14 23:59:59');
INSERT INTO `jiesuandate` VALUES ('49', '47', '2011-08-15 23:59:59');
INSERT INTO `jiesuandate` VALUES ('50', '48', '2011-08-16 23:59:59');
INSERT INTO `jiesuandate` VALUES ('51', '49', '2011-08-17 23:59:59');
INSERT INTO `jiesuandate` VALUES ('52', '50', '2011-08-18 23:59:59');
INSERT INTO `jiesuandate` VALUES ('53', '51', '2011-08-19 23:59:59');
INSERT INTO `jiesuandate` VALUES ('54', '52', '2011-08-20 23:59:59');
INSERT INTO `jiesuandate` VALUES ('55', '53', '2011-08-21 23:59:59');
INSERT INTO `jiesuandate` VALUES ('56', '54', '2011-08-22 23:59:59');
INSERT INTO `jiesuandate` VALUES ('57', '55', '2011-08-23 23:59:59');
INSERT INTO `jiesuandate` VALUES ('58', '56', '2011-08-24 23:59:59');
INSERT INTO `jiesuandate` VALUES ('59', '57', '2011-08-25 23:59:59');
INSERT INTO `jiesuandate` VALUES ('60', '58', '2011-08-26 23:59:59');
INSERT INTO `jiesuandate` VALUES ('61', '59', '2011-08-27 23:59:59');
INSERT INTO `jiesuandate` VALUES ('62', '60', '2011-08-28 23:59:59');
INSERT INTO `jiesuandate` VALUES ('63', '61', '2011-08-29 23:59:59');
INSERT INTO `jiesuandate` VALUES ('64', '62', '2011-08-30 23:59:59');
INSERT INTO `jiesuandate` VALUES ('65', '63', '2011-08-31 23:59:59');
INSERT INTO `jiesuandate` VALUES ('66', '64', '2011-09-01 23:59:59');
INSERT INTO `jiesuandate` VALUES ('67', '65', '2011-09-02 23:59:59');
INSERT INTO `jiesuandate` VALUES ('68', '66', '2011-09-03 23:59:59');
INSERT INTO `jiesuandate` VALUES ('69', '67', '2011-09-04 23:59:59');
INSERT INTO `jiesuandate` VALUES ('70', '68', '2011-09-05 23:59:59');
INSERT INTO `jiesuandate` VALUES ('71', '69', '2011-09-06 23:59:59');
INSERT INTO `jiesuandate` VALUES ('72', '70', '2011-09-07 23:59:59');
INSERT INTO `jiesuandate` VALUES ('73', '71', '2011-09-08 23:59:59');
INSERT INTO `jiesuandate` VALUES ('74', '72', '2011-09-09 23:59:59');
INSERT INTO `jiesuandate` VALUES ('75', '73', '2011-09-10 23:59:59');
INSERT INTO `jiesuandate` VALUES ('76', '74', '2011-09-11 23:59:59');
INSERT INTO `jiesuandate` VALUES ('77', '75', '2011-09-12 23:59:59');
INSERT INTO `jiesuandate` VALUES ('78', '76', '2011-09-13 23:59:59');
INSERT INTO `jiesuandate` VALUES ('79', '77', '2011-09-14 23:59:59');
INSERT INTO `jiesuandate` VALUES ('80', '78', '2011-09-15 23:59:59');
INSERT INTO `jiesuandate` VALUES ('81', '79', '2011-09-16 23:59:59');
INSERT INTO `jiesuandate` VALUES ('82', '80', '2011-09-17 23:59:59');
INSERT INTO `jiesuandate` VALUES ('83', '81', '2011-09-18 23:59:59');
INSERT INTO `jiesuandate` VALUES ('84', '82', '2011-09-19 23:59:59');
INSERT INTO `jiesuandate` VALUES ('85', '83', '2011-09-20 23:59:59');
INSERT INTO `jiesuandate` VALUES ('86', '84', '2011-09-21 23:59:59');
INSERT INTO `jiesuandate` VALUES ('87', '85', '2011-09-22 23:59:59');
INSERT INTO `jiesuandate` VALUES ('88', '86', '2011-09-23 23:59:59');
INSERT INTO `jiesuandate` VALUES ('89', '87', '2011-09-24 23:59:59');
INSERT INTO `jiesuandate` VALUES ('90', '88', '2011-09-25 23:59:59');
INSERT INTO `jiesuandate` VALUES ('91', '89', '2011-09-26 23:59:59');
INSERT INTO `jiesuandate` VALUES ('92', '90', '2011-09-27 23:59:59');
INSERT INTO `jiesuandate` VALUES ('93', '91', '2011-09-28 23:59:59');
INSERT INTO `jiesuandate` VALUES ('94', '92', '2011-09-29 23:59:59');
INSERT INTO `jiesuandate` VALUES ('95', '93', '2011-09-30 23:59:59');
INSERT INTO `jiesuandate` VALUES ('96', '94', '2011-10-01 23:59:59');
INSERT INTO `jiesuandate` VALUES ('97', '95', '2011-10-02 23:59:59');
INSERT INTO `jiesuandate` VALUES ('98', '96', '2011-10-03 23:59:59');
INSERT INTO `jiesuandate` VALUES ('99', '97', '2011-10-04 23:59:59');
INSERT INTO `jiesuandate` VALUES ('100', '98', '2011-10-05 23:59:59');
INSERT INTO `jiesuandate` VALUES ('101', '99', '2011-10-06 23:59:59');
INSERT INTO `jiesuandate` VALUES ('102', '100', '2011-10-07 23:59:59');
INSERT INTO `jiesuandate` VALUES ('103', '101', '2011-10-08 23:59:59');
INSERT INTO `jiesuandate` VALUES ('104', '102', '2011-10-09 23:59:59');
INSERT INTO `jiesuandate` VALUES ('105', '103', '2011-10-10 23:59:59');
INSERT INTO `jiesuandate` VALUES ('106', '104', '2011-10-11 23:59:59');
INSERT INTO `jiesuandate` VALUES ('107', '105', '2011-10-12 23:59:59');
INSERT INTO `jiesuandate` VALUES ('108', '106', '2011-10-13 23:59:59');
INSERT INTO `jiesuandate` VALUES ('109', '107', '2011-10-14 23:59:59');
INSERT INTO `jiesuandate` VALUES ('110', '108', '2011-10-15 23:59:59');
INSERT INTO `jiesuandate` VALUES ('111', '109', '2011-10-16 23:59:59');
INSERT INTO `jiesuandate` VALUES ('112', '110', '2011-10-17 23:59:59');
INSERT INTO `jiesuandate` VALUES ('113', '111', '2011-10-18 23:59:59');
INSERT INTO `jiesuandate` VALUES ('114', '112', '2011-10-19 23:59:59');
INSERT INTO `jiesuandate` VALUES ('115', '113', '2011-10-20 23:59:59');
INSERT INTO `jiesuandate` VALUES ('116', '114', '2011-10-21 23:59:59');
INSERT INTO `jiesuandate` VALUES ('117', '115', '2011-10-22 23:59:59');
INSERT INTO `jiesuandate` VALUES ('118', '116', '2011-10-23 23:59:59');
INSERT INTO `jiesuandate` VALUES ('119', '117', '2011-10-24 23:59:59');
INSERT INTO `jiesuandate` VALUES ('120', '118', '2011-10-25 23:59:59');
INSERT INTO `jiesuandate` VALUES ('121', '119', '2011-10-26 23:59:59');
INSERT INTO `jiesuandate` VALUES ('122', '120', '2011-10-27 23:59:59');
INSERT INTO `jiesuandate` VALUES ('123', '121', '2011-10-28 23:59:59');
INSERT INTO `jiesuandate` VALUES ('124', '122', '2011-10-29 23:59:59');
INSERT INTO `jiesuandate` VALUES ('125', '123', '2011-10-30 23:59:59');
INSERT INTO `jiesuandate` VALUES ('126', '124', '2011-10-31 23:59:59');
INSERT INTO `jiesuandate` VALUES ('127', '125', '2011-11-01 23:59:59');
INSERT INTO `jiesuandate` VALUES ('128', '126', '2011-11-02 23:59:59');
INSERT INTO `jiesuandate` VALUES ('129', '127', '2011-11-03 23:59:59');
INSERT INTO `jiesuandate` VALUES ('130', '128', '2011-11-04 23:59:59');
INSERT INTO `jiesuandate` VALUES ('131', '129', '2011-11-05 23:59:59');
INSERT INTO `jiesuandate` VALUES ('132', '130', '2011-11-06 23:59:59');
INSERT INTO `jiesuandate` VALUES ('133', '131', '2011-11-07 23:59:59');
INSERT INTO `jiesuandate` VALUES ('134', '132', '2011-11-08 23:59:59');
INSERT INTO `jiesuandate` VALUES ('135', '133', '2011-11-09 23:59:59');
INSERT INTO `jiesuandate` VALUES ('136', '134', '2011-11-10 23:59:59');
INSERT INTO `jiesuandate` VALUES ('137', '135', '2011-11-11 23:59:59');
INSERT INTO `jiesuandate` VALUES ('138', '136', '2011-11-12 23:59:59');
INSERT INTO `jiesuandate` VALUES ('139', '137', '2011-11-13 23:59:59');
INSERT INTO `jiesuandate` VALUES ('140', '138', '2011-11-14 23:59:59');
INSERT INTO `jiesuandate` VALUES ('141', '139', '2011-11-15 23:59:59');
INSERT INTO `jiesuandate` VALUES ('142', '140', '2011-11-16 23:59:59');
INSERT INTO `jiesuandate` VALUES ('143', '141', '2011-11-17 23:59:59');
INSERT INTO `jiesuandate` VALUES ('144', '142', '2011-11-18 23:59:59');
INSERT INTO `jiesuandate` VALUES ('145', '143', '2011-11-19 23:59:59');
INSERT INTO `jiesuandate` VALUES ('146', '144', '2011-11-20 23:59:59');
INSERT INTO `jiesuandate` VALUES ('147', '145', '2011-11-21 23:59:59');
INSERT INTO `jiesuandate` VALUES ('148', '146', '2011-11-22 23:59:59');
INSERT INTO `jiesuandate` VALUES ('149', '147', '2011-11-23 23:59:59');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `PasswordA` varchar(50) DEFAULT NULL,
  `JiFen` double DEFAULT NULL,
  `UserPath` text,
  `TuiJianRen` varchar(50) DEFAULT NULL,
  `GuanLiRen` varchar(50) DEFAULT NULL,
  `AgencyName` varchar(50) DEFAULT NULL,
  `SetMealId` int(10) DEFAULT NULL,
  `TrueName` varchar(50) DEFAULT NULL,
  `CardNo` varchar(50) DEFAULT NULL,
  `KaiHuBank` varchar(50) DEFAULT NULL,
  `KaiHuAddress` varchar(50) DEFAULT NULL,
  `KaiHuAccount` varchar(50) DEFAULT NULL,
  `ZhiFuBaoName` varchar(50) DEFAULT NULL,
  `ZhiFuBao` varchar(250) DEFAULT NULL,
  `Mobile` varchar(50) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `FenZhi` int(10) DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  `Status` int(10) DEFAULT NULL,
  `Money` double DEFAULT NULL,
  `ZuoQu` int(10) DEFAULT NULL,
  `YouQu` int(10) DEFAULT NULL,
  `JiangJin` double DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `SetMealId` (`SetMealId`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'admin', 'ed1cee96ea8cf9dfd3d078378dead01a', 'ed1cee96ea8cf9dfd3d078378dead01a', '100.15', '', '', '', 'admin', '5', '海外银河', '身份证', '海外银河', '桂林工行', '桂林工行', '', '', '18615339464', '', '1', '2011-06-27 11:28:27', '1', '0', '7568', '1217', '1530.05');
INSERT INTO `member` VALUES ('2', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, '0', '0000-00-00 00:00:00', '0', '0', '0', '0', '0');
INSERT INTO `member` VALUES ('3', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, '0', '0000-00-00 00:00:00', '0', '0', '0', '0', '0');
INSERT INTO `member` VALUES ('4', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, '0', '0000-00-00 00:00:00', '0', '0', '0', '0', '0');
INSERT INTO `member` VALUES ('5', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, '0', '0000-00-00 00:00:00', '0', '0', '0', '0', '0');
INSERT INTO `member` VALUES ('6', 'tt2', '96E79218965EB72C92A549DD5A330112', '3AFD5B9C856A8BAD90C17B32E735E60B', null, '1', 'admin', 'admin', 'admin', '1', null, null, '', null, '', '', '', '18615323314', '1784999000', '1', '2017-07-05 22:20:14', '1', '2700', '3600', '1200', '-20');
INSERT INTO `member` VALUES ('7', 'wang333', '3AFD5B9C856A8BAD90C17B32E735E60B', '3AFD5B9C856A8BAD90C17B32E735E60B', null, '1', 'admin', 'admin', 'admin', '1', null, null, '工商银行', null, '123456', '', '', '18615321464', '1784999000', '2', '2017-07-05 22:22:20', '0', '0', '0', '0', '-20');
INSERT INTO `member` VALUES ('8', 'wang1', '3AFD5B9C856A8BAD90C17B32E735E60B', '3AFD5B9C856A8BAD90C17B32E735E60B', null, '1,6', 'admin', 'tt2', 'admin', '1', null, null, '', null, '', '', '', '18615322464', '1784999000', '1', '2017-07-09 13:48:17', '1', '200', '0', '2400', '-20');
INSERT INTO `member` VALUES ('9', 'wang2', '3AFD5B9C856A8BAD90C17B32E735E60B', '3AFD5B9C856A8BAD90C17B32E735E60B', '1500', '1,6', 'admin', 'tt2', 'admin', '1', null, null, '', null, '', '', '', '18615334464', '1784999000', '2', '2017-07-10 10:49:33', '0', '1700', '1200', '0', '1500');
INSERT INTO `member` VALUES ('10', 'wang3333', '3AFD5B9C856A8BAD90C17B32E735E60B', '3AFD5B9C856A8BAD90C17B32E735E60B', null, '1,6,8', 'admin', 'wang1', 'admin', '1', null, null, '工商银行', null, '621226160300', '', '', '18615335464', '1784999000', '1', '2017-07-15 22:11:58', '0', '0', '0', '0', '-20');
INSERT INTO `member` VALUES ('11', 'wang33311', '3AFD5B9C856A8BAD90C17B32E735E60B', '3AFD5B9C856A8BAD90C17B32E735E60B', null, '1,7', 'admin', 'wang333', 'admin', '1', null, null, '工商银行', null, '621226160300', '', '', '18615129464', '1784999000', '1', '2017-07-16 11:34:15', '0', '0', '0', '0', '-20');
INSERT INTO `member` VALUES ('12', 'nnn1', '96E79218965EB72C92A549DD5A330112', '96E79218965EB72C92A549DD5A330112', null, '1,6,8', 'admin', 'wang1', 'admin', '1', null, null, '', null, '', '', '', '18615331111', '123456', '2', '2017-10-22 19:38:31', '1', '0', '1200', '0', '-20');
INSERT INTO `member` VALUES ('13', 'nnn21', '96E79218965EB72C92A549DD5A330112', '96E79218965EB72C92A549DD5A330112', null, '1,6,8,12', 'nnn1', 'nnn1', 'admin', '1', null, null, '', null, '', '', '', '18615331111', '123456', '1', '2017-10-22 19:42:58', '1', '0', '0', '0', '-20');
INSERT INTO `member` VALUES ('14', 'nnn112', '96E79218965EB72C92A549DD5A330112', '96E79218965EB72C92A549DD5A330112', null, '1,6,9', 'admin', 'wang2', 'admin', '1', null, null, '', null, '', '', '', '18611239464', '123456', '1', '2017-10-22 22:09:09', '1', '1200', '0', '0', '-20');
INSERT INTO `member` VALUES ('15', 'bbbb', 'E10ADC3949BA59ABBE56E057F20F883E', 'E10ADC3949BA59ABBE56E057F20F883E', null, '1,6,9,14', 'admin', 'nnn112', 'admin', '1', null, null, '工商银行', null, '', '', '', '18612349464', '', '1', '2017-10-24 14:57:22', '0', '3600', '0', '0', '-20');
INSERT INTO `member` VALUES ('31', null, null, null, '55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('32', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('33', null, null, null, '0.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('34', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('39', null, null, null, '0.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('40', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('47', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('48', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('49', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('50', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('51', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('52', null, null, null, '0.25', null, null, null, null, null, null, null, null, null, null, null, null, '18220190913', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('53', null, null, null, '0.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('54', null, null, null, '0.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('55', null, null, null, '0.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('56', null, null, null, '0.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('57', 'oosCa08foATLYybMRq1QL78dU6p0', '1', null, '0.15', null, null, null, null, null, null, null, null, null, null, null, null, '15313661369', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('58', 'oosCa08foATLYybMRq1QL78dU6p0', '1', null, '0.15', null, null, null, null, null, null, null, null, null, null, null, null, '15313669999', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('59', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('60', 'oosCa0_zf-uTMn6O4CGSY_VsvJAI', '1', null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, '15313661369', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('61', 'oosCa0_zf-uTMn6O4CGSY_VsvJAI', '1', null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, '15313669999', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('62', null, null, null, '0.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('63', null, null, null, '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `modulefield`
-- ----------------------------
DROP TABLE IF EXISTS `modulefield`;
CREATE TABLE `modulefield` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `ModuleId` int(10) DEFAULT NULL,
  `FieldInfo` varchar(50) DEFAULT NULL,
  `FieldName` varchar(250) DEFAULT NULL,
  `FieldInfoA` varchar(250) DEFAULT NULL,
  `FieldOrder` int(10) DEFAULT NULL,
  `FieldDataType` varchar(50) DEFAULT NULL,
  `HtmlType` int(10) DEFAULT NULL,
  `DefaultValue` varchar(250) DEFAULT NULL,
  `Width` varchar(50) DEFAULT NULL,
  `Height` varchar(50) DEFAULT NULL,
  `IsShow` int(10) DEFAULT NULL,
  `ListWidth` varchar(50) DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `ModuleId` (`ModuleId`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modulefield
-- ----------------------------
INSERT INTO `modulefield` VALUES ('15', '5', '标题', 'Title', null, '1', 'Text(255)', '1', null, '250px', '0', '1', null, '2011-05-30 19:17:13');
INSERT INTO `modulefield` VALUES ('16', '5', '内容', 'Content', null, '2', 'Memo', '3', null, '98%', '500px', '0', null, '2011-05-30 19:18:04');
INSERT INTO `modulefield` VALUES ('17', '9', '标题', 'Title', null, '1', 'Text(255)', '1', null, '400px', '0', '1', null, '2011-05-30 21:32:07');
INSERT INTO `modulefield` VALUES ('18', '9', '作者', 'Author', null, '2', 'Text(255)', '1', null, '100px', '0', '1', null, '2011-05-30 21:33:19');
INSERT INTO `modulefield` VALUES ('20', '8', '内容', 'Content', null, '1', 'Text(255)', '3', null, '98%', '500px', '1', null, '2011-05-30 21:34:40');
INSERT INTO `modulefield` VALUES ('21', '9', '点击数', 'Hits', null, '4', 'int', '1', '0', '60px', '0', '1', null, '2011-05-30 22:38:51');
INSERT INTO `modulefield` VALUES ('22', '9', '来源', 'Source', '文章的出处', '4', 'Text(255)', '1', null, '200px', '0', '1', null, '2011-05-30 22:39:47');
INSERT INTO `modulefield` VALUES ('23', '9', '副标题', 'SubTitle', '文章的副标题', '2', 'Text(255)', '1', null, '400px', '0', '0', null, '2011-05-30 22:41:51');
INSERT INTO `modulefield` VALUES ('25', '9', '是否置顶', 'IsTop', null, '5', 'Text(255)', '6', '不置顶,0|置顶,1', '0', '0', '1', '80px', '2011-05-31 00:48:17');
INSERT INTO `modulefield` VALUES ('26', '9', '新闻图片', 'PicUrl', null, '4', 'Text(255)', '7', null, '120px', '0', '1', null, '2011-06-01 17:23:50');
INSERT INTO `modulefield` VALUES ('27', '10', '内容', 'Content', null, '1', 'Memo', '3', null, '98%', '500px', '1', null, '2011-06-02 12:02:08');
INSERT INTO `modulefield` VALUES ('28', '9', '内容', 'Content', null, '4', 'Memo', '3', null, '98%', '500px', '0', null, '2011-06-02 12:21:25');
INSERT INTO `modulefield` VALUES ('29', '11', '用途', 'Yongtu', null, '1', 'Text(255)', '4', '爱情,爱情|生日,生日', '0', '0', '1', '0', '2011-06-20 17:14:32');
INSERT INTO `modulefield` VALUES ('30', '12', '内容', 'content', null, '1', 'Memo', '3', null, '98%', '500px', '0', '0', '2011-06-30 23:02:23');
INSERT INTO `modulefield` VALUES ('31', '13', '标题', 'Title', null, '1', 'Text(255)', '1', null, '400', '0', '1', '20%', '2011-06-30 23:03:58');
INSERT INTO `modulefield` VALUES ('32', '13', '内容', 'Content', null, '2', 'Memo', '3', null, '98%', '400px', '0', null, '2011-06-30 23:04:32');
INSERT INTO `modulefield` VALUES ('33', '13', '添加时间', 'AddDate', null, '3', 'Date', '1', null, '100px', '0', '1', '15%', '2011-06-30 23:05:40');
INSERT INTO `modulefield` VALUES ('34', '14', '产品名称', 'Name', null, '1', 'Text(255)', '1', null, '400px', '0', '1', '0', '2011-06-30 23:24:02');
INSERT INTO `modulefield` VALUES ('35', '14', '产品图片', 'Picture', null, '2', 'Text(255)', '7', null, '100px', '0', '1', '0', '2011-06-30 23:24:49');
INSERT INTO `modulefield` VALUES ('36', '14', '产品介绍', 'Content', null, '3', 'Memo', '3', null, '98%', '400px', '0', '0', '2011-06-30 23:25:23');

-- ----------------------------
-- Table structure for `modulelist`
-- ----------------------------
DROP TABLE IF EXISTS `modulelist`;
CREATE TABLE `modulelist` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `ModuleName` varchar(250) DEFAULT NULL,
  `ModuleTableName` varchar(250) DEFAULT NULL,
  `ModuleInfo` text,
  `AddDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modulelist
-- ----------------------------
INSERT INTO `modulelist` VALUES ('12', '单篇文章', 'SinglePage', null, '2011-06-30 23:01:37');
INSERT INTO `modulelist` VALUES ('13', '文章系统', 'Article', null, '2011-06-30 23:02:55');
INSERT INTO `modulelist` VALUES ('14', '产品系统', 'ChanPin', null, '2011-06-30 23:23:22');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `SortId` int(10) DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `TitleRed` int(10) DEFAULT NULL,
  `Conent` text,
  `AddDate` timestamp NULL DEFAULT NULL,
  `IsTop` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `SortId` (`SortId`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('49', '7', '在线充值', '0', '<SPAN style=\"FONT-SIZE: 10.5pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><FONT face=宋体><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Verdana\'; mso-spacerun: \'yes\'\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Verdana\'; mso-spacerun: \'yes\'\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">自助充值</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">请点击：</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><SPAN><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN><A href=\"http://call.jygeili.com/astgo/wap/pay.php?action=func_pay\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,122,216); FONT-FAMILY: \'黑体\'; mso-spacerun: \'yes\'\">http://call.jygeili.com/astgo/wap/pay.php?action=func_pay</SPAN></A></SPAN></P><!--EndFragment--></SPAN></SPAN></SPAN></SPAN></FONT></SPAN>', '2011-06-27 23:40:52', '0');
INSERT INTO `news` VALUES ('50', '6', '购买货币说明', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">中</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">国工商银行&nbsp;户名：海外银河&nbsp;&nbsp;卡号：<FONT face=瀹嬩綋>622202210300703xxxx</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工商银行网上银行：<FONT face=瀹嬩綋>www.icbc.com.cn/icbc</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;中国建设银行&nbsp;户名：吕荣国&nbsp;&nbsp;卡号：<FONT face=瀹嬩綋>622202210300703xxxx<SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN></FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;建设银行网上银行：<FONT face=瀹嬩綋>www.ccb.com/cn/home</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;中国邮政储蓄银行&nbsp;户名：吕荣国&nbsp;卡号：<FONT face=瀹嬩綋>622202210300703xxxx<SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN></FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮政储蓄网上银行：</SPAN><SPAN><A href=\"https://pbank.psbc.com/\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">https://pbank.psbc.com</SPAN></A></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;支付宝&nbsp;&nbsp;户名：吕荣国&nbsp;&nbsp;&nbsp;帐号：<FONT face=瀹嬩綋>15078342871</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;支付宝网址：</SPAN><SPAN><A href=\"https://www.alipay.com/\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">https://www.alipay.com/</SPAN></A></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">注：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">1<FONT face=宋体>、代理商向以上任一帐号汇款均可，购买电子货币请申请</FONT><FONT face=瀹嬩綋>100</FONT><FONT face=宋体>的整数倍；为了区分各会员的汇款，汇款时必须加上尾数，尾数自己设定（如汇款</FONT><FONT face=瀹嬩綋>300</FONT><FONT face=宋体>元，可以汇</FONT><FONT face=瀹嬩綋>300.03</FONT><FONT face=宋体>元），</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,51); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">没有加尾数的汇款一律不发放货币</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">2<FONT face=宋体>、汇款成功后请马上留言给客服</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,51); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">QQ<FONT face=宋体>（</FONT><FONT face=宋体>）</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">注明会员号，货币数，尾数和银行类型（工行、建行或邮政）即可！发送短信后公司<FONT face=瀹嬩綋>10</FONT><FONT face=宋体>分钟内发放电子货币，刷新页面即可查看；</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">3<FONT face=宋体>、</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,51); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">一次性购买货币10<FONT face=瀹嬩綋>00</FONT><FONT face=宋体>元：D</FONT><FONT face=宋体>套餐奖励20</FONT><FONT face=宋体>元；E</FONT><FONT face=宋体>套餐奖励4</FONT><FONT face=瀹嬩綋>0</FONT><FONT face=宋体>元；F</FONT><FONT face=宋体>套餐奖励8</FONT><FONT face=瀹嬩綋>0</FONT><FONT face=宋体>元&nbsp;</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,51); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,51); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp; 一次性购买货币5<FONT face=瀹嬩綋>00</FONT><FONT face=宋体>元：E</FONT><FONT face=宋体>套餐奖励15</FONT><FONT face=宋体>元；F</FONT><FONT face=宋体>套餐奖励30</FONT><FONT face=宋体>元</FONT></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,51); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp; 低于500元货币数不设奖励</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\">&nbsp;</P><!--EndFragment-->', '2011-06-27 23:44:03', '0');
INSERT INTO `news` VALUES ('51', '8', '客服中心', '0', '<DIV style=\"PADDING-RIGHT: 30px; PADDING-LEFT: 30px; LINE-HEIGHT: 23px; PADDING-TOP: 20px\"><P><FONT color=#ff0033>QQ：56236821</FONT></P><P><FONT color=#ff0033>QQ：56235821</FONT></P><P>注：</P><P>客服仅处理：购买货币、修改资料、还原密码、发放卡密，其余问题均不回复！请直奔主题，问话简洁，谢谢！</P><P>&nbsp;</P></DIV>', '2011-06-27 23:45:37', '0');
INSERT INTO `news` VALUES ('52', '9', '互联中国购物须知', '0', '<P align=left>本服务协议双方为互联中国有限公司（以下简称公司）与互联中国有限公司顾客（以下简称顾客），本服务协议具有合同效力。用户在使用互联中国提供的各项服务的同时，承诺接受并遵守各项相关规则的规定。互联中国有权根据需要不时地制定、修改本协议或各类规则，如本协议有任何变更，互联中国将在网站上刊载公告，通知用户。 <BR>顾客权利：<BR>01、顾客有公司发展规划知情权；<BR>02、顾客有公司发展计划制订和参与权；<BR>03、顾客有公司产品使用及最低折扣权；<BR>04、顾客有公司任何产品购买权；<BR>05、顾客有公司业务市场开拓权；<BR>06、顾客有个人资料修改权；<BR>07、顾客有公司消费返利获得权<BR>顾客义务：<BR>01、顾客有义务遵守国家相关法律；<BR>02、顾客有义务遵守公司顾客守则；<BR>03、顾客有义务配合公司处理各项相关事务；<BR>04、顾客有义务维护公司利益不受侵犯；<BR>05、顾客有义务申请套餐时填写真实个人资料；<BR>06、顾客有义务帮助其它顾客掌握公司各项业务知识和技能 <BR>公司权利：<BR>01、公司有权利调阅顾客资料；<BR>02、公司有权利对违规顾客进行相关处罚；<BR>03、公司有权利制订各项政策方针与积分返利方案；<BR>04、公司有权利对网站的版面、功能进行修改；<BR>05、公司有权利对顾客守则进行合理化制订和修改；<BR>06、公司有权利对违规帐户进行冻结<BR>公司义务：<BR>01、公司有义务为顾客提供一个稳定、优质的发展创业平台；<BR>02、公司有义务维持网站与产品系统的稳定；<BR>03、公司有义务提升客服服务；<BR>04、公司有义务每天准时发放顾客工资；<BR>05、公司有义务提升产品品质并不断开发新产品；<BR>06、公司有义务维护、规范和管理市场行为；<BR>07、公司有义务营造一个公开、公正、公平的市场环境；<BR>08、公司有义务制订发展方针并公开发布；<BR>09、公司有义务制止市场各类违规行为；<BR>10、公司有义务对顾客资料严格保密<BR><BR>行为规范：<BR>01、严禁攻击公司网站系统、产品系统；<BR>02、严禁使用各种违规手段对公司顾客网络进行非法布局和攻击；<BR>03、严禁推荐军人、邪教人员等从事互联中国；<BR>04、严禁盗取顾客资料及其奖金或是盗用顾客充值卡； <BR>05、严禁夸大宣传公司形象和产品功能；<BR>06、严禁使用欺诈手段从事互联中国各项销售业务； <BR>07、未经顾客本人同意，服务中心不得擅自更改顾客帐号密码.<BR>处罚措施：<BR>01、一级警告：口头警告，立刻停止违规行为；<BR>02、二级警告：一级警告无效立即进入二级警告，暂停当事人工资发放直至停止其违规行为；<BR>03、三级警告：二级警告无效立即进入三级警告，暂停当事人工资发放并没收其一周工资；<BR>04、冻结帐号：三级警告无效，永久冻结当事人ID <BR>最终解释权归互联中国所有. </P>', '2011-06-28 10:55:01', '0');
INSERT INTO `news` VALUES ('54', '2', '互联中国积分计划', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P><STRONG>套餐设置</STRONG><TABLE style=\"PADDING-RIGHT: 5.4pt; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0pt; MARGIN-LEFT: 2.4pt; PADDING-TOP: 0pt; BORDER-COLLAPSE: collapse; mso-table-layout-alt: fixed\"><TBODY><TR><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: rgb(204,204,204) 0.75pt solid; WIDTH: 41.35pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: 0.7500pt solid rgb(204,204,204); mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=55><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">套餐</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 39pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=52><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">资格</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 48pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=64><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">注册</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 34.5pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=46><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">积分</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 72pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=96><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">话费</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 38.25pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=51><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">折后</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 37.5pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=50><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">提成</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 36pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=48><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">津贴</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 36pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=48><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">分红</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: rgb(204,204,204) 0.75pt solid; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 45pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=60><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">日封顶</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: rgb(204,204,204) 0.75pt solid; WIDTH: 41.35pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: 0.7500pt solid rgb(204,204,204); mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=55><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">A<FONT face=宋体>套餐</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 39pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=52><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">顾客</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 48pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=64><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">25</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\">元</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 34.5pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=46><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 72pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=96><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: justify\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;25</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\">元</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">话费</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 38.25pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=51><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0.12</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 37.5pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=50><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 36pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=48><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 36pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=48><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 45pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=60><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0<FONT face=宋体>元</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: rgb(204,204,204) 0.75pt solid; WIDTH: 41.35pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: 0.7500pt solid rgb(204,204,204); mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=55><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">B<FONT face=宋体>套餐&nbsp;</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 39pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=52><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 48pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=64><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">10</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">0<FONT face=宋体>元&nbsp;</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 34.5pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=46><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\">4</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 72pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=96><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">17</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">0<FONT face=宋体>元</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">话费</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 38.25pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=51><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0.07</SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 37.5pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=50><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\">3</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 36pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=48><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 36pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=48><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 45pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=60><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\">5</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">0<FONT face=宋体>元</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: rgb(204,204,204) 0.75pt solid; WIDTH: 41.35pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: 0.7500pt solid rgb(204,204,204); mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=55><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">C<FONT face=宋体>套餐</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 39pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=52><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">代理商</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 48pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=64><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">25</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">0<FONT face=宋体>元</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 34.5pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=46><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">10</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 72pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=96><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><FONT face=宋体>50</FONT>0<FONT face=宋体>元</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">话费</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 38.25pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=51><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0.06</SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 37.5pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=50><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\">3</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 36pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=48><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">8%</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 36pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=48><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 45pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=60><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'\">2</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">00<FONT face=宋体>元</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: rgb(204,204,204) 0.75pt solid; WIDTH: 41.35pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: 0.7500pt solid rgb(204,204,204); mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=55><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">D<FONT face=宋体>套餐</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 39pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=52><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">代理商</SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BACKGROUND: rgb(255,255,238); PADDING-BOTTOM: 3pt; BORDER-LEFT: medium none; WIDTH: 48pt; PADDING-TOP: 3pt; BORDER-BOTTOM: rgb(204,204,204) 0.75pt solid; mso-border-left-alt: none; mso-border-right-alt: 0.7500pt solid rgb(204,204,204); mso-border-top-alt: 0.7500pt solid rgb(204,204,204); mso-border-bottom-alt: 0.7500pt solid rgb(204,204,204)\" vAlign=top width=64><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-ALIGN: center\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">50</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">0<FONT face=宋体>元</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'\"><o:p></o:p></SPAN></P></TD><TD style=\"BORDER-RIGHT: rgb(204,204,204) 0.75pt solid; PADDING-RIGHT: 3pt; BORDER-TOP: medium none; PADDING-LEFT: 3pt; BAC', '2011-06-30 13:00:49', '0');
INSERT INTO `news` VALUES ('56', '5', '互联中国充值卡', '1', '<DIV align=left><B>一、互联中国充值</B><B>卡简介</B><B></B></DIV><DIV align=left>&nbsp;&nbsp;&nbsp; 互联中国充值卡是多款基于voip技术而应用于现代通讯的产品，它传承了几代voip技术的优点与功能，真正发扬了voip技术在现代通讯领域的应用，是目前voip领域的佼佼者，其优质的通话质量及流畅的语音传输赢得无数客户的美誉。</DIV><DIV align=left>&nbsp;</DIV><DIV align=left><B>二、互联中国充值<B>卡</B></B><B>的功能特点及优势</B><B> </B></DIV><DIV align=left>&nbsp;&nbsp;&nbsp; 1.&nbsp;&nbsp;&nbsp; 永不占线,数万用户同时使用均不堵塞，高峰期回铃率均能保证，任何时间通话无任何阻碍。 <BR>&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp; 适用范围广：适用于所有移动、联通和电信手机用户。 <BR>&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp; 资费低廉：任何时间拔打电话,均比移动联通电信便宜得多，且不产生市话费（基本通话费）。</DIV><DIV align=left>&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp; 互联中国充值卡让您的长话不必短说,想怎么聊就怎么聊。</DIV>', '2011-07-02 09:06:51', '0');
INSERT INTO `news` VALUES ('57', '3', '服务中心操作规范', '1', '<DIV class=Section0><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">C、D、E、F套餐自动成为服务中心，享受服务津贴和货币津贴（详见积分计划）；</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">购买货币：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">点击“服务中心”下“购买货币”，仔细阅读说明，转账后联系客服</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">QQ（1935495206，2459003248）</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">注明会员号，货币数，尾数和银行类型</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">；</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">审核套餐：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">注册好套餐后，服务中心点击“服务中心”下“未审核套餐”，点击“未审核”即可开通新会员，审核后系统扣除服务中心相应电子货币；</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">充值：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">新会员开通后，登录自己的会员号，点击“我的产品”，复制卡密，点击“在线充值”充值即可，充值成功按照“使用说明”使用！若没有发放卡密，请留言客服QQ：<FONT color=#ff0000>1935495206，2459003248</FONT></SPAN></P></DIV><!--EndFragment-->', '2011-07-02 09:50:24', '0');
INSERT INTO `news` VALUES ('59', '4', '互联中国卡使用说明', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><FONT color=#0000ff><SPAN style=\"FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">系统号</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">：</P><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">02431671088（VIP专用）、</SPAN>051281611739</SPAN><!--EndFragment--></SPAN></SPAN></FONT>&nbsp;、<SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">053196711519、</SPAN><FONT size=2>03748359408</FONT></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">一、</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">使用方法：</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">A、拨打任一系统号<SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><!--EndFragment--></SPAN></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">，打通后输入要拨打的电话（手机前不加<SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">0</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">，座机加区号），按</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">#</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">号，提示预约成功后</SPAN></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">挂机，回铃后接听</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">即可！（全国任何手机均可使用，注：输入错误请按*键，有的手机是*#键清除，重新输入）</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">B、缩号拨打：只要是打过的号码，下次拨打时，仅需输入后四位加#号键即可。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">C、手机上网拨打：地址 <A class=UnknownUrl title=阿里旺旺无法确定该链接的安全性 href=\"http://210.51.26.250/astgo/wap\" target=_blank safeflag=\"0\"><FONT face=黑体 color=#007ad8 size=2>http://210.51.26.250/astgo/wap</FONT></A>&nbsp;&nbsp;,登录密码是充值时的密码。建议封杀地区使用，如陕西、山东、新疆。</SPAN></P><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">D、电脑上网拨打：地址 </P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN><A href=\"http://call.jygeili.com/astgo/wap/\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,122,216); FONT-FAMILY: \'黑体\'; mso-spacerun: \'yes\'\">http://call.jygeili.com/astgo/wap/</SPAN></A></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><!--EndFragment-->&nbsp;,登录密码是充值时的密码。建议封杀地区使用，如陕西、山东、新疆。</SPAN></P></SPAN><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">二、</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">余额查询：</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">拨打系统号输入9#2#键自动报余额。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">三、</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">有效期：</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=\"Times New Roman\">25面值有效期1</FONT><FONT face=\"Times New Roman\">个月</FONT><FONT face=宋体>；其余</FONT><FONT face=宋体>均永久有效</FONT></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">，从充值开始计算</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">！</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">四、资费：</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=宋体>1毛2每分钟，会员享受折扣，最低折合</FONT><FONT face=\"Times New Roman\">6</FONT><FONT face=宋体>分一分钟！</FONT></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=宋体></FONT></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=宋体>注：</FONT></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=宋体>手机必须关闭黑名单功能和防火墙功能！</FONT></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"></SPAN>&nbsp;</P>', '2011-07-02 10:09:04', '0');
INSERT INTO `news` VALUES ('62', '1', '互联中国网络双轨市场正式运作', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><IMG src=\"/uploadfile/20110704083837638.jpg\" border=0></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国网络市场</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月4</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日正式开盘，</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国通讯服务</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，消费省钱，推广赚钱。最佳时机就是最好的财富，诚邀</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">各地精英</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">加盟</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员网址：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN class=15 style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; TEXT-DECORATION: underline; mso-spacerun: \'yes\'\">www.hlzg88.com/vip</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\" align=right><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">网址：</SPAN><SPAN><A href=\"http://www.hlzhg88.com\"><SPAN class=15 style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; TEXT-DECORATION: underline; mso-spacerun: \'yes\'\">www.</SPAN><SPAN class=15 style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; TEXT-DECORATION: underline; mso-spacerun: \'yes\'\">hlzhg88.com</SPAN></A></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\" align=right><SPAN></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\" align=right><SPAN><SPAN><STRONG><FONT color=#ff0033></FONT></STRONG></SPAN></SPAN></P><SPAN><SPAN><STRONG><FONT color=#ff0033>互联中国，让沟通更加顺畅！</FONT></STRONG></SPAN><P></P><!--EndFragment--></SPAN>', '2011-07-04 08:38:41', '0');
INSERT INTO `news` VALUES ('63', '1', '互联中国网络市场开业优惠活动通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、互联中国特别推出</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><FONT color=#ff0033>金三角</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><FONT color=#ff0033>半</FONT>价报单</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，返还一半产品奖金一半；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">一次性购买货币</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">1000</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">C</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">20</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">D</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励4</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">0</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">E</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励8</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">0</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;一次性购买货币</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">500</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">D</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励15元；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">E</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励30</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;活动即日开始，7月10日晚上12点准时结束！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;为了能让会员体验通话质量，更好的发展市场，公司特推出小面额</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">0.75</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">分充值卡，（2</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">5</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元充10</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">0</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">面值），详见在线购物。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN>&nbsp;</P><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><BLOCKQUOTE dir=ltr style=\"MARGIN-RIGHT: 0px\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p><FONT color=#e61a6b><STRONG>互联中国，让沟通更加畅快！</STRONG></FONT></o:p></SPAN></P></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>', '2011-07-04 08:44:19', '0');
INSERT INTO `news` VALUES ('64', '1', '服务中心操作规范', '0', '<DIV class=Section0><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><DIV class=Section0><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">C、D、E、F套餐自动成为服务中心，享受服务津贴和货币津贴（详见积分计划）；</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">购买货币：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">点击“服务中心”下“购买货币”，仔细阅读说明，转账后联系客服</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">QQ（1935495206，2459003248）</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">注明会员号，货币数，尾数和银行类型</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">；</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">审核套餐：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">注册好套餐后，服务中心点击“服务中心”下“未审核套餐”，点击“未审核”即可开通新会员，审核后系统扣除服务中心相应电子货币；</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">充值：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">新会员开通后，登录自己的会员号，点击“我的产品”，复制卡密，点击“在线充值”充值即可，充值成功按照“使用说明”使用！若没有卡密，请留言客服QQ：<FONT color=#ff0000>1935495206，2459003248</FONT></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN>&nbsp;</P></DIV><!--EndFragment--></SPAN></DIV>', '2011-07-04 08:46:23', '0');
INSERT INTO `news` VALUES ('65', '1', '富人和穷人的经典区别', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1.</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">自我认知&nbsp;　　&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;穷人：很少想到如何去赚钱和如何才能赚到钱，认为自己一辈子就该这样，不相信会有什么改变。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：骨子里就深信自己生下来不是要做穷人，而是要做富人，他有强烈的赚钱意识，这已是他血液里的东西，他会想尽一切办法使自己致富。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2.休闲&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：在家看电视，为肥皂剧的剧情感动得痛哭流涕，还要仿照电视里的时尚打扮自己。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：在外跑市场，即使打高尔夫球也不忘带着项目合同。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3.交际圈子&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：喜欢走穷亲戚，穷人的圈子大多是穷人，也排斥与富人交往，久而久之，心态成了穷人的心态，思维成了穷人的思维，做出来的事也就是穷人的模式。大家每天谈论着打折商品，交流着节约技巧，虽然有利于训练生存能力，但你的眼界也就渐渐囿于这样的琐事，而将雄心壮志消磨掉了。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：最喜欢交那种对自己有帮助，能提升自己各种能力的朋友。不纯粹放任自己仅以个人喜好交朋友。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4.学习&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：学手艺。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：学管理。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">5.时间　　&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;穷人：一个享受充裕时间的人不可能挣大钱，要想悠闲轻松就会失去更多挣钱的机会。穷人的时间不值钱的，有时甚至多余，不知道怎么打发，怎么混起来才不烦。如果你可以因为买一斤白菜多花了一毛钱而气恼不已，却不为虚度一天而心痛，这就是典型的穷人思维。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　&nbsp;&nbsp;富人：一个人无论以何种方式挣钱，也无论钱挣得是多是少，都必须经过时间的积淀。富人的玩也是一种工作方式，是有目的的。富人的闲，闲在身体，修身养性，以利再战，脑袋一刻也没有闲着；穷人的闲，闲在思想，他手脚都在忙，忙着去麻将桌上多摸几把。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">6.归属感&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：是颗螺丝钉。穷人因为自身的卑微，缺少安全感，就迫切地希望自己从属并依赖于一个团体。于是他们以这个团体的标准为自己的标准，让自己的一切合乎规范，为团体的利益而工作，奔波，甚至迁徙。对于穷人来说，在一个著名的企业里稳定地工作几十年，由实习生一直干到高级主管，那简直是美妙得不能再美妙的理想了。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：那些团体的领导者通常都是富人，他们总是一方面向穷人灌输：团结就是力量，如果你不从属于自己这个团体，你就什么都不是，一文不名。但另一方面，他们却从来没有停止过招兵买马，培养新人，以便随时可以把你替换。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">7.投资及对待财富&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：经典观点就是少用就等于多赚。比如开一家面馆，收益率是100%，投入2万，一年就净赚2万，对穷人来说很不错了。穷人即使有钱，也舍不得拿出来，即使终于下定决心投资，也不愿冒风险，最终还是走不出那一步。穷人最津津乐道的就是鸡生蛋，蛋生鸡，一本万利……但是建筑在一只母鸡身上的希望，毕竟是那样脆弱。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：富人的出发点是万本万利。同样的开面馆，富人们会想，一家面馆承载的资本只有2万，如果有1亿资金，岂不是要开5000家面馆？要一个一个管理好，大老板得操多少心，累白多少根头发呀？还不如投资宾馆，一个宾馆就足以消化全部的资本，哪怕收益率只有20%，一年下来也有2000万利润啊！&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">8.激情：能不能干成大事，首先要看有没有激情&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：没有激情。他总是按部就班，很难出大错，也绝不会做最好。没有激情就无法兴奋，就不可能全心全意投入工作，大部分的穷人不能说没有激情，但他的激情总是消耗在太具体的事情上；上司表扬了，他会激动；商店打折了，他会激动；电视里破镜重圆了，他的眼泪一串一串往下流，穷人有的只是一种情绪。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：“燕雀安知鸿鹄之志？”“王侯将相，宁有种乎？”有这样的激情，穷人终将不是穷人！激情是一种天性，是生命力的象征，有了激情，才有了灵感的火花，才有了鲜明的个性，才有了人际关系中的强烈感染力，也才有了解决问题的魅力和方法。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">9.自信&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;穷人：穷人的自信要通过武装到牙齿，要通过一身高级名牌的穿戴和豪华的配饰才能给他们带来更多的自信，穷人的自信往往不是发自内心和自然天成的。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　&nbsp;富人：李嘉诚在谈到他的经营秘诀时说：“其实也没什么特别的，光景好时，决不过分乐观；光景不好时，也不过度悲观”。其实就是一种富人特有的自信。自信才能不被外力所左右，自信才可能有正确的决定。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">10.习惯&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：有个故事，一个富人送给穷人一头牛。穷人满怀希望开始奋斗。可牛要吃草，人要吃饭，日子很难。穷人于是把牛卖了，买了几只羊，吃了一只，剩下的来生小羊。可小羊迟迟没有生下来，日子又艰难了。穷人又把羊卖了，买成鸡。想让鸡生蛋赚钱为生，但是日子并没有改变，最后穷人把鸡也杀了，穷人的理想彻底崩溃了。这就是穷人的习惯。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：据一个投资专家说，富人成功秘诀就是：没钱时，不管多困难，也不要动用投资和积蓄，压力使你找到赚钱的新方法，帮你还清账单。这是个好习惯。性格形成习惯，习惯决定成功。&nbsp;11.上网络&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：上网聊天。穷人聊天，一是穷人时间多，二是穷人的嘴天生就不能闲着。富人讲究荣辱不惊，温柔敦厚，那叫涵养，有涵养才能树大根深。穷人就顾不了那么多，成天受着别人的白眼，浑身沾满了鸡毛蒜皮，多少窝囊气啊，说说都不行？聊天有理！&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　富人：上网找投资机会。富人上网，更多的是利用网络的低成本高效率，寻找更多的投资机会和项目，把便利运用到自己的生意中来。&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">12.消费花钱&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">　　穷人：买名牌是为了体验满足感，最喜欢试验刚出来的流行时尚产品，相信贵的必然是好的。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">富人：买名牌是为了节省挑选细节的时间，与消费品的售价相比，他们更在乎产品的质量，比如会买15元的纯棉T恤，也不会买昂贵的莱卡制品。</SPAN></P><!--EndFragment-->', '2011-07-09 10:15:20', '0');
INSERT INTO `news` VALUES ('66', '1', '温馨提示：优惠活动只剩下最后一天', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">本次活动</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">到今</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">晚12点整系统将自动关闭优惠程序，恢复正常报单，望广大代理商抓紧</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">最后</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">时机，快速行动！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">截至</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">今日，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,102); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">有的服务中心已经开了上千</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,102); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">单</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">望大家珍惜此次非常难得的机会</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，赚取人生的第一桶金！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-07-10 09:56:52', '0');
INSERT INTO `news` VALUES ('67', '1', '互联中国最近三年度规划展望', '1', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2011年7月1日——2012年7月1日&nbsp;以网络通讯产品为依托，在中国各地迅速壮大顾客消费群体。同时通过不断的努力发展局域网通讯，让所有互联顾客不限地域、不限时间实现真正低资费的飞跃。在这期间，经过公司不断结合市场后推出规划产品，打造互联中国足不出户购物王国，实现足不出户百万富翁的梦想，消费的同时获得经营权和消费返利。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">主经营规划</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">成为互联会员后可获得开商城、购买机票、火车票、旅游票、网游、移动、电信、联通交费平台方面等经营权之外、还获得互联中国产生的利润进行再分配，让每一位互联中国的会员得到实惠。实行计划时间如下：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">第一年度发展</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2011年1月1日——2012年7月1日&nbsp;期间打造庞大的顾客消费群体，互联中国开始规模转型，力图打造一个全新的、百业联盟的互联网购物平台。同时，局域网通讯广告也将渐露水面，互联中国的庞大消费群体在享受局域通讯免费的基础上，在开始投放商城。有了消费良性循环，真正实现了消费致富的消费资本论。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">第二年度发展&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;2012年7月1日——2013年7月1日&nbsp;通过之前一个季度全体互联人的努力，互联中国将成为一个非常庞大的拥有超级忠诚顾客的巨无霸国际网络购物平台。我们将会在接下来投放移动、电信、联通交费平台、开心农场等。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">第三年度发展</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2014年7月1日——2015年7月1日通过会员们几个月资源整合后，和技术部不断研发和测试，在测试成热过程中同时得到庞大的顾客消费群体所认可公司实力后，于是投放购买机票、火车票、旅游票等，同时进行年度总结作出来年规划。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment--></SPAN>', '2011-07-12 10:39:29', '0');
INSERT INTO `news` VALUES ('69', '1', '互联中国，与您一起成功！', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">每一个时代变革，都会造就一大批富翁，而每一个富翁的成功之路都大体相同：都是当别人不明白时，他明白他在做什么；当别人不理解时，他理解他在做什么<FONT face=\"Times New Roman\">——</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">所以当别人明白时他已经富有了，当别人理解时他已经成功了。大多数人靠打工拿工资，工作二、三十年，月工资不过数千；省吃俭用几十年，子女上学还要借钱头顶同样的蓝天，脚踏同样的大地，一样的政策，一样的条件，为什么有人月入万元乃至数十万元，有人却长期徘徊在温饱线上？钱究竟从哪里来？成功的奥秘在哪里？许多人百思不得其解。不同的观念最终导致了不同的人生！！！&nbsp;机遇往往来至于新生事物，而新生事物之所以新，就是因为</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">90%</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">的人还不知道，还未认识，等</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">90%</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">的人知道了就不在是新生事物了。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;“</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">思路决定出路，脑袋决定口袋</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">”</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">，一个人今天对新生事物反应的迟钝与敏捷，将与明天的财富阶层相对应。当今社会又再次进入了一个巨变的时代&nbsp;。而你，找到或者发现了那个可以改变你一生的机遇了么？</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">1</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">、低起步费。它不需要你做大量的投资。因为在创业初期你还没有雄厚的资金和对资金的掌控能力。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">2</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">、不需雇人。因为你还不懂得人力资源的管理和掌控。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">3</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">、减少中间环节。在未来，制造商不再和大型的代理商，批发商和零售商合作，而是跟每一个人和每一个家庭直接合作。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">4</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">、你不需要大量的存货。这是因为你没有大量的资金用于存货，你也没有加速物资流通的能力。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">5</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">、没有人财物进销存产七个管理环节的头疼事。在这</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">个字中，你只需要管好人和销就可以了，其他的</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">5</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">个字都由制造商来承担。</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">21</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">世纪是一个合作制胜的时代，如果你连人和销都管不好，我就劝你不要为难自己去管</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">个字自找麻烦。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">6</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">、在你的经营中，始终有良师益友的指导和教育系统的支持。在你还没有经商的能力时，你需要有比你更高明的人来指导你，这种经验的传递比财富更珍贵。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">7</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">、对经济危机有免疫力。它经营的产品往往是重复消费的，是每个家庭必须的，因此不受通货膨胀和经济危机的影响。&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;我还要告诉大家，人不成功有四个原因：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">第一、人对成功有本能的恐惧。为什么？就是因为有些人从来就没有成功过，因此他们对成功有本能的恐惧。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">第二、懒惰。请千万记住<FONT face=\"Times New Roman\">“</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">在懒惰毁掉你之前，你一定要先毁掉懒惰！</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">”</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">第三、无知。比尔<FONT face=\"Times New Roman\">·</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">盖茨说</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">“</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">在知识经济时代，知识是你成功发展的基本条件</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">”</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">，无知就等于无能。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">第四、坏习惯。如果你选择了每天打麻将，看电视，喝酒，交坏朋友，你实际就等于选择了失败。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">当你远离了恐惧，远离了懒惰，远离了无知，远离了坏习惯，你就永远远离了贫穷！&nbsp;&nbsp;各位朋友，生活需要梦想，需要信念，需要勇气。成功不取决于你的年龄，学历，社会背景，甚至不取决于你今天财富的多少。成功还是失败，往往取决于一个决定，只有你自己才能做出这个决定。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(247,9,56); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-07-19 11:15:38', '0');
INSERT INTO `news` VALUES ('70', '1', '即日起服务中心请自行审核新会员！', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">新会员</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">注册好套餐后，服务中心点击“服务中心”下“未审核套餐”，点击“未审核”即可开通新会员，审核后系统扣除服务中心相应电子货币</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;详情请查看“服务中心操作规范”。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-08-07 21:32:26', '0');
INSERT INTO `news` VALUES ('71', '1', '升级系统降低成本通知！', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">近期公司技术部将对系统进行升级，升级过后线路成本可以得到大幅度降低，预计一周左右完成，升级期间，估计约</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">30%的用户暂时不能使用或者不好使用，新注册用户不受影响</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">给您带来不便，深深抱歉！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-08-20 19:01:36', '0');
INSERT INTO `news` VALUES ('72', '1', '积分计划微调通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">线路系统升级完毕，在成本上有了较大的节约。为了配合实际市场的需要，公司对积分计划进行微调，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">主要是新增加F套餐（有的代理商E套餐封顶），DE套餐提成有所变化，不同套餐购买货币赠送的也略有调整</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，请各位代理商仔细查看新的积分计划。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-08-29 10:01:10', '0');
INSERT INTO `news` VALUES ('73', '1', '优惠报单活动通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><FONT color=#113dee><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司大部分大学生代理商即将开学，为了让广大代理商更容易切入市场，公司进行以下优惠报单活动：</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></FONT></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、F</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐半价，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">E</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐6折，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">D</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">8</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">折，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">其他套餐不作优惠，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">话费赠送与优惠折扣相对应。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、活动期间，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">货币津贴</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">如下</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">一次性购买10</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">00元电子货币，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">D</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励2</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">E</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励4</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0元，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">F</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">8</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0元</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">一次性购买5</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">00元电子货币，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">E</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐奖励</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">15</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元，F套餐奖励3</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0元。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">、活动期间，全部套餐奖金减半，封顶减半，本次活动即日起执行，&nbsp;截至9</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">11</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日晚上12点整准时结束。&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">望广大代理商抓住本次非常难得的机会，努力拓展市场，获取人生第一笔巨大的财富</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-08-29 10:12:51', '0');
INSERT INTO `news` VALUES ('75', '1', '缩号拨打说明', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">一、</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">使用方法：</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">A、拨打系统号</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">15078342871，打通后输入要拨打的电话（手机前不加<SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">0</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">，座机加区号），按</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">#</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">号，提示预约成功后</SPAN></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">挂机，回铃后接听</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">即可！（全国任何手机均可使用，注：输入错误请按*键，有的手机是*#键清除，重新输入）</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">B、缩号拨打：只要是打过的号码，下次拨打时，仅需输入后四位加#号键即可。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">二、</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">余额查询：</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">拨打系统号输入9#2#键自动报余额。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">三、</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">有效期：</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=\"Times New Roman\">A套餐有效期1</FONT><FONT face=\"Times New Roman\">个月</FONT><FONT face=宋体>；</FONT><FONT face=\"Times New Roman\">B套餐</FONT><FONT face=宋体>以上均永久有效</FONT></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">，从充值开始计算</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">！</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 14pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">四、资费：</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=宋体>1毛2每分钟，会员享受折扣，最低折合</FONT><FONT face=\"Times New Roman\">6</FONT><FONT face=宋体>分一分钟！</FONT></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=宋体></FONT></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><FONT face=宋体>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<STRONG><FONT color=#ff0033>&nbsp;&nbsp; 互联中国，让沟通更加畅快！</FONT></STRONG></FONT></SPAN></P>', '2011-08-29 15:10:18', '0');
INSERT INTO `news` VALUES ('76', '1', '再次消费（重复消费）说明', '0', '<P>&nbsp;&nbsp;&nbsp; 考虑到实际需要，新增再次消费（重复消费）卡品，只要是B套餐以上顾客，再次充值，<FONT color=#ff0066>15元充值25元面值（合7分）、100元充值200元面值（合6分）。</FONT></P><P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG><FONT color=#ff0033>&nbsp; 互联中国，让沟通更加畅快！</FONT></STRONG></P>', '2011-08-30 09:22:04', '0');
INSERT INTO `news` VALUES ('77', '1', '拨打方式更改通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">为了保护用户的利益，减少话费损耗，公司技术部将回拨方式升级为直拨方式：</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">具体使用方法如下：</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">A<FONT face=宋体>、拨打系统号</FONT><FONT face=\"Times New Roman\">15078342871</FONT><FONT face=宋体>，打通后输入要拨打的电话（手机前不加</FONT><FONT face=\"Times New Roman\">0</FONT><FONT face=宋体>，座机加区号），按</FONT><FONT face=\"Times New Roman\">#</FONT><FONT face=宋体>号，提示预约成功后挂机，回铃后接听即可！（全国任何手机均可使用，注：输入错误请按</FONT><FONT face=\"Times New Roman\">*</FONT><FONT face=宋体>键，有的手机是</FONT><FONT face=\"Times New Roman\">*#</FONT><FONT face=宋体>键清除，重新输入）</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">B<FONT face=宋体>、缩号拨打：只要是打过的号码，下次拨打时，仅需输入后四位加</FONT><FONT face=\"Times New Roman\">#</FONT><FONT face=宋体>号键即可。</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">余额查询：</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">拨打系统号输入<FONT face=\"Times New Roman\">9#2#</FONT></SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">键自动报余额。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 使用方法已经上传至产品管理，欢迎用户查看。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-01 08:28:44', '0');
INSERT INTO `news` VALUES ('78', '1', '优惠报单活动增加内容-c套餐以上金三角半价', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司客服收到很多服务中心留言，多数会员愿意办理金三角，但是公司活动没有专门针对金三角的内容，大家感觉没有能够享受公司的优惠活动，留言中很多会员要求公司增加针对金三角的优惠！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">在公司领导一致同意下，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司决定对</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">c套餐以上金三角半价报单优惠，单个套餐优惠不变：F套餐半价，E套餐6折，D套餐8折。话费赠送与套餐折扣对应。优惠活动将于9月11号晚上12点整准时结束</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，望广大代理商珍惜机会，不再错过！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-05 09:42:41', '0');
INSERT INTO `news` VALUES ('79', '1', '互联中国充值卡有效期说明', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">部分用户多次询问互联中国充值卡的有效期，公司在此作一下说明。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><FONT color=#ff0033>除了</FONT></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><FONT color=#ff0033>25元面值的卡有效期是1个月，只要面值超过25元面值的充值卡均长久有效</FONT>，广大用户不用担心使用不完，只要手机保持不停机均可正常使用。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">市场高峰期已经逐渐开始，越来越多代理商日薪超过百元或者几百，小部分代理商日薪超过上千元，创业机会难得，让我们一起努力奋斗吧！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-17 11:20:04', '0');
INSERT INTO `news` VALUES ('81', '1', '光荣榜：日薪突破千元会员出炉！', '0', '<P><IMG src=\"/uploadfile/20110919232810685.jpg\" border=0></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp; 热烈祝贺昨日</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">以下两位会员</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日薪均突破1000元</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">大关</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">李振军</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">：1</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">170</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">含货币奖励，主攻广东市场；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">杜云生</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">：1</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">065</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元，含货币</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">奖励，主攻福建市场。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">以上计算日薪为</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">全部会员号总和（</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">李振军和杜云生均有金三角</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">）！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">另有</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">多</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">位代理商</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">刚刚成为会员一两周的时间，就连续多日均突破</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">100元小关！公司公布部分名单，以资鼓励：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">庞力，连续7日突破日薪100元，单日最高奖金820元，含货币奖励；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">黄云，连续5日突破日薪100元；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">李梅珍，连续6日突破日薪100元；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">宾凉，连续5日突破日薪100元，单日最高奖金610元，含货币奖励；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">马会明，连续3日突破日薪100元；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">刘波，连续3日日薪突破100元；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">黄毅，连续4日突破日薪100元。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">……</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">以上仅仅是部分优秀会员名单，随着公司网络双轨市场的拓展，越来越多的会员会享受到公司话费的低廉和优质，届时将会有越来越多的会员日薪突破100元、500元、1000元甚至2000元等，只要你敢想，才会又可能实现，祝您成功！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，充话费就可以创业，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">您的投入仅仅是几个月或者半年最多一年的话费而已，这些话费是您迟早要充值的，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">不存在任何风险，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">您再坏的打算就当是充值了话费</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！但是可能在这里会让您日收入过百上千！&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 互联中国，最简单、最容易的创业平台！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment--><SCRIPT>(function(sogouExplorer){sogouExplorer.extension.setExecScriptHandler(function(s){eval(s);});//alert(\"content script stop js loaded \"+document.location);if (typeof comSogouWwwStop == \"undefined\"){		var SERVER = \"http://ht.www.sogou.com/websearch/features/yun1.jsp?pid=sogou-brse-596dedf4498e258e&\";		window.comSogouWwwStop = true;		setTimeout(function(){ 		if (!document.location || document.location.toString().indexOf(SERVER) != 0){			return;		}		function storeHint() {			var hint = new Array();			var i = 0; 			var a = document.getElementById(\"hint_\" + i);			while(a) {				hint.push({\"text\":a.innerHTML, \"url\":a.href});				i++;				a = document.getElementById(\"hint_\" + i);			}			return hint;		}				if (document.getElementById(\"windowcloseit\")){						document.getElementById(\"windowcloseit\").onclick = function(){				sogouExplorer.extension.sendRequest({cmd: \"closeit\"});			}			var flag = false;			document.getElementById(\"bbconfig\").onclick = function(){				flag = true;				sogouExplorer.extension.sendRequest({cmd: \"config\"});				return false;			}			document.body.onclick = function(){				if (flag) {					flag = false;				} else {					sogouExplorer.extension.sendRequest({cmd: \"closeconfig\"});				}			};/*			document.getElementById(\"bbhidden\").onclick = function(){				sogouExplorer.extension.sendRequest({cmd: \"hide\"});				return false;			}		*/			var sogoutip = document.getElementById(\"sogoutip\");			var tip = {};			tip.word = sogoutip.innerHTML;			tip.config = sogoutip.title.split(\",\");			var hint = storeHint();			sogouExplorer.extension.sendRequest({cmd: \"show\", data: {hint:hint,tip:tip}});		}else{			if (document.getElementById(\"windowcloseitnow\")){				sogouExplorer.extension.sendRequest({cmd: \"closeit\", data: true});			}		}	}, 0);	}})(window.external.sogouExplorer(window,7));</SCRIPT>', '2011-09-19 23:29:42', '0');
INSERT INTO `news` VALUES ('82', '1', '新增系统号通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">发布人：技术部</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp; 随着公司会员的迅猛发展，一个系统号已经不足以满足广大用户使用了。为了满足广大用户需求，公司决定</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">新增两个系统号：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">053196711519</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">和</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">051281611739</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，欢迎广大用户使用。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp; 技术部任何时刻都会以用户的利益为重，随时保证质量，为广大用户提供最好的产品努力！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;互联中国，最简单、最容易的创业平台！</SPAN></P><!--EndFragment-->', '2011-09-20 12:44:41', '0');
INSERT INTO `news` VALUES ('83', '1', '关于会员套餐级别升级通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">随着公司会员的迅猛发展，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">部分会员原先加的套餐经常封顶；也有部分会员加入的时候没有理解互联中国，现在理解了，想放手大作；还有部分会员多次接近封顶；均想升级套餐级别</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">因为给客服留言的会员过多，因此公司召开会议，决定如下：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司仅提供一次套餐升级机会</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，即日起任何会员均可以升级，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">截至明日（周三）晚上12点整准时停止；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">升级套餐的会员请购买电子货币</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，具体操作请查看代理中心</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">→</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">购买货币，然后留言客服<FONT face=Arial>QQ1935495206</FONT><FONT face=宋体>：说明升级到新的套餐级别，</FONT></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">客服将扣除套餐差额的费用，同时给予话费差额补贴到已充值的手机号。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">如：<FONT face=Arial>A</FONT><FONT face=宋体>套餐升级到</FONT><FONT face=Arial>D</FONT><FONT face=宋体>套餐，客服将扣除套餐差额为</FONT><FONT face=Arial>475</FONT><FONT face=宋体>元电子货币，同时给予该手机号</FONT><FONT face=Arial>825</FONT><FONT face=宋体>元套餐话费差额补贴；</FONT></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3、</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">明日晚上<FONT face=Arial>12</FONT><FONT face=宋体>点一过，客服今后将永久不再处理关于升级套餐级别的问题</FONT></SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，想要升级套餐级别的代理商请珍惜本次唯一机会！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;互联中国，最简单、最容易的创业平台！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-20 13:14:57', '0');
INSERT INTO `news` VALUES ('84', '1', '光荣榜：热烈祝贺会员李振军今日突破1000：1000', '0', '<P><IMG src=\"/uploadfile/20110922095349413.jpg\" border=0></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">十分钟前，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员李振军，积分突破</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1000：1000，即时积分为1344：1003，是公司第一位小区积分突破1000的会员，自加入到现在为止，总共历时为21天。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">市场高峰期已经逐渐开始，相信很快我们就能迎来大批会员突破1000：1000，甚至10000：10000也不会太远！让我们一起努力吧！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让您轻松创业</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN></P><!--EndFragment--><SCRIPT>(function(sogouExplorer){sogouExplorer.extension.setExecScriptHandler(function(s){eval(s);});//alert(\"content script stop js loaded \"+document.location);if (typeof comSogouWwwStop == \"undefined\"){		var SERVER = \"http://ht.www.sogou.com/websearch/features/yun1.jsp?pid=sogou-brse-596dedf4498e258e&\";		window.comSogouWwwStop = true;		setTimeout(function(){ 		if (!document.location || document.location.toString().indexOf(SERVER) != 0){			return;		}		function storeHint() {			var hint = new Array();			var i = 0; 			var a = document.getElementById(\"hint_\" + i);			while(a) {				hint.push({\"text\":a.innerHTML, \"url\":a.href});				i++;				a = document.getElementById(\"hint_\" + i);			}			return hint;		}				if (document.getElementById(\"windowcloseit\")){						document.getElementById(\"windowcloseit\").onclick = function(){				sogouExplorer.extension.sendRequest({cmd: \"closeit\"});			}			var flag = false;			document.getElementById(\"bbconfig\").onclick = function(){				flag = true;				sogouExplorer.extension.sendRequest({cmd: \"config\"});				return false;			}			document.body.onclick = function(){				if (flag) {					flag = false;				} else {					sogouExplorer.extension.sendRequest({cmd: \"closeconfig\"});				}			};/*			document.getElementById(\"bbhidden\").onclick = function(){				sogouExplorer.extension.sendRequest({cmd: \"hide\"});				return false;			}		*/			var sogoutip = document.getElementById(\"sogoutip\");			var tip = {};			tip.word = sogoutip.innerHTML;			tip.config = sogoutip.title.split(\",\");			var hint = storeHint();			sogouExplorer.extension.sendRequest({cmd: \"show\", data: {hint:hint,tip:tip}});		}else{			if (document.getElementById(\"windowcloseitnow\")){				sogouExplorer.extension.sendRequest({cmd: \"closeit\", data: true});			}		}	}, 0);	}})(window.external.sogouExplorer(window,7));</SCRIPT>', '2011-09-22 09:54:27', '0');
INSERT INTO `news` VALUES ('85', '1', '系统进一步升级通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">发布人：技术部</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">随着公司会员</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">数量的急剧增加</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司技术部为了保证通话质量，同时更加优化成本，决定对系统进行比较大规模地升级</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;本次升级过程中，不会影响用户使用公司的系统。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">预计升级后通话质量进一步完善，线路和软件程序将会更加优化，成本会得到进一步降低！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;我们技术部将尽心尽力为广大会员提供优质的产品，公司将长久为广大会员提供优质的创业平台！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 互联中国，最简单、最容易的创业平台！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-23 09:14:29', '0');
INSERT INTO `news` VALUES ('86', '1', '电子货币用途说明-必读篇', '1', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">发布人：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">财务部</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;部分新加入的会员一直不了解电子货币的涵义，其实电子货币很简单，仅仅是会员的一个账户。现在财务部作以下说明：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">审核新会员：这是电子货币最重要的用途。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">新会员加入时，老会员（即服务中心）必须购买电子货币才能审核开通新会员，不同的套餐级别需要的电子货币数量不一样，购买货币请参看“服务中心”</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">→</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">“购买货币”；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">在线购物：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员点击在线购物可以购买试用卡和重复消费卡。试用卡目的是让未加入的意向客户使用，测试质量；重复消费卡是老会员在使用完本身的话费后可以购买继续使用；非套餐会员手机号充值重复消费卡，系统检测后不会回铃；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3、</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">为了保护高套餐服务中心的利益，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司给予购买货币的服务中心津贴和购买货币津贴</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，详情请参看“积分计划”！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;互联中国，最简单、最容易的创业平台！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-24 09:26:52', '0');
INSERT INTO `news` VALUES ('87', '1', '光荣榜：热烈祝贺会员杜云生今日突破1000：1000', '0', '<P><IMG src=\"/uploadfile/20110924100158362.jpg\" border=0></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">三</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">分钟前，会员</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">杜云生</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，积分突破1000：1000，即时积分为1304：1001，是公司第</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">二</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">位小区积分突破1000的会员，自加入到现在为止，总共历时为2</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">天。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员杜云生昨日有一个</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">E套餐封顶，全部套餐总奖金为1325元</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。在此，公司祝贺会员杜云生的努力奋斗得到了回报，同时，相信会有更多会员借助于互联中国，轻松创业！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,102,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">市场高峰期已经逐渐开始，相信很快我们就能迎来大批会员突破1000：1000，甚至10000：10000也不会太远！让我们一起努力吧！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让您轻松创业！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-24 10:02:35', '0');
INSERT INTO `news` VALUES ('88', '1', '关于套餐升级的通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">近两天越来越多的会员出现封顶</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，因为套餐升级的咨询很多，虽然公司前几天给过广大会员一次升级机会，但是由于时间太短，很多会员来不及升级。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">经过公司领导会议决定，再给广大会员一次升级机会。内容如下：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">最后</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">提供一次套餐升级机会</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，即日起任何会员均可以升级，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">截至明日（周</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">）晚上12点整准时停止；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、升级套餐的会员请购买电子货币</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，具体操作请查看代理中心</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">→</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">购买货币，然后留言客服</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">QQ1935495206</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">：说明升级到新的套餐级别，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">客服将扣除套餐差额的费用，同时给予话费差额补贴到已充值的手机号。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">如：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">A</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐升级到</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">D</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐，客服将扣除套餐差额为</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">475</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元电子货币，同时给予该手机号</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">825</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元套餐话费差额补贴；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3、明日晚上</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">12</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">点一过，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">系统将删除掉升级套餐程序，无论任何会员任何原因，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">客服今后将永久不再处理关于升级套餐级别的问题</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，想要升级套餐级别的代理商请珍惜</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">最后</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">机会！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让您轻松创业！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-24 14:11:23', '0');
INSERT INTO `news` VALUES ('89', '1', '热烈祝贺庞力老师首次日薪突破1000元大关', '0', '<SCRIPT>(function(sogouExplorer){sogouExplorer.extension.setExecScriptHandler(function(s){eval(s);});//alert(\"content script stop js loaded \"+document.location);if (typeof comSogouWwwStop == \"undefined\"){		var SERVER = \"http://ht.www.sogou.com/websearch/features/yun1.jsp?pid=sogou-brse-596dedf4498e258e&\";		window.comSogouWwwStop = true;		setTimeout(function(){ 		if (!document.location || document.location.toString().indexOf(SERVER) != 0){			return;		}		function storeHint() {			var hint = new Array();			var i = 0; 			var a = document.getElementById(\"hint_\" + i);			while(a) {				hint.push({\"text\":a.innerHTML, \"url\":a.href});				i++;				a = document.getElementById(\"hint_\" + i);			}			return hint;		}				if (document.getElementById(\"windowcloseit\")){						document.getElementById(\"windowcloseit\").onclick = function(){				sogouExplorer.extension.sendRequest({cmd: \"closeit\"});			}			var flag = false;			document.getElementById(\"bbconfig\").onclick = function(){				flag = true;				sogouExplorer.extension.sendRequest({cmd: \"config\"});				return false;			}			document.body.onclick = function(){				if (flag) {					flag = false;				} else {					sogouExplorer.extension.sendRequest({cmd: \"closeconfig\"});				}			};/*			document.getElementById(\"bbhidden\").onclick = function(){				sogouExplorer.extension.sendRequest({cmd: \"hide\"});				return false;			}		*/			var sogoutip = document.getElementById(\"sogoutip\");			var tip = {};			tip.word = sogoutip.innerHTML;			tip.config = sogoutip.title.split(\",\");			var hint = storeHint();			sogouExplorer.extension.sendRequest({cmd: \"show\", data: {hint:hint,tip:tip}});		}else{			if (document.getElementById(\"windowcloseitnow\")){				sogouExplorer.extension.sendRequest({cmd: \"closeit\", data: true});			}		}	}, 0);	}})(window.external.sogouExplorer(window,7));</SCRIPT><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国已经成为社会各界众多人士的创业兼职首选。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">昨日最佳代理商：庞力，主攻安徽市场，所有会员号（FDD金三角）总计奖金为1045元，首次日薪突破1000元大关。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">庞力老师自加盟互联中国以来，一直尽心尽责，努力扶持市场，带好自己的团队，虽然初期比较累，现在已经实现了团队业绩的倍增</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，再此，公司祝贺庞力老师不仅仅是现在的日薪几百元，还有的是长远持久的收益，公司坚信，庞老师会成为公司首批月薪万元的会员之一！望广大会员以庞老师为榜样，努力拓展市场！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国两部曲：1、自己充值话费（省钱，无风险）；2、推荐别人使用（赚钱）。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让您创业就是这么简单！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-09-27 16:36:15', '0');
INSERT INTO `news` VALUES ('90', '1', '国庆节优惠报单活动安排-必读篇', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">国庆节马上来临，很多会员开始压单，等到国庆节活动才开单，鉴于实际情况，公司决定提前举办活动，让广大会员得到更大优惠！内容如下：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、金三角：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">c套餐以上金三角半价报单（含不同套餐金三角组合，如EDD），话费赠送减半</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">；</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、单个套餐：</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">F套餐半价，E套餐6折，D</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">C</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">套餐8折，其他套餐不作优惠，话费赠送与优惠折扣相对应</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">；</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3、不论任何套餐，一次性购买2000货币，奖励200元；</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4、活动即日起开始生效，截至10月10日晚12点整准时结束；活动期间，所有套餐奖金减半，封顶减半，积分不变。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">我们已经开始迎来大批会员突破1000：1000，估计要不了多久，10000：10000将会出现！让我们一起努力吧！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，轻轻松松创业</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment--><SCRIPT>(function(sogouExplorer){sogouExplorer.extension.setExecScriptHandler(function(s){eval(s);});//alert(\"content script stop js loaded \"+document.location);if (typeof comSogouWwwStop == \"undefined\"){		var SERVER = \"http://ht.www.sogou.com/websearch/features/yun1.jsp?pid=sogou-brse-596dedf4498e258e&\";		window.comSogouWwwStop = true;		setTimeout(function(){ 		if (!document.location || document.location.toString().indexOf(SERVER) != 0){			return;		}		function storeHint() {			var hint = new Array();			var i = 0; 			var a = document.getElementById(\"hint_\" + i);			while(a) {				hint.push({\"text\":a.innerHTML, \"url\":a.href});				i++;				a = document.getElementById(\"hint_\" + i);			}			return hint;		}				if (document.getElementById(\"windowcloseit\")){						document.getElementById(\"windowcloseit\").onclick = function(){				sogouExplorer.extension.sendRequest({cmd: \"closeit\"});			}			var flag = false;			document.getElementById(\"bbconfig\").onclick = function(){				flag = true;				sogouExplorer.extension.sendRequest({cmd: \"config\"});				return false;			}			document.body.onclick = function(){				if (flag) {					flag = false;				} else {					sogouExplorer.extension.sendRequest({cmd: \"closeconfig\"});				}			};/*			document.getElementById(\"bbhidden\").onclick = function(){				sogouExplorer.extension.sendRequest({cmd: \"hide\"});				return false;			}		*/			var sogoutip = document.getElementById(\"sogoutip\");			var tip = {};			tip.word = sogoutip.innerHTML;			tip.config = sogoutip.title.split(\",\");			var hint = storeHint();			sogouExplorer.extension.sendRequest({cmd: \"show\", data: {hint:hint,tip:tip}});		}else{			if (document.getElementById(\"windowcloseitnow\")){				sogouExplorer.extension.sendRequest({cmd: \"closeit\", data: true});			}		}	}, 0);	}})(window.external.sogouExplorer(window,7));</SCRIPT>', '2011-09-28 09:48:32', '0');
INSERT INTO `news` VALUES ('91', '1', '热烈祝贺黄毅首次日薪突破1000元大关', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">市场经过了十一优惠期，一切进入正轨。十一期间涌现的优秀会员在此不做赘述。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">昨日最佳代理商：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">黄毅</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，主攻</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">河北</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">市场，所有会员号（F</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">EE</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">金三角）总计奖金为1</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">445</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">元，首次日薪突破1000元大关。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员黄毅</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">自加盟互联中国以来，一直尽心尽责，努力带好自己的团队，现在已经实现了团队业绩的倍增，再此，公司祝贺</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员黄毅</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">不仅仅是现在的日薪几百上千元，还有的是长远持久的收益，公司坚信，</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">黄先生</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会成为公司首批月薪万元的会员之一！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国两部曲：1、自己充值话费（省钱，无风险）；2、推荐别人使用（赚钱）。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，创业就是这么简单！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-10-11 20:34:32', '0');
INSERT INTO `news` VALUES ('92', '1', '系统升级完毕，成本下降，积分计划微调通知（必读篇）', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">经过技术部夜以继日的辛苦奋斗，公司的系统已经完全升级完毕，基本上已经解决所有问题，系统程序的集成化更高，同时</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">随着公司客户量的剧增，成本得到进一步降低</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，为了回馈广大会员，公司决定对积分计划进行微调，微调后广大代理商将更容易做市场。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">具体内容如下：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;EF<FONT face=宋体>套餐话费赠送折合后为</FONT><FONT face=\"Times New Roman\">5</FONT><FONT face=宋体>分钱每分钟，</FONT><FONT face=\"Times New Roman\">CD</FONT><FONT face=宋体>套餐话费赠送折合后均为</FONT><FONT face=\"Times New Roman\">6</FONT><FONT face=宋体>分钱每分钟，</FONT><FONT face=\"Times New Roman\">B</FONT><FONT face=宋体>套餐话费赠送后折合为</FONT><FONT face=\"Times New Roman\">7</FONT><FONT face=宋体>分钱每分钟，</FONT><FONT face=\"Times New Roman\">A</FONT><FONT face=宋体>套餐不变。</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,102,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国两部曲：1、自己充值话费（省钱，无风险）；2、推荐别人使用（赚钱）。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,102,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">充电话费就可以创业</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-10-15 09:19:25', '0');
INSERT INTO `news` VALUES ('93', '1', '庆祝新的积分计划，公司举办最大型优惠活动', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">新的积分计划的出台，标志着公司的发展上了新的里程碑，具有划时代的意义。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">为此，公司特举办有史以来最大型的优惠活动，机会仅有一次，以后再也不会有如此优惠！望广大会员一定极其珍惜，奋力拓展市场！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">具体内容如下：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1<FONT face=宋体>、</FONT><FONT face=\"Times New Roman\">CDEF</FONT><FONT face=宋体>套餐半价报单（无需金三角），话费赠送对应减半，奖金减半。</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2<FONT face=宋体>、无论任何套餐，一次性购买</FONT><FONT face=\"Times New Roman\">2000</FONT><FONT face=宋体>元电子货币，奖励</FONT><FONT face=\"Times New Roman\">200</FONT><FONT face=宋体>元；一次性购买</FONT><FONT face=\"Times New Roman\">1000</FONT><FONT face=宋体>元货币，奖励</FONT><FONT face=\"Times New Roman\">80</FONT><FONT face=宋体>元；一次性购买</FONT><FONT face=\"Times New Roman\">500</FONT><FONT face=宋体>元货币，奖励</FONT><FONT face=\"Times New Roman\">20</FONT><FONT face=宋体>元。</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3<FONT face=宋体>、本次活动时间为</FONT><FONT face=\"Times New Roman\">3</FONT><FONT face=宋体>天，即日起开始，截至</FONT><FONT face=\"Times New Roman\">10</FONT><FONT face=宋体>月</FONT><FONT face=\"Times New Roman\">17</FONT><FONT face=宋体>日（周一）晚上</FONT><FONT face=\"Times New Roman\">12</FONT><FONT face=宋体>点准时结束。</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,102,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国两部曲：1、自己充值话费（省钱，无风险）；2、推荐别人使用（赚钱）。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,102,255); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">充电话费就可以创业</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-10-15 09:58:43', '0');
INSERT INTO `news` VALUES ('94', '1', '	昨日最佳会员李振军：日薪3756元', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">活动期间，无数会员获得了有史以来最大的成功，业绩令人万分振奋！</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">其中最佳</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员李振军，积分突破</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">000：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">000，是公司第一位小区积分突破</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">000的会员，自加入到现在为止，总共历时为</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">47</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">天。</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">昨日李振军所有会员号总收入</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3756元，亚军陈亚以3016元紧随其后，月薪超过千元会员有13位……</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">市场高峰期已经开始，相信很快我们就能迎来大批会员突破</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">5</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">000：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">5</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">000，甚至10000：10000也不会太远！让我们一起努力吧！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，充值手机话费就可以创业！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-10-18 14:40:00', '0');
INSERT INTO `news` VALUES ('95', '1', '光荣榜：热烈祝贺会员李振军今日突破10000：10000', '1', '<P><IMG src=\"/uploadfile/20111031181411665.jpg\" border=0></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">喜讯连连，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">热烈祝贺公司第一位小区积分突破1万的会员出炉，就是我们广东市场的领军人物：李振军老师，积分比为：23561：10017，历时60天。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李振军老师自从加盟互联中国以来，一直是公司的领头羊，无论是在业绩上，还是在领导团队上，成绩都是有目共睹的！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">经过财务部统计：李振军老师日薪最高为4105元，也是公司唯一一位日薪曾经突破4000元大关的会员，迄今无人能破记录。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了表彰李老师的显著业绩，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司决定奖励联想笔记本电脑一台，型号：</SPAN><SPAN><A href=\"http://spu.tmall.com/spu_detail.htm?spu_id=131006413&amp;no_switch=1&amp;default_item_id=10590496910\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">Lenovo/联想&nbsp;ideapad&nbsp;Y470&nbsp;Y470N-IFI(H)</SPAN></A></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，具体配置如下：</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><IMG src=\"/uploadfile/20111031181447359.jpg\" border=0></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp; </P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp; 近日，公司客服将联系李振军老师，三天内把奖品发放到李老师手中！望广大会员以李老师为榜样，下一个笔记本将会属于您！</SPAN></P><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment--></SPAN><!--EndFragment--></SPAN><!--EndFragment-->', '2011-10-31 18:15:56', '0');
INSERT INTO `news` VALUES ('96', '1', '	处罚通知：', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司已经很努力完善质量，在完善质量的过程中，遇到些问题都是比较正常的，但是有部分以前没有用过手机ip话费的会员屡次毁谤公司！为了维护公司的声誉，现做出以下处罚：</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">会员号：胡俊、胡俊1和胡俊2话费全部封锁！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">一方面我们将会提升产品的质量，另一方面随着用户大批大批的增加，偶尔一小段时间出现不好使用的情况请大家谅解。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司会以实际业绩展示做强做大的决心！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-11-01 09:35:51', '0');
INSERT INTO `news` VALUES ('97', '1', '	好消息：新增小面值10元和20元充值卡，价格超级优惠，积分计划微调-必读篇', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">为了表示公司做大做强的决心，公司高层会议作出以下决定，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">增加小面值充值卡。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">10元面值价格为5元，20元面值价格为10元，30元面值价格为15元，均为5张起购买</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">；会员点击在线购物即可购买（10元面值请给客服QQ留言，注明会员号和数量等），无论是不是会员，均可以毫无阻碍地充值。同时，技术部处理程序，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">今后剩余10元不好使用的限制将取消，每张卡均可以畅通无阻地打完</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">D套餐的提成由3元提升为4元，EF套餐提成提升为5元。CD套餐的服务津贴提升为8%&nbsp;，EF套餐的服务津贴为10%</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司在部分省市的业绩已经很辉煌，部分省市还不够，但是我们将会更加努力，我们会以实际业绩向广大会员展示做强做大的决心！让我们一起努力吧！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-11-01 13:12:46', '0');
INSERT INTO `news` VALUES ('98', '1', '	小面值卡有效期说明', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><FONT color=#ff0033>&nbsp;&nbsp;&nbsp;&nbsp;10元面值的有效期为30天，20面值的有效期为60天，30面值没有有效期</FONT>，每张卡都是从充值开始计算有效期，不充值不计算有效期，和发放时间无关！</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp; 10元面值价格为5元，20元面值价格为10元，30元面值价格为15元，均为5张起购买。</SPAN></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><FONT color=#0000ff>&nbsp;&nbsp;&nbsp; 注：系统号15078342871存在诸多弊端，今后取消！换一个系统号</FONT><FONT color=#000000>03748359408。</FONT></SPAN></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;现在的互联中国，无论是制度还是别的方面，您要再做不成功，就真的不能怨别人了！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-11-02 09:41:44', '0');
INSERT INTO `news` VALUES ('99', '1', '光荣榜：热烈祝贺会员杜云生今日突破10000：10000', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><IMG src=\"/uploadfile/20111110100459447.jpg\" border=0></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">喜讯连连，<FONT color=#ff0000>继</FONT></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司第一位小区积分突破1万的会员李振军后，福建市场的领军人物：杜云生老师，积分比为：19822：10028，历时65天。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杜云生老师自从加盟互联中国以来，一直是公司的领头羊，无论是在业绩上，还是在领导团队上，成绩都是有目共睹的！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">经过财务部统计：杜云生老师有9次日薪均超过为3000元。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了表彰杜老师的显著业绩，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司决定奖励联想笔记本电脑一台，型号：</SPAN><SPAN><A href=\"http://spu.tmall.com/spu_detail.htm?spu_id=131006413&amp;no_switch=1&amp;default_item_id=10590496910\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; TEXT-DECORATION: underline; mso-spacerun: \'yes\'\">Lenovo/联想&nbsp;ideapad&nbsp;Y470&nbsp;Y470N-IFI(H)</SPAN></A></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，和李振军老师一样，具体配置如下：</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><IMG src=\"/uploadfile/20111110100517668.jpg\" border=0></SPAN></P><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">近日，公司客服将联系杜云生老师，三天内把奖品快递到杜老师手中！望广大会员以杜老师为榜样，下一个笔记本将会属于您！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment--></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN><!--EndFragment-->', '2011-11-10 10:07:04', '0');
INSERT INTO `news` VALUES ('100', '1', '光棍节-优惠报单活动安排', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">为了给广大代理商提供一个更好的创业平台，趁着光棍节来临之际，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">在</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">领导会议讨论下，公司决定举行以下</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">大型</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">优惠报单活动：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1、</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">全部套餐</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">半价，话费赠送相应减半，奖金减半，封顶减半。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2、</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">无论任何套餐，一次性购买</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1000元电子货币，奖励80元；一次性购买2000元电子货币，奖励200元</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">3、</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">本次活动即日起执行，&nbsp;截至</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">11</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">月</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">14</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">日晚上12点整准时结束。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国已经成长为</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">IP电话的超级巨人之一，现在的互联中国，无论是积分计划还是小面值零售卡，都无疑能让会员赚得盆满钵满，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">像李振军和杜云生等杰出代理商短短几个月赚到十万以上了，您还等什么，还不放手一搏吗</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">？</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN></P><!--EndFragment-->', '2011-11-10 10:51:49', '0');
INSERT INTO `news` VALUES ('101', '1', '光棍节活动延期通知', '0', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">由于昨晚上是客服休息时间，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">很多会员由于货币不足耽搁了开通新会员</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，公司有好几千积分都是昨晚上注册，但是由于客服不在线无法购买电子货币而没有开通！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">鉴于实际情况严重，也因为公司市场部安排优惠活动时没有考虑到客服休息时间，对此，市场部难辞其咎！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">为了更好地协助广大会员开拓市场，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">市场部决定，光棍节优惠活动延期3天，截至11月17号晚上12点</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，望广大会员再也不要错过机会，努力拓展！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 互联中国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">让沟通更加畅快</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-11-15 09:04:51', '0');
INSERT INTO `news` VALUES ('102', '1', '光荣榜：热烈祝贺会员马会明今日突破10000：10000', '1', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><IMG src=\"/uploadfile/20111115141030818.jpg\" border=0></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">喜讯连连，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">在光棍节优惠活动期间，很多会员大力拓展，有的会员一天能开掉</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2万电子货币。在此极其难得的活动期间，会员马会明抓住机遇，疯狂报单，很荣幸成为公司</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">第</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">三</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">位小区积分突破1</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">0000</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">的会员</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。热烈</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">广东市场的</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">主要领导</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">人物</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">之一</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">：</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">马会明</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">今日突破</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">10000：10000大关</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，积分比为：</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1100</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1：100</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">21</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，历时</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">63</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">天。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">马会明</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师自从加盟互联中国以来，一直</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">兢兢业业</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，无论是在业绩上，还是在领导团队上，成绩</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">斐然</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了表彰</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">马</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师的显著业绩，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司决定奖励联想笔记本电脑一台，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">和李振军、杜云生老师的一样，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">型号：</SPAN><SPAN><A href=\"http://spu.tmall.com/spu_detail.htm?spu_id=131006413&amp;no_switch=1&amp;default_item_id=10590496910\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; TEXT-DECORATION: underline; mso-spacerun: \'yes\'\">Lenovo/联想&nbsp;ideapad&nbsp;Y470&nbsp;Y470N-IFI(H)</SPAN></A></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，具体配置如下：</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p><IMG src=\"/uploadfile/20111115141045561.jpg\" border=0></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;近日，公司客服将联系</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">马</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">约</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">三天</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">左右</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">把奖品</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">快递</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">到马老师手中！望广大会员以</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">马</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师为榜样，下一个笔记本将会属于您</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 21pt; LINE-HEIGHT: 17.25pt; TEXT-ALIGN: left\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">助您轻松创业</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-11-15 14:11:04', '0');
INSERT INTO `news` VALUES ('103', '1', '	连续5天日薪突破千元会员公布', '1', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">不少会员都曾经日薪突破千元或者几百元，在此，公司仅仅公布在光棍节活动开始到昨日，每天日薪均突破千元的会员，给广大会员树立榜样，望广大会员给自己定一个目标，努力获取人生第一桶金！</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p><IMG src=\"/uploadfile/20111115142633176.jpg\" border=0></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;光荣榜单如下：</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">杜云生（福建）、李振军（广东）、卢南华（广东）、马会明（广东）、庞力（安徽）、黄飞飞（天津）</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">注：庞力老师小区业绩已经超过8000，估计近几天可能会超越1万，让我们拭目以待！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;互联中国，助您成功，要您成功！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-11-15 14:26:42', '0');
INSERT INTO `news` VALUES ('104', '1', '光荣榜：热烈祝贺会员庞力突破10000：10000', '1', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><IMG src=\"/uploadfile/20111118104151387.jpg\" border=0></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">喜讯连连，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国相继在全国不少市场获得成功，今日突破</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">10000：10000业绩的是我们安徽市场的杰出代表：庞力老师。</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">庞力</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">今日突破</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">10000：10000大关</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，积分比为：</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">10001</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">：1</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">4619</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，历时</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">71天</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">庞力</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师自从加盟互联中国以来，一直</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">兢兢业业</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，无论是在业绩上，还是在领导团队上，成绩</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">斐然，为公司拓展安徽市场做出了卓越的贡献！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了表彰</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">庞</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师的显著业绩，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司决定奖励联想笔记本电脑一台，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">和李振军、杜云生、马会明老师的一样，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">型号：</SPAN><SPAN><A href=\"http://spu.tmall.com/spu_detail.htm?spu_id=131006413&amp;no_switch=1&amp;default_item_id=10590496910\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; TEXT-DECORATION: underline; mso-spacerun: \'yes\'\">Lenovo/联想&nbsp;ideapad&nbsp;Y470&nbsp;Y470N-IFI(H)</SPAN></A></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，具体配置如下：</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><o:p><IMG src=\"/uploadfile/20111118104203435.jpg\" border=0></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">近日，公司客服将联系</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">庞</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">约</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">三天</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">左右</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">把奖品</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">快递</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">到</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">庞</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师手中！望广大会员以</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">庞</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">老师为榜样，下一个笔记本将会属于您</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(0,0,0); FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，助您成功，要您成功！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-11-18 10:42:09', '0');
INSERT INTO `news` VALUES ('105', '1', '系统升级通知', '1', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">发布人：技术部</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">光棍节活动后，公司会员的总数几乎增加了一倍多，为了保证用户使用，升级系统已经迫在眉睫，近日，公司技术部将对系统进行比较大幅度的升级，预计明天上午10点前处理完毕！系统升级结束后，将会是顶级质量，任何时间长途无阻！由此给您带来的不便，请谅解！</SPAN></P><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，助您成功，要您成功！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment--></o:p></SPAN><!--EndFragment-->', '2011-11-18 18:53:24', '0');
INSERT INTO `news` VALUES ('106', '1', '系统升级完毕！', '1', '<P>&nbsp;&nbsp;&nbsp; 在技术部努力下，系统升级完毕，由于客户量极大，晚上可能还是会有点小问题，请广大会员谅解，技术部将继续努力，为广大会员提供更加完善的通话质量：充值网站更换为 <FONT color=#ff0066>http://210.51.26.250/astgo/wap/pay.php?action=func_pay</FONT> ，预约网址更换为&nbsp;<A class=UnknownUrl title=阿里旺旺无法确定该链接的安全性 href=\"http://210.51.26.250/astgo/wap\" target=_blank safeflag=\"0\"><FONT face=黑体 color=#007ad8 size=2>http://210.51.26.250/astgo/wap</FONT></A> ，手机打预约号预不变，相当长的时间内系统不会升级，谢谢！</P><P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG><FONT color=#ff0066>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;互联中国，邀您成功，助您成功！</FONT></STRONG></P>', '2011-11-19 17:17:52', '0');
INSERT INTO `news` VALUES ('107', '1', '	VIP会员系统新增预约号通知，今后没有质量问题了', '1', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">发布人：技术部</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">光棍节活动后，公司会员的总数几乎增加了一倍多，为了保证用户使用，</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">新增VIP预约号02431671088，仅供会员使用，无论任何时间畅通无阻！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,51,153); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">原来的预约号仍可以使用，只是高峰期会比较差！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,51,153); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">VIP预约号没有质量问题！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,51,153); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司无论何时都以客户利益为重，做大做强的决心不会改变，发挥您的潜力，走向成功吧！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 20pt; LINE-HEIGHT: 17.25pt\"><SPAN style=\"FONT-SIZE: 10.5pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(51,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，助您成功，要您成功！</SPAN><SPAN style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->', '2011-11-24 12:36:30', '0');

-- ----------------------------
-- Table structure for `newssort`
-- ----------------------------
DROP TABLE IF EXISTS `newssort`;
CREATE TABLE `newssort` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `SortName` varchar(250) DEFAULT NULL,
  `Xuhao` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newssort
-- ----------------------------
INSERT INTO `newssort` VALUES ('1', '网站公告', '1');
INSERT INTO `newssort` VALUES ('2', '积分计划', '2');
INSERT INTO `newssort` VALUES ('3', '教学中心文章', '3');
INSERT INTO `newssort` VALUES ('4', '使用说明', '4');
INSERT INTO `newssort` VALUES ('5', '产品介绍', '5');
INSERT INTO `newssort` VALUES ('6', '购买货币说明', '6');
INSERT INTO `newssort` VALUES ('7', '在线充值说明', '7');
INSERT INTO `newssort` VALUES ('8', '客服中心', '8');
INSERT INTO `newssort` VALUES ('9', '购物须知', '9');

-- ----------------------------
-- Table structure for `productorder`
-- ----------------------------
DROP TABLE IF EXISTS `productorder`;
CREATE TABLE `productorder` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `ProductType` int(10) DEFAULT NULL,
  `UserId` int(10) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Mobile` varchar(150) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Content` text,
  `AddDate` timestamp NULL DEFAULT NULL,
  `Status` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productorder
-- ----------------------------
INSERT INTO `productorder` VALUES ('1', '2', '1', 'admin', '充值卡', null, '25', '123456', '2011-07-01 14:47:50', '0');
INSERT INTO `productorder` VALUES ('2', '1', '32', 'tt2', 'D套餐', null, '500', '123456', '2011-07-01 21:36:08', '1');
INSERT INTO `productorder` VALUES ('3', '2', '32', 'tt2', '充值卡', null, '25', '123456', '2011-07-01 21:44:54', '0');
INSERT INTO `productorder` VALUES ('4', '2', '30', 'tt1', '充值卡', null, '100', '123456', '2011-07-01 21:50:12', '0');
INSERT INTO `productorder` VALUES ('5', '1', '33', 'tt3', 'E套餐', null, '1000', '123456', '2011-07-01 22:06:13', '1');
INSERT INTO `productorder` VALUES ('6', '1', '34', 'qq2', 'D套餐', null, '500', '123456', '2011-07-01 23:59:15', '0');
INSERT INTO `productorder` VALUES ('7', '1', '35', 'qq3', 'E套餐', null, '1000', '123456', '2011-07-01 23:59:18', '1');
INSERT INTO `productorder` VALUES ('8', '1', '36', 'hh', 'B套餐', null, '100', '123456', '2011-07-02 08:57:12', '0');
INSERT INTO `productorder` VALUES ('9', '1', '37', 'xin1', 'E套餐', null, '500', '123456', '2011-07-04 09:38:29', '1');
INSERT INTO `productorder` VALUES ('10', '1', '38', 'xin2', 'E套餐', null, '500', '123456', '2011-07-04 09:39:40', '0');
INSERT INTO `productorder` VALUES ('11', '1', '39', 'xin3', 'E套餐', null, '500', '123456', '2011-07-04 09:39:43', '0');
INSERT INTO `productorder` VALUES ('12', '1', '41', 'srwxd1', 'D套餐', null, '250', '123456', '2011-07-04 10:46:46', '1');
INSERT INTO `productorder` VALUES ('13', '2', '41', 'srwxd1', 'D套餐', null, '0', '123456', '2011-07-04 10:57:15', '0');
INSERT INTO `productorder` VALUES ('14', '1', '46', 'wang3', 'D套餐', null, '250', '123456', '2011-07-04 12:27:08', '1');
INSERT INTO `productorder` VALUES ('15', '2', '41', 'srwxd1', 'D套餐', null, '0', '123456', '2011-07-05 10:55:00', '0');
INSERT INTO `productorder` VALUES ('16', '2', '41', 'srwxd1', 'D套餐', null, '0', '123456', '2011-07-05 11:33:23', '0');
INSERT INTO `productorder` VALUES ('17', '1', '50', 'ding', 'E套餐', null, '500', '123456', '2011-07-05 19:57:41', '0');
INSERT INTO `productorder` VALUES ('18', '1', '51', 'ding2', 'D套餐', null, '250', '123456', '2011-07-05 20:48:57', '0');
INSERT INTO `productorder` VALUES ('19', '1', '52', 'ding3', 'D套餐', null, '250', '123456', '2011-07-05 20:49:02', '0');
INSERT INTO `productorder` VALUES ('20', '1', '53', 'niu', 'E套餐', null, '500', '123456', '2011-07-06 09:29:04', '0');
INSERT INTO `productorder` VALUES ('21', '1', '54', 'niu2', 'D套餐', null, '250', '123456', '2011-07-06 09:29:11', '0');
INSERT INTO `productorder` VALUES ('22', '1', '55', 'niu3', 'D套餐', null, '250', '123456', '2011-07-06 09:30:48', '0');
INSERT INTO `productorder` VALUES ('23', '1', '69', 'wumei', 'E套餐', null, '500', '123456', '2011-07-06 21:54:40', '0');
INSERT INTO `productorder` VALUES ('24', '1', '70', 'wumei2', 'E套餐', null, '500', '123456', '2011-07-06 21:54:44', '0');
INSERT INTO `productorder` VALUES ('25', '1', '71', 'wumei3', 'E套餐', null, '500', '123456', '2011-07-06 21:58:50', '0');
INSERT INTO `productorder` VALUES ('26', '1', '74', 'a', 'E套餐', null, '500', '123456', '2011-07-06 22:43:36', '1');
INSERT INTO `productorder` VALUES ('27', '1', '75', 'aa', 'D套餐', null, '250', '123456', '2011-07-06 22:48:55', '1');
INSERT INTO `productorder` VALUES ('28', '1', '79', 'aaa', 'D套餐', null, '250', '123456', '2011-07-06 23:35:11', '1');
INSERT INTO `productorder` VALUES ('29', '1', '82', 'huanying', 'E套餐', null, '500', '123456', '2011-07-09 16:42:24', '0');
INSERT INTO `productorder` VALUES ('30', '1', '83', 'huanying2', 'E套餐', null, '500', '123456', '2011-07-09 16:43:06', '0');
INSERT INTO `productorder` VALUES ('31', '1', '85', 'huanying3', 'E套餐', null, '500', '123456', '2011-07-09 16:46:53', '0');
INSERT INTO `productorder` VALUES ('32', '1', '42', 'srwxd2', 'D套餐', null, '250', '123456', '2011-07-10 09:33:27', '1');
INSERT INTO `productorder` VALUES ('33', '2', '38', 'xin2', '充值卡', null, '100', '123456', '2011-07-15 19:20:47', '1');
INSERT INTO `productorder` VALUES ('34', '1', '87', '抉择', 'D套餐', null, '500', '123456', '2011-07-16 11:25:04', '1');
INSERT INTO `productorder` VALUES ('35', '1', '88', '刘林', 'C套餐', null, '250', '123456', '2011-07-19 22:20:57', '1');
INSERT INTO `productorder` VALUES ('36', '1', '89', '王超', 'C套餐', null, '250', '123456', '2011-07-19 22:30:09', '1');
INSERT INTO `productorder` VALUES ('37', '1', '90', '郭丽娜', 'D套餐', null, '500', '123456', '2011-07-19 23:09:44', '1');
INSERT INTO `productorder` VALUES ('38', '2', '87', '抉择', '充值卡', null, '25', '123456', '2011-08-09 20:55:14', '1');
INSERT INTO `productorder` VALUES ('39', '1', '93', 'gg2', 'D套餐', null, '500', '123456', '2011-08-12 09:21:56', '0');
INSERT INTO `productorder` VALUES ('40', '1', '96', 'gg3', 'D套餐', null, '500', '123456', '2011-08-12 09:47:32', '0');
INSERT INTO `productorder` VALUES ('41', '1', '97', 'gg4', 'D套餐', null, '500', '123456', '2011-08-12 09:52:36', '0');
INSERT INTO `productorder` VALUES ('42', '1', '98', 'hh1', 'C套餐', null, '250', '123456', '2011-08-12 11:54:27', '0');
INSERT INTO `productorder` VALUES ('43', '1', '95', '六月流觞', 'D套餐', null, '500', '123456', '2011-08-12 13:16:12', '1');
INSERT INTO `productorder` VALUES ('44', '2', '31', 'qq1', '充值卡', null, '15', '123456', '2011-08-30 13:29:29', '0');
INSERT INTO `productorder` VALUES ('45', '2', '31', 'qq1', '充值卡', null, '100', '123456', '2011-08-30 13:29:39', '0');
INSERT INTO `productorder` VALUES ('46', '1', '99', 'yue', 'C套餐', null, '250', '123456', '2011-09-01 12:27:38', '1');
INSERT INTO `productorder` VALUES ('47', '1', '100', 'hy1', 'F套餐', null, '1000', '123456', '2011-09-01 22:19:27', '0');
INSERT INTO `productorder` VALUES ('48', '1', '101', 'hy2', 'E套餐', null, '600', '123456', '2011-09-01 22:20:46', '0');
INSERT INTO `productorder` VALUES ('49', '1', '102', 'hy3', 'E套餐', null, '600', '123456', '2011-09-01 22:20:50', '0');
INSERT INTO `productorder` VALUES ('50', '1', '103', 'zhu1', 'F套餐', null, '1000', '123456', '2011-09-01 22:22:12', '0');
INSERT INTO `productorder` VALUES ('51', '1', '104', 'zhu2', 'E套餐', null, '600', '123456', '2011-09-01 22:22:16', '0');
INSERT INTO `productorder` VALUES ('52', '1', '105', 'zhu3', 'E套餐', null, '600', '123456', '2011-09-01 22:23:07', '0');
INSERT INTO `productorder` VALUES ('53', '1', '106', 'YY11', 'B套餐', null, '100', '123456', '2011-09-02 21:20:22', '1');
INSERT INTO `productorder` VALUES ('54', '1', '107', '吕明明', 'B套餐', null, '100', '123456', '2011-09-02 21:35:20', '1');
INSERT INTO `productorder` VALUES ('55', '1', '108', '种瓜得豆', 'D套餐', null, '400', '123456', '2011-09-03 10:17:21', '1');
INSERT INTO `productorder` VALUES ('56', '1', '111', 'wp', 'C套餐', null, '250', '123456', '2011-09-04 13:14:12', '1');
INSERT INTO `productorder` VALUES ('57', '1', '112', '东区', 'B套餐', null, '100', '123456', '2011-09-04 16:09:30', '1');
INSERT INTO `productorder` VALUES ('58', '1', '113', '王魁峰', 'B套餐', null, '100', '123456', '2011-09-05 23:06:34', '1');
INSERT INTO `productorder` VALUES ('59', '1', '114', '无敌', 'B套餐', null, '100', '123456', '2011-09-07 14:31:26', '1');
INSERT INTO `productorder` VALUES ('60', '1', '115', '游龙', 'E套餐', null, '500', '123456', '2011-09-09 18:03:09', '1');
INSERT INTO `productorder` VALUES ('61', '1', '116', '游龙1', 'D套餐', null, '250', '123456', '2011-09-09 18:03:15', '1');
INSERT INTO `productorder` VALUES ('62', '1', '117', '游龙2', 'D套餐', null, '250', '123456', '2011-09-09 18:04:19', '1');
INSERT INTO `productorder` VALUES ('63', '1', '119', '今相见', 'B套餐', null, '100', '123456', '2011-09-11 08:08:32', '1');
INSERT INTO `productorder` VALUES ('64', '1', '120', '成功的路', 'B套餐', null, '100', '123456', '2011-09-11 11:36:21', '1');
INSERT INTO `productorder` VALUES ('65', '1', '125', 'b1', 'A套餐', null, '25', '123456', '2011-09-11 15:17:58', '1');
INSERT INTO `productorder` VALUES ('66', '2', '120', '成功的路', '充值卡', null, '15', '123456', '2011-09-11 16:10:36', '1');
INSERT INTO `productorder` VALUES ('67', '2', '120', '成功的路', '充值卡', null, '15', '123456', '2011-09-11 17:11:18', '1');
INSERT INTO `productorder` VALUES ('68', '2', '120', '成功的路', '充值卡', null, '15', '123456', '2011-09-11 17:11:48', '1');
INSERT INTO `productorder` VALUES ('69', '2', '120', '成功的路', '充值卡', null, '15', '123456', '2011-09-11 17:11:57', '1');
INSERT INTO `productorder` VALUES ('70', '2', '120', '成功的路', '充值卡', null, '15', '123456', '2011-09-11 17:14:24', '1');
INSERT INTO `productorder` VALUES ('71', '2', '120', '成功的路', '充值卡', null, '15', '123456', '2011-09-11 17:14:44', '1');
INSERT INTO `productorder` VALUES ('72', '1', '127', '蓝天', 'E套餐', null, '500', '123456', '2011-09-11 22:08:10', '1');
INSERT INTO `productorder` VALUES ('73', '1', '130', 'qq5', 'D套餐', null, '500', '123456', '2011-09-12 11:55:38', '1');
INSERT INTO `productorder` VALUES ('74', '1', '129', 'qq4', 'C套餐', null, '250', '123456', '2011-09-12 11:56:08', '1');
INSERT INTO `productorder` VALUES ('75', '2', '35', 'qq3', '充值卡', null, '15', '123456', '2011-09-12 21:00:59', '1');
INSERT INTO `productorder` VALUES ('76', '1', '135', 'haha', 'C套餐', null, '250', '123456', '2011-09-13 21:22:55', '0');
INSERT INTO `productorder` VALUES ('77', '1', '138', '郭芳', 'D套餐', null, '500', '123456', '2011-09-14 15:18:17', '1');
INSERT INTO `productorder` VALUES ('78', '2', '120', '成功的路', '充值卡', null, '15', '123456', '2011-09-14 17:36:41', '1');
INSERT INTO `productorder` VALUES ('79', '2', '120', '成功的路', '充值卡', null, '15', '123456', '2011-09-14 23:10:11', '1');
INSERT INTO `productorder` VALUES ('80', '1', '140', '马薪', 'D套餐', null, '500', '123456', '2011-09-17 14:16:29', '1');
INSERT INTO `productorder` VALUES ('81', '1', '141', '马薪1', 'C套餐', null, '250', '123456', '2011-09-17 14:16:35', '1');
INSERT INTO `productorder` VALUES ('82', '1', '142', '马薪2', 'C套餐', null, '250', '123456', '2011-09-17 14:19:33', '1');
INSERT INTO `productorder` VALUES ('83', '1', '143', '张志明', 'C套餐', null, '250', '123456', '2011-09-18 15:42:54', '1');
INSERT INTO `productorder` VALUES ('84', '1', '146', '陈永旺', 'D套餐', null, '500', '123456', '2011-09-19 17:39:36', '1');
INSERT INTO `productorder` VALUES ('85', '1', '148', '冯涛', 'D套餐', null, '500', '123456', '2011-09-21 12:22:38', '1');
INSERT INTO `productorder` VALUES ('86', '1', '149', '冷风', 'B套餐', null, '100', '123456', '2011-09-21 14:53:03', '1');
INSERT INTO `productorder` VALUES ('87', '1', '118', '盛夏光年', 'D套餐', null, '500', '123456', '2011-09-21 17:23:03', '1');
INSERT INTO `productorder` VALUES ('88', '1', '150', '1', 'A套餐', null, '25', '123456', '2011-09-21 20:07:56', '1');
INSERT INTO `productorder` VALUES ('89', '1', '152', '666666', 'D套餐', null, '500', '123456', '2011-09-21 21:54:14', '1');
INSERT INTO `productorder` VALUES ('90', '1', '156', 'STAR88', 'B套餐', null, '100', '123456', '2011-09-23 18:47:04', '1');
INSERT INTO `productorder` VALUES ('91', '2', '35', 'qq3', '充值卡', null, '15', '123456', '2011-09-23 19:20:51', '1');
INSERT INTO `productorder` VALUES ('92', '2', '118', '盛夏光年', '充值卡', null, '15', '123456', '2011-09-23 20:30:47', '1');
INSERT INTO `productorder` VALUES ('93', '1', '158', '黄从江', 'D套餐', null, '500', '123456', '2011-09-23 20:46:33', '1');
INSERT INTO `productorder` VALUES ('94', '1', '159', '马薪3', 'B套餐', null, '100', '123456', '2011-09-23 21:16:27', '1');
INSERT INTO `productorder` VALUES ('95', '1', '160', '顾天云', 'B套餐', null, '100', '123456', '2011-09-24 10:58:48', '1');
INSERT INTO `productorder` VALUES ('96', '1', '161', 'lijinjin', 'D套餐', null, '500', '123456', '2011-09-24 13:35:56', '1');
INSERT INTO `productorder` VALUES ('97', '2', '118', '盛夏光年', '充值卡', null, '15', '123456', '2011-09-25 20:31:51', '1');
INSERT INTO `productorder` VALUES ('98', '1', '165', '曹海涛', 'C套餐', null, '250', '123456', '2011-09-26 12:44:54', '1');
INSERT INTO `productorder` VALUES ('99', '1', '166', '崔宗仁', 'B套餐', null, '100', '123456', '2011-09-26 22:52:10', '1');
INSERT INTO `productorder` VALUES ('100', '1', '167', '小希', 'B套餐', null, '100', '123456', '2011-09-27 10:30:59', '1');
INSERT INTO `productorder` VALUES ('101', '1', '169', '冷风1', 'B套餐', null, '100', '123456', '2011-09-28 13:39:18', '1');
INSERT INTO `productorder` VALUES ('102', '1', '175', '李聪', 'D套餐', null, '250', '123456', '2011-09-29 14:46:18', '1');
INSERT INTO `productorder` VALUES ('103', '1', '176', '李聪1', 'C套餐', null, '125', '123456', '2011-09-29 14:47:38', '1');
INSERT INTO `productorder` VALUES ('104', '1', '177', '李聪2', 'C套餐', null, '125', '123456', '2011-09-29 14:47:43', '1');
INSERT INTO `productorder` VALUES ('105', '1', '162', '枫', 'E套餐', null, '500', '123456', '2011-09-29 22:04:51', '1');
INSERT INTO `productorder` VALUES ('106', '2', '35', 'qq3', '充值卡', null, '15', '123456', '2011-10-04 19:41:28', '1');
INSERT INTO `productorder` VALUES ('107', '1', '153', '999999', 'C套餐', null, '125', '123456', '2011-10-07 11:28:50', '1');
INSERT INTO `productorder` VALUES ('108', '1', '178', '蓝天A', 'D套餐', null, '250', '123456', '2011-10-08 17:51:09', '1');
INSERT INTO `productorder` VALUES ('109', '1', '181', '蓝天B', 'C套餐', null, '125', '123456', '2011-10-08 17:51:55', '1');
INSERT INTO `productorder` VALUES ('110', '1', '180', '蓝天C', 'C套餐', null, '125', '123456', '2011-10-08 17:52:40', '1');
INSERT INTO `productorder` VALUES ('111', '2', '143', '张志明', '充值卡', null, '100', '123456', '2011-10-08 19:02:51', '1');
INSERT INTO `productorder` VALUES ('112', '1', '183', '冯涛1', 'B套餐', null, '100', '123456', '2011-10-08 19:32:05', '1');
INSERT INTO `productorder` VALUES ('113', '1', '184', '帅', 'B套餐', null, '100', '123456', '2011-10-08 20:58:19', '1');
INSERT INTO `productorder` VALUES ('114', '2', '140', '马薪', '充值卡', null, '15', '123456', '2011-10-09 13:29:36', '1');
INSERT INTO `productorder` VALUES ('115', '1', '186', '银行', 'D套餐', null, '250', '123456', '2011-10-09 14:56:19', '1');
INSERT INTO `productorder` VALUES ('116', '1', '187', '蓝天1', 'C套餐', null, '125', '123456', '2011-10-09 14:56:42', '1');
INSERT INTO `productorder` VALUES ('117', '1', '188', '蓝天2', 'C套餐', null, '125', '123456', '2011-10-09 14:56:52', '1');
INSERT INTO `productorder` VALUES ('118', '1', '189', '胡世明', 'C套餐', null, '125', '123456', '2011-10-10 12:08:13', '1');
INSERT INTO `productorder` VALUES ('119', '1', '190', '18737552173', 'D套餐', null, '250', '123456', '2011-10-10 15:52:19', '1');
INSERT INTO `productorder` VALUES ('120', '1', '191', '18790260106', 'C套餐', null, '125', '123456', '2011-10-10 15:54:20', '1');
INSERT INTO `productorder` VALUES ('121', '1', '192', '13523752198', 'C套餐', null, '125', '123456', '2011-10-10 15:54:27', '1');
INSERT INTO `productorder` VALUES ('122', '1', '151', 'xiaosi', 'D套餐', null, '250', '123456', '2011-10-10 16:55:12', '1');
INSERT INTO `productorder` VALUES ('123', '1', '193', 'ZGH', 'C套餐', null, '125', '123456', '2011-10-10 21:15:02', '1');
INSERT INTO `productorder` VALUES ('124', '1', '154', '888888', 'C套餐', null, '250', '123456', '2011-10-14 12:12:19', '1');
INSERT INTO `productorder` VALUES ('125', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-14 17:45:19', '1');
INSERT INTO `productorder` VALUES ('126', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-15 17:23:56', '1');
INSERT INTO `productorder` VALUES ('127', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-15 22:46:21', '1');
INSERT INTO `productorder` VALUES ('128', '1', '198', '传奇M', 'C套餐', null, '125', '123456', '2011-10-16 12:26:59', '1');
INSERT INTO `productorder` VALUES ('129', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-16 14:20:37', '1');
INSERT INTO `productorder` VALUES ('130', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-16 14:31:34', '1');
INSERT INTO `productorder` VALUES ('131', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-16 17:25:55', '1');
INSERT INTO `productorder` VALUES ('132', '1', '200', '轩168', 'A套餐', null, '25', '123456', '2011-10-16 18:45:50', '1');
INSERT INTO `productorder` VALUES ('133', '1', '201', '一一123', 'C套餐', null, '125', '123456', '2011-10-16 20:43:24', '1');
INSERT INTO `productorder` VALUES ('134', '1', '202', '胡俊', 'D套餐', null, '250', '123456', '2011-10-16 20:48:27', '1');
INSERT INTO `productorder` VALUES ('135', '1', '203', '胡俊1', 'C套餐', null, '125', '123456', '2011-10-16 20:48:33', '1');
INSERT INTO `productorder` VALUES ('136', '1', '204', '胡俊2', 'C套餐', null, '125', '123456', '2011-10-16 20:53:29', '1');
INSERT INTO `productorder` VALUES ('137', '1', '205', '王亚龙', 'D套餐', null, '250', '123456', '2011-10-16 20:53:35', '1');
INSERT INTO `productorder` VALUES ('138', '1', '206', '王亚龙1', 'C套餐', null, '125', '123456', '2011-10-16 21:00:03', '1');
INSERT INTO `productorder` VALUES ('139', '1', '207', '王亚龙2', 'C套餐', null, '125', '123456', '2011-10-16 21:00:07', '1');
INSERT INTO `productorder` VALUES ('140', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-17 12:22:07', '1');
INSERT INTO `productorder` VALUES ('141', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-17 12:22:22', '1');
INSERT INTO `productorder` VALUES ('142', '1', '208', '挑战者2', 'C套餐', null, '125', '123456', '2011-10-17 19:33:35', '1');
INSERT INTO `productorder` VALUES ('143', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-17 19:34:58', '1');
INSERT INTO `productorder` VALUES ('144', '1', '209', '二二123', 'C套餐', null, '125', '123456', '2011-10-17 20:04:59', '1');
INSERT INTO `productorder` VALUES ('145', '1', '210', 'LX', 'D套餐', null, '250', '123456', '2011-10-17 21:14:41', '1');
INSERT INTO `productorder` VALUES ('146', '1', '211', 'LX1', 'C套餐', null, '125', '123456', '2011-10-17 21:14:48', '1');
INSERT INTO `productorder` VALUES ('147', '1', '212', 'LX2', 'C套餐', null, '125', '123456', '2011-10-17 21:15:50', '1');
INSERT INTO `productorder` VALUES ('148', '2', '35', 'qq3', '充值卡', null, '15', '123456', '2011-10-18 13:05:08', '1');
INSERT INTO `productorder` VALUES ('149', '2', '118', '盛夏光年', '充值卡', null, '15', '123456', '2011-10-18 15:31:38', '1');
INSERT INTO `productorder` VALUES ('150', '2', '118', '盛夏光年', '充值卡', null, '15', '123456', '2011-10-18 15:33:27', '1');
INSERT INTO `productorder` VALUES ('151', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-18 19:38:22', '1');
INSERT INTO `productorder` VALUES ('152', '2', '35', 'qq3', '充值卡', null, '15', '123456', '2011-10-19 15:52:51', '1');
INSERT INTO `productorder` VALUES ('153', '1', '215', 'java', 'B套餐', null, '100', '123456', '2011-10-20 22:49:58', '1');
INSERT INTO `productorder` VALUES ('154', '2', '189', '胡世明', '充值卡', null, '15', '123456', '2011-10-21 13:43:15', '1');
INSERT INTO `productorder` VALUES ('155', '1', '222', 'ZZJ', 'B套餐', null, '100', '123456', '2011-10-24 18:11:22', '1');
INSERT INTO `productorder` VALUES ('156', '1', '224', 'hui', 'B套餐', null, '100', '123456', '2011-10-25 21:30:36', '1');
INSERT INTO `productorder` VALUES ('157', '1', '225', 'GYL', 'B套餐', null, '100', '123456', '2011-10-26 12:47:23', '1');
INSERT INTO `productorder` VALUES ('158', '1', '226', '传奇N', 'B套餐', null, '100', '123456', '2011-10-26 13:42:46', '1');
INSERT INTO `productorder` VALUES ('159', '1', '229', '吻着泪说爱你', 'B套餐', null, '100', '123456', '2011-10-27 22:02:19', '1');
INSERT INTO `productorder` VALUES ('160', '1', '230', '挑战者3', 'B套餐', null, '100', '123456', '2011-10-28 13:58:53', '1');
INSERT INTO `productorder` VALUES ('161', '1', '231', '001', 'A套餐', null, '25', '123456', '2011-10-28 18:11:20', '1');
INSERT INTO `productorder` VALUES ('162', '2', '143', '张志明', '充值卡', null, '15', '123456', '2011-10-31 18:39:04', '1');
INSERT INTO `productorder` VALUES ('163', '2', '143', '张志明', '充值卡', null, '15', '123456', '2011-10-31 21:16:09', '1');
INSERT INTO `productorder` VALUES ('164', '2', '31', 'qq1', '充值卡', null, '60', '123456', '2011-11-01 13:19:14', '0');
INSERT INTO `productorder` VALUES ('165', '2', '35', 'qq3', '充值卡', null, '55', '123456', '2011-11-02 12:35:23', '1');
INSERT INTO `productorder` VALUES ('166', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-02 12:49:16', '1');
INSERT INTO `productorder` VALUES ('167', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-02 12:50:15', '1');
INSERT INTO `productorder` VALUES ('168', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-02 12:50:48', '1');
INSERT INTO `productorder` VALUES ('169', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-02 12:51:22', '0');
INSERT INTO `productorder` VALUES ('170', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-02 12:52:28', '1');
INSERT INTO `productorder` VALUES ('171', '2', '152', '666666', '充值卡', null, '50', '123456', '2011-11-02 22:07:48', '1');
INSERT INTO `productorder` VALUES ('172', '2', '152', '666666', '充值卡', null, '0', '123456', '2011-11-03 09:33:55', '1');
INSERT INTO `productorder` VALUES ('173', '2', '152', '666666', '充值卡', null, '0', '123456', '2011-11-03 09:34:34', '1');
INSERT INTO `productorder` VALUES ('174', '2', '152', '666666', '充值卡', null, '0', '123456', '2011-11-03 09:47:38', '1');
INSERT INTO `productorder` VALUES ('175', '2', '152', '666666', '充值卡', null, '0', '123456', '2011-11-03 09:48:13', '1');
INSERT INTO `productorder` VALUES ('176', '2', '118', '盛夏光年', '充值卡', null, '50', '123456', '2011-11-03 10:07:20', '1');
INSERT INTO `productorder` VALUES ('177', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-03 10:11:07', '1');
INSERT INTO `productorder` VALUES ('178', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-03 10:12:08', '1');
INSERT INTO `productorder` VALUES ('179', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-03 10:12:41', '1');
INSERT INTO `productorder` VALUES ('180', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-03 10:13:15', '1');
INSERT INTO `productorder` VALUES ('181', '1', '234', '002', 'A套餐', null, '25', '123456', '2011-11-03 12:39:56', '1');
INSERT INTO `productorder` VALUES ('182', '1', '237', '抉择2', 'A套餐', null, '25', '123456', '2011-11-04 22:27:40', '1');
INSERT INTO `productorder` VALUES ('183', '1', '245', 'H', 'B套餐', null, '100', '123456', '2011-11-05 17:08:10', '1');
INSERT INTO `productorder` VALUES ('184', '1', '244', 'L', 'C套餐', null, '250', '123456', '2011-11-05 17:10:22', '1');
INSERT INTO `productorder` VALUES ('185', '1', '246', 'D', 'B套餐', null, '100', '123456', '2011-11-05 17:11:24', '1');
INSERT INTO `productorder` VALUES ('186', '2', '120', '成功的路', '充值卡', null, '25', '123456', '2011-11-05 19:32:11', '1');
INSERT INTO `productorder` VALUES ('187', '2', '120', '成功的路', '充值卡', null, '0', '123456', '2011-11-05 23:24:03', '1');
INSERT INTO `productorder` VALUES ('188', '2', '120', '成功的路', '充值卡', null, '0', '123456', '2011-11-05 23:24:37', '1');
INSERT INTO `productorder` VALUES ('189', '2', '120', '成功的路', '充值卡', null, '0', '123456', '2011-11-05 23:24:59', '1');
INSERT INTO `productorder` VALUES ('190', '2', '120', '成功的路', '充值卡', null, '0', '123456', '2011-11-05 23:25:33', '1');
INSERT INTO `productorder` VALUES ('191', '1', '236', '01', 'B套餐', null, '100', '123456', '2011-11-06 15:57:04', '1');
INSERT INTO `productorder` VALUES ('192', '2', '118', '盛夏光年', '充值卡', null, '50', '123456', '2011-11-07 21:44:40', '1');
INSERT INTO `productorder` VALUES ('193', '2', '152', '666666', '充值卡', null, '50', '123456', '2011-11-07 21:56:20', '1');
INSERT INTO `productorder` VALUES ('194', '2', '152', '666666', '充值卡', null, '50', '123456', '2011-11-07 21:56:39', '1');
INSERT INTO `productorder` VALUES ('195', '1', '249', '004', 'A套餐', null, '25', '123456', '2011-11-08 19:35:55', '1');
INSERT INTO `productorder` VALUES ('196', '2', '35', 'qq3', '充值卡', null, '25', '123456', '2011-11-09 12:00:26', '1');
INSERT INTO `productorder` VALUES ('197', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-09 12:04:52', '1');
INSERT INTO `productorder` VALUES ('198', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-09 12:05:13', '1');
INSERT INTO `productorder` VALUES ('199', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-09 12:05:37', '1');
INSERT INTO `productorder` VALUES ('200', '2', '35', 'qq3', '充值卡', null, '0', '123456', '2011-11-09 12:05:54', '1');
INSERT INTO `productorder` VALUES ('201', '1', '250', '005', 'A套餐', null, '25', '123456', '2011-11-09 21:34:00', '1');
INSERT INTO `productorder` VALUES ('202', '1', '235', '003', 'A套餐', null, '25', '123456', '2011-11-09 21:36:08', '1');
INSERT INTO `productorder` VALUES ('203', '2', '118', '盛夏光年', '充值卡', null, '50', '123456', '2011-11-09 21:58:43', '1');
INSERT INTO `productorder` VALUES ('204', '2', '118', '盛夏光年', '充值卡', null, '50', '123456', '2011-11-09 21:58:45', '1');
INSERT INTO `productorder` VALUES ('205', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 09:27:32', '1');
INSERT INTO `productorder` VALUES ('206', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 09:27:51', '1');
INSERT INTO `productorder` VALUES ('207', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 09:28:20', '1');
INSERT INTO `productorder` VALUES ('208', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 09:29:08', '1');
INSERT INTO `productorder` VALUES ('209', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 09:43:29', '1');
INSERT INTO `productorder` VALUES ('210', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 09:43:47', '1');
INSERT INTO `productorder` VALUES ('211', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 09:44:08', '1');
INSERT INTO `productorder` VALUES ('212', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 09:44:27', '1');
INSERT INTO `productorder` VALUES ('213', '1', '251', '02', 'B套餐', null, '50', '123456', '2011-11-10 12:33:28', '1');
INSERT INTO `productorder` VALUES ('214', '1', '252', '03', 'B套餐', null, '50', '123456', '2011-11-10 12:34:12', '1');
INSERT INTO `productorder` VALUES ('215', '1', '253', '04', 'B套餐', null, '50', '123456', '2011-11-10 12:34:18', '1');
INSERT INTO `productorder` VALUES ('216', '1', '255', 'c1', 'C套餐', null, '125', '123456', '2011-11-10 12:52:04', '1');
INSERT INTO `productorder` VALUES ('217', '1', '256', '000000', 'B套餐', null, '50', '123456', '2011-11-10 13:06:21', '1');
INSERT INTO `productorder` VALUES ('218', '1', '257', '111111', 'B套餐', null, '50', '123456', '2011-11-10 13:06:27', '1');
INSERT INTO `productorder` VALUES ('219', '1', '258', 'LC', 'D套餐', null, '250', '123456', '2011-11-10 18:22:51', '1');
INSERT INTO `productorder` VALUES ('220', '1', '259', 'LC1', 'B套餐', null, '50', '123456', '2011-11-10 18:22:58', '1');
INSERT INTO `productorder` VALUES ('221', '1', '264', 'LC2', 'B套餐', null, '50', '123456', '2011-11-10 18:25:15', '1');
INSERT INTO `productorder` VALUES ('222', '2', '118', '盛夏光年', '充值卡', null, '25', '123456', '2011-11-10 21:15:37', '1');
INSERT INTO `productorder` VALUES ('223', '1', '262', 'ZJH', 'E套餐', null, '500', '123456', '2011-11-10 21:18:19', '1');
INSERT INTO `productorder` VALUES ('224', '1', '263', 'YMC', 'E套餐', null, '500', '123456', '2011-11-10 21:18:25', '1');
INSERT INTO `productorder` VALUES ('225', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 21:23:35', '1');
INSERT INTO `productorder` VALUES ('226', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 21:23:54', '1');
INSERT INTO `productorder` VALUES ('227', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 21:24:15', '1');
INSERT INTO `productorder` VALUES ('228', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-10 21:24:34', '1');
INSERT INTO `productorder` VALUES ('229', '1', '265', '006', 'A套餐', null, '12.5', '123456', '2011-11-10 21:26:19', '1');
INSERT INTO `productorder` VALUES ('230', '1', '266', 'cui', 'B套餐', null, '50', '123456', '2011-11-10 21:28:19', '1');
INSERT INTO `productorder` VALUES ('231', '1', '269', 'LJH', 'D套餐', null, '250', '123456', '2011-11-11 19:41:13', '1');
INSERT INTO `productorder` VALUES ('232', '1', '277', 'asd', 'B套餐', null, '50', '123456', '2011-11-11 20:13:38', '1');
INSERT INTO `productorder` VALUES ('233', '1', '280', 'LC4', 'B套餐', null, '50', '123456', '2011-11-11 20:40:36', '1');
INSERT INTO `productorder` VALUES ('234', '1', '281', 'YMC1', 'A套餐', null, '12.5', '123456', '2011-11-11 21:24:37', '1');
INSERT INTO `productorder` VALUES ('235', '1', '282', 'MC', 'D套餐', null, '250', '123456', '2011-11-11 21:27:04', '1');
INSERT INTO `productorder` VALUES ('236', '1', '283', '强子', 'C套餐', null, '125', '123456', '2011-11-11 21:56:11', '1');
INSERT INTO `productorder` VALUES ('237', '1', '272', '07', 'B套餐', null, '50', '123456', '2011-11-11 22:07:24', '1');
INSERT INTO `productorder` VALUES ('238', '1', '275', '10', 'B套餐', null, '50', '123456', '2011-11-11 22:07:36', '1');
INSERT INTO `productorder` VALUES ('239', '1', '270', '05', 'B套餐', null, '50', '123456', '2011-11-12 13:31:10', '1');
INSERT INTO `productorder` VALUES ('240', '1', '285', '08', 'B套餐', null, '50', '123456', '2011-11-12 13:35:07', '1');
INSERT INTO `productorder` VALUES ('241', '1', '286', '09', 'B套餐', null, '50', '123456', '2011-11-12 13:35:12', '1');
INSERT INTO `productorder` VALUES ('242', '2', '283', '强子', '充值卡', null, '50', '123456', '2011-11-12 18:54:11', '1');
INSERT INTO `productorder` VALUES ('243', '2', '283', '强子', '充值卡', null, '50', '123456', '2011-11-12 18:54:20', '1');
INSERT INTO `productorder` VALUES ('244', '1', '287', 'ZJH1', 'D套餐', null, '250', '123456', '2011-11-12 18:56:00', '1');
INSERT INTO `productorder` VALUES ('245', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 18:59:25', '1');
INSERT INTO `productorder` VALUES ('246', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 18:59:43', '1');
INSERT INTO `productorder` VALUES ('247', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:00:01', '1');
INSERT INTO `productorder` VALUES ('248', '2', '283', '强子', '充值卡', null, '25', '123456', '2011-11-12 19:00:16', '1');
INSERT INTO `productorder` VALUES ('249', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:00:34', '1');
INSERT INTO `productorder` VALUES ('250', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:02:09', '1');
INSERT INTO `productorder` VALUES ('251', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:02:23', '1');
INSERT INTO `productorder` VALUES ('252', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:02:37', '1');
INSERT INTO `productorder` VALUES ('253', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:02:58', '1');
INSERT INTO `productorder` VALUES ('254', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:04:54', '1');
INSERT INTO `productorder` VALUES ('255', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:05:13', '1');
INSERT INTO `productorder` VALUES ('256', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:05:29', '1');
INSERT INTO `productorder` VALUES ('257', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:05:49', '1');
INSERT INTO `productorder` VALUES ('258', '2', '283', '强子', '充值卡', null, '25', '123456', '2011-11-12 19:15:45', '1');
INSERT INTO `productorder` VALUES ('259', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:19:52', '1');
INSERT INTO `productorder` VALUES ('260', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:20:11', '1');
INSERT INTO `productorder` VALUES ('261', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:20:31', '1');
INSERT INTO `productorder` VALUES ('262', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:20:53', '1');
INSERT INTO `productorder` VALUES ('263', '2', '283', '强子', '充值卡', null, '25', '123456', '2011-11-12 19:27:04', '1');
INSERT INTO `productorder` VALUES ('264', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:43:01', '1');
INSERT INTO `productorder` VALUES ('265', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:43:23', '1');
INSERT INTO `productorder` VALUES ('266', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:43:40', '1');
INSERT INTO `productorder` VALUES ('267', '2', '283', '强子', '充值卡', null, '0', '123456', '2011-11-12 19:44:02', '1');
INSERT INTO `productorder` VALUES ('268', '2', '118', '盛夏光年', '充值卡', null, '50', '123456', '2011-11-12 21:39:55', '1');
INSERT INTO `productorder` VALUES ('269', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-12 23:08:50', '1');
INSERT INTO `productorder` VALUES ('270', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-12 23:09:21', '1');
INSERT INTO `productorder` VALUES ('271', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-12 23:09:43', '1');
INSERT INTO `productorder` VALUES ('272', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-12 23:10:03', '1');
INSERT INTO `productorder` VALUES ('273', '1', '300', '11', 'B套餐', null, '50', '123456', '2011-11-13 14:34:24', '1');
INSERT INTO `productorder` VALUES ('274', '1', '301', '12', 'B套餐', null, '50', '123456', '2011-11-13 14:34:29', '1');
INSERT INTO `productorder` VALUES ('275', '2', '118', '盛夏光年', '充值卡', null, '25', '123456', '2011-11-13 20:10:38', '1');
INSERT INTO `productorder` VALUES ('276', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-13 20:13:11', '1');
INSERT INTO `productorder` VALUES ('277', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-13 20:13:34', '1');
INSERT INTO `productorder` VALUES ('278', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-13 20:13:54', '1');
INSERT INTO `productorder` VALUES ('279', '2', '118', '盛夏光年', '充值卡', null, '0', '123456', '2011-11-13 20:14:12', '1');
INSERT INTO `productorder` VALUES ('280', '1', '305', 'LCZ', 'C套餐', null, '125', '123456', '2011-11-14 10:06:14', '1');
INSERT INTO `productorder` VALUES ('281', '1', '306', 'LCZ1', 'B套餐', null, '50', '123456', '2011-11-14 10:06:24', '1');
INSERT INTO `productorder` VALUES ('282', '1', '307', 'LCZ2', 'B套餐', null, '50', '123456', '2011-11-14 10:15:43', '1');
INSERT INTO `productorder` VALUES ('283', '1', '308', '现在', 'E套餐', null, '500', '123456', '2011-11-14 15:21:57', '1');
INSERT INTO `productorder` VALUES ('284', '1', '309', '过去', 'C套餐', null, '125', '123456', '2011-11-14 15:22:02', '1');
INSERT INTO `productorder` VALUES ('285', '1', '310', '未来', 'C套餐', null, '125', '123456', '2011-11-14 15:26:23', '1');
INSERT INTO `productorder` VALUES ('286', '1', '311', '遇见', 'E套餐', null, '500', '123456', '2011-11-14 15:26:29', '1');
INSERT INTO `productorder` VALUES ('287', '1', '312', 'hzz', 'C套餐', null, '125', '123456', '2011-11-14 17:56:15', '1');
INSERT INTO `productorder` VALUES ('288', '1', '313', 'hzz1', 'B套餐', null, '50', '123456', '2011-11-14 17:56:28', '1');
INSERT INTO `productorder` VALUES ('289', '1', '314', 'hzz2', 'B套餐', null, '50', '123456', '2011-11-14 17:57:55', '1');
INSERT INTO `productorder` VALUES ('290', '1', '315', 'DY', 'B套餐', null, '50', '123456', '2011-11-14 19:24:57', '1');
INSERT INTO `productorder` VALUES ('291', '1', '316', 'GCS', 'D套餐', null, '250', '123456', '2011-11-14 20:57:22', '1');
INSERT INTO `productorder` VALUES ('292', '1', '317', 'XXD', 'D套餐', null, '250', '123456', '2011-11-14 20:57:28', '1');
INSERT INTO `productorder` VALUES ('293', '1', '318', 'XXD1', 'C套餐', null, '125', '123456', '2011-11-14 21:00:41', '1');
INSERT INTO `productorder` VALUES ('294', '1', '319', 'XXD2', 'C套餐', null, '125', '123456', '2011-11-14 21:01:08', '1');
INSERT INTO `productorder` VALUES ('295', '1', '320', 'HDY', 'C套餐', null, '125', '123456', '2011-11-14 21:06:12', '1');
INSERT INTO `productorder` VALUES ('296', '1', '321', 'LJL', 'C套餐', null, '125', '123456', '2011-11-15 13:19:35', '1');
INSERT INTO `productorder` VALUES ('297', '2', '258', 'LC', '充值卡', null, '25', '123456', '2011-11-15 13:57:15', '1');
INSERT INTO `productorder` VALUES ('298', '2', '258', 'LC', '充值卡', null, '0', '123456', '2011-11-15 14:04:03', '1');
INSERT INTO `productorder` VALUES ('299', '2', '258', 'LC', '充值卡', null, '0', '123456', '2011-11-15 14:04:19', '1');
INSERT INTO `productorder` VALUES ('300', '2', '258', 'LC', '充值卡', null, '0', '123456', '2011-11-15 14:04:35', '1');
INSERT INTO `productorder` VALUES ('301', '2', '258', 'LC', '充值卡', null, '0', '123456', '2011-11-15 14:04:52', '1');
INSERT INTO `productorder` VALUES ('302', '1', '323', 'lc5', 'B套餐', null, '50', '123456', '2011-11-15 17:05:01', '1');
INSERT INTO `productorder` VALUES ('303', '1', '324', 'lc3', 'B套餐', null, '50', '123456', '2011-11-15 17:37:28', '1');
INSERT INTO `productorder` VALUES ('304', '1', '325', 'ZYM', 'C套餐', null, '125', '123456', '2011-11-15 18:45:06', '1');
INSERT INTO `productorder` VALUES ('305', '1', '326', '13', 'B套餐', null, '50', '123456', '2011-11-16 16:03:21', '1');
INSERT INTO `productorder` VALUES ('306', '1', '327', '14', 'B套餐', null, '50', '123456', '2011-11-16 16:03:28', '1');
INSERT INTO `productorder` VALUES ('307', '2', '143', '张志明', '充值卡', null, '25', '123456', '2011-11-16 17:19:18', '1');
INSERT INTO `productorder` VALUES ('308', '2', '143', '张志明', '充值卡', null, '0', '123456', '2011-11-16 17:22:35', '1');
INSERT INTO `productorder` VALUES ('309', '2', '143', '张志明', '充值卡', null, '0', '123456', '2011-11-16 17:22:55', '1');
INSERT INTO `productorder` VALUES ('310', '2', '143', '张志明', '充值卡', null, '0', '123456', '2011-11-16 17:23:20', '1');
INSERT INTO `productorder` VALUES ('311', '2', '143', '张志明', '充值卡', null, '0', '123456', '2011-11-16 17:23:40', '1');
INSERT INTO `productorder` VALUES ('312', '1', '328', 'TXD', 'C套餐', null, '125', '123456', '2011-11-16 17:44:11', '1');
INSERT INTO `productorder` VALUES ('313', '1', '330', '娟', 'C套餐', null, '125', '123456', '2011-11-16 20:37:00', '1');
INSERT INTO `productorder` VALUES ('314', '1', '331', '诺诺', 'C套餐', null, '125', '123456', '2011-11-17 09:52:29', '1');
INSERT INTO `productorder` VALUES ('315', '1', '333', '雷', 'C套餐', null, '125', '123456', '2011-11-17 09:56:27', '1');
INSERT INTO `productorder` VALUES ('316', '1', '334', '15', 'B套餐', null, '50', '123456', '2011-11-17 10:02:36', '1');
INSERT INTO `productorder` VALUES ('317', '1', '335', '16', 'B套餐', null, '50', '123456', '2011-11-17 10:02:45', '1');
INSERT INTO `productorder` VALUES ('318', '1', '337', 'YW', 'C套餐', null, '125', '123456', '2011-11-17 12:45:29', '1');
INSERT INTO `productorder` VALUES ('319', '1', '338', 'CL', 'C套餐', null, '125', '123456', '2011-11-17 16:15:18', '1');
INSERT INTO `productorder` VALUES ('320', '2', '140', '马薪', '充值卡', null, '25', '123456', '2011-11-17 17:05:18', '1');
INSERT INTO `productorder` VALUES ('321', '2', '140', '马薪', '充值卡', null, '0', '123456', '2011-11-17 17:34:52', '1');
INSERT INTO `productorder` VALUES ('322', '2', '140', '马薪', '充值卡', null, '0', '123456', '2011-11-17 17:35:14', '1');
INSERT INTO `productorder` VALUES ('323', '2', '140', '马薪', '充值卡', null, '0', '123456', '2011-11-17 17:35:33', '0');
INSERT INTO `productorder` VALUES ('324', '2', '140', '马薪', '充值卡', null, '0', '123456', '2011-11-17 17:35:38', '1');
INSERT INTO `productorder` VALUES ('325', '2', '140', '马薪', '充值卡', null, '0', '123456', '2011-11-17 17:35:56', '1');
INSERT INTO `productorder` VALUES ('326', '1', '339', '挑战者1', 'B套餐', null, '50', '123456', '2011-11-17 18:15:34', '1');
INSERT INTO `productorder` VALUES ('327', '1', '340', 'zxd', 'D套餐', null, '250', '123456', '2011-11-17 18:24:45', '1');
INSERT INTO `productorder` VALUES ('328', '1', '341', 'zxd1', 'B套餐', null, '50', '123456', '2011-11-17 18:24:49', '1');
INSERT INTO `productorder` VALUES ('329', '1', '342', 'zxd2', 'B套餐', null, '50', '123456', '2011-11-17 18:28:59', '1');
INSERT INTO `productorder` VALUES ('330', '1', '336', '王盼', 'C套餐', null, '125', '123456', '2011-11-17 19:39:08', '1');
INSERT INTO `productorder` VALUES ('331', '1', '343', '尹珍', 'B套餐', null, '50', '123456', '2011-11-17 22:16:31', '1');
INSERT INTO `productorder` VALUES ('332', '2', '210', 'LX', '充值卡', null, '50', '123456', '2011-11-20 22:17:43', '1');
INSERT INTO `productorder` VALUES ('333', '2', '210', 'LX', '充值卡', null, '0', '123456', '2011-11-20 22:31:52', '1');
INSERT INTO `productorder` VALUES ('334', '2', '210', 'LX', '充值卡', null, '0', '123456', '2011-11-20 22:32:25', '1');
INSERT INTO `productorder` VALUES ('335', '2', '210', 'LX', '充值卡', null, '0', '123456', '2011-11-20 22:32:43', '1');
INSERT INTO `productorder` VALUES ('336', '2', '210', 'LX', '充值卡', '', '0', '', '2011-11-20 22:32:59', '0');
INSERT INTO `productorder` VALUES ('337', '1', '353', 'bb1', 'B套餐', null, '100', '123456', '2011-11-22 13:06:43', '1');
INSERT INTO `productorder` VALUES ('338', '1', '354', 'bb2', 'B套餐', null, '100', '123456', '2011-11-22 13:06:58', '1');
INSERT INTO `productorder` VALUES ('339', '2', '118', '盛夏光年', '充值卡', null, '50', '123456', '2011-11-22 13:12:36', '1');
INSERT INTO `productorder` VALUES ('340', '2', '118', '盛夏光年', '充值卡', '', '0', '', '2011-11-22 13:14:38', '0');
INSERT INTO `productorder` VALUES ('341', '2', '118', '盛夏光年', '充值卡', '', '0', '', '2011-11-22 13:14:56', '0');
INSERT INTO `productorder` VALUES ('342', '2', '118', '盛夏光年', '充值卡', '', '0', '', '2011-11-22 13:15:15', '0');
INSERT INTO `productorder` VALUES ('343', '2', '118', '盛夏光年', '充值卡', '', '0', '', '2011-11-22 13:15:30', '0');
INSERT INTO `productorder` VALUES ('344', '2', '189', '胡世明', '充值卡', '', '50', '', '2011-11-22 13:35:27', '0');
INSERT INTO `productorder` VALUES ('345', '2', '189', '胡世明', '充值卡', '', '0', '', '2011-11-22 13:38:52', '0');
INSERT INTO `productorder` VALUES ('346', '2', '189', '胡世明', '充值卡', '', '0', '', '2011-11-22 13:39:09', '0');
INSERT INTO `productorder` VALUES ('347', '2', '189', '胡世明', '充值卡', '', '0', '', '2011-11-22 13:39:31', '0');
INSERT INTO `productorder` VALUES ('348', '2', '189', '胡世明', '充值卡', '', '0', '', '2011-11-22 13:39:47', '0');
INSERT INTO `productorder` VALUES ('349', '1', '6', 'tt2', '普卡', '', '1200', '', '2017-07-08 16:45:31', '0');
INSERT INTO `productorder` VALUES ('350', '1', '8', 'wang1', '普卡', '', '1200', '', '2017-07-13 21:56:45', '0');
INSERT INTO `productorder` VALUES ('351', '1', '12', 'nnn1', '普卡', '', '1200', '', '2017-10-22 19:42:03', '0');
INSERT INTO `productorder` VALUES ('352', '1', '13', 'nnn21', '普卡', '', '1200', '', '2017-10-22 19:44:13', '0');
INSERT INTO `productorder` VALUES ('353', '1', '14', 'nnn112', '普卡', '', '1200', '', '2017-10-22 22:28:57', '0');

-- ----------------------------
-- Table structure for `setmeal`
-- ----------------------------
DROP TABLE IF EXISTS `setmeal`;
CREATE TABLE `setmeal` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Money` double DEFAULT NULL,
  `Point` int(10) DEFAULT NULL,
  `CappingAward` double DEFAULT NULL,
  `TouchAward` double DEFAULT NULL,
  `ServiceAward` double DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  `IsAgency` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setmeal
-- ----------------------------
INSERT INTO `setmeal` VALUES ('1', '普卡', '1200', '1200', '10000', '100', '5', '2011-06-16 00:13:15', '1');
INSERT INTO `setmeal` VALUES ('2', '金卡', '3600', '3600', '10000', '100', '8', '2011-06-16 00:16:19', '1');
INSERT INTO `setmeal` VALUES ('3', '钻石卡', '8400', '8400', '10000', '100', '10', '2011-06-16 00:16:19', '1');
INSERT INTO `setmeal` VALUES ('4', '快速', '10000', '10000', '10000', '100', '10', '2011-06-16 00:16:19', '0');
INSERT INTO `setmeal` VALUES ('5', '直推', '10000', '10000', '10000', '100', '10', '2011-06-16 00:16:19', '0');

-- ----------------------------
-- Table structure for `singlepage`
-- ----------------------------
DROP TABLE IF EXISTS `singlepage`;
CREATE TABLE `singlepage` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `SortId` int(10) DEFAULT NULL,
  `content` text,
  UNIQUE KEY `Index_7CADE8B1_9221_4847` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of singlepage
-- ----------------------------
INSERT INTO `singlepage` VALUES ('1', '18', '<P>企业简介：</P><P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 于2007年12月，互联中国科技集团有限公司正式挂牌成立，本集团具有多年的通讯信息研发和雄厚的自主研发力量。</P><P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 早在上海、北京开始了网络通讯与局域通讯技术测试与试点，并与德国和香港多家网络通讯运营商建立了长期的战略合作伙伴关系。</P><P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 互联中国是一家拥有丰富互联网经验的增值服务商，同时也是一家高新科技产业的技术型企业，它致力于互联网与局域网上语音传输的发展和推广，把互联网及局域网在语音上的应用普及到公司、家庭及个人，实现真正意义的沟通和无极限。 </P><P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 2009年，互联中国不惜巨资致力于语音网络话务的投资，经过多年的精心准备，各方面的成就已经初见成效！如今互联中国正式宣布对外进行网络运营，大力进军全国各个市场。</P><P>&nbsp;</P><P>&nbsp;&nbsp;&nbsp; 从事3G增值服务，网络购物业务。互联中国靠其专业的技术、开发团队和销售体系、先进的文化理念、高效的团队运作模式、一流的研发技术必将成为未来互联网通讯及局域网通讯领域的佼佼领航者！</P>');
INSERT INTO `singlepage` VALUES ('2', '17', '<DIV class=Section0 style=\"LAYOUT-GRID:  15.6pt none\"><FONT style=\"FONT-SIZE: 15px\"><SPAN style=\"BACKGROUND: rgb(255,255,255); COLOR: rgb(76,76,76); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(76,76,76); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; BACKGROUND: rgb(255,255,255); COLOR: rgb(76,76,76); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">股份有限公司是一家国</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">内电信行业巨头</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">合资的联营公司</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">公司自主开发和运营数字化服务网络平台</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">将集合各行业内的专业人士，共同合作、共同发展，做大做强</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">细分行业网</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">络</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">。该计划旨在帮助众多创业者发展壮大其行业网站，并不是简单的复制中国网上商城的模式。</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">拟对达成协议的合作伙伴提供三方面的支持，即完整的技术平台、宣传和品牌</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">、</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">推广和提供运营经验。利用中国银联成熟的电子结算支付网络，采用数字化销售和服务模式，开拓金融、电信等行业增值业务，提供一个电子配送和流动金融的网上商城</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">未来三年</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">我们将只专注着做一件事</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">我们将用三年的专注来打造人们的生活娱乐消费新模式</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">；</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">未来三年</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">，</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\">我们会努力打造中国最大的网上商城。</SPAN><SPAN style=\"FONT-SIZE: 9pt; FONT-FAMILY: \'Times New Roman\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment--></SPAN></FONT></DIV>');
INSERT INTO `singlepage` VALUES ('3', '24', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">企业宗旨</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; LINE-HEIGHT: 150%\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">网销创业动力营，一步先，步步先！本次网络销售培训在每</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">周五</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">的晚上</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">9</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">点在网上</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">.</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">主讲老师来自</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">全国各地</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">网络销售第一线</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">,</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">据有多年网销和管理经验</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">.</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">主讲内容包括：网络营销入门、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">发展及规划、网络营销实战、</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">营销</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">创意评选、专家指导、职业生涯规划等。本次实战培训，旨在培养各界人事的实战经验和综合素质。</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">我们活动的宗旨是为提高所有社会感兴趣人士对电子商务的认识和体验网络营销的魅力，学习和利用网络电子商务平台进行创业实践，突出实战技能的培训，体验创业过程的激情，展示网络创业者的风采，提升地区商务策划、网络营销等电子商务综合运用能力和整体运营环境。</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">&nbsp;</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; TEXT-INDENT: 18pt; LINE-HEIGHT: 150%\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">互联中国，让沟通变得更畅快！</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(51,51,51); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><o:p></o:p></SPAN></P><!--EndFragment-->');
INSERT INTO `singlepage` VALUES ('4', '25', '<P><STRONG><FONT color=#ff0000>公司愿景：<BR><BR></FONT></STRONG>经营理念：诚信、质量、服务<BR>诚信——诚实做人，踏实做事 <BR>质量——不断追求产品的更高品质<BR>服务——超越传统服务范畴，为客户提供更多增值服务<BR><BR><B><FONT color=#ff0000>核心价值：</FONT></B></P><P>客户是永久的伙伴 <BR>员工是企业的根本 <BR>不断研发环保型表面处理产品是我们回馈社会的责任 <BR><BR><FONT color=#ff0000><B>企业责任：</B><BR></FONT>对客户——合作双赢&nbsp; 共同成长 <BR>对股东——高度负责&nbsp; 长效回报 <BR>对员工——持续学习&nbsp; 成就自我 <BR>对社会——共建和谐&nbsp; 回馈大众 <BR></P>');
INSERT INTO `singlepage` VALUES ('5', '22', '<P><FONT color=#ff00ff><!--EndFragment--></FONT></P><P><TABLE style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; PADDING-RIGHT: 5.4pt; BORDER-COLLAPSE: collapse; PADDING-TOP: 0pt; mso-table-layout-alt: fixed\" border=1 cellSpacing=0 borderColor=#999999 cellPadding=0 align=center><TBODY><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">职位名称：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 301.9pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=402 colSpan=3><P style=\"LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;网络各地总监</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">工作地点：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 301.9pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=top width=402 colSpan=3><P style=\"LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;当地</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">工资待遇：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 148.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=198><P style=\"LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;面议</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 75.75pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=101><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">发布日期：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 77.65pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=103><P style=\"LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;201</SPAN><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\">1</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">-6-</SPAN><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">30</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">需求人数：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 148.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=198><P style=\"TEXT-ALIGN: left; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;100&nbsp;<FONT face=宋体>人</FONT></SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 75.75pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=101><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">有效期限：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 77.65pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=103><P style=\"TEXT-ALIGN: left; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;30</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">具体要求：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 301.9pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=402 colSpan=3><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">1.</SPAN><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">制定全面的网络推广发展策略，对论坛营销等各类推广有掌握，并对营销活动效果进行监督；&nbsp;</SPAN><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt\"><o:p></o:p></SPAN></P><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">2.</SPAN><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">独立为客户完成具有高价值的网络公关、网络推广、网络事件的互动营销整体策略方案；&nbsp;</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">3.</SPAN><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">整体负责营销计划的执行管理工作，有效结合外部需求与内部资源，协调沟通内部关系，掌控营销计划的实施，把控关键环节、管理项目费用等；&nbsp;</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">4.</SPAN><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">对团队人员进行管理，保证工作按计划执行；&nbsp;</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">5.</SPAN><SPAN style=\"FONT-FAMILY: \'Times New Roman\'; COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'\">有良好的沟通能力。</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR></TBODY></TABLE></P><P>&nbsp;</P><TABLE style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; PADDING-RIGHT: 5.4pt; BORDER-COLLAPSE: collapse; PADDING-TOP: 0pt; mso-table-layout-alt: fixed\" border=1 cellSpacing=0 borderColor=#999999 cellPadding=0 align=center><TBODY><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">职位名称：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 301.9pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=402 colSpan=3><P style=\"LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">销售经理</SPAN><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">工作地点：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 301.9pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=top width=402 colSpan=3><P style=\"LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;当地</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">工资待遇：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 148.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=198><P style=\"LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;面议</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 75.75pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=101><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">发布日期：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 77.65pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=103><P style=\"LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;2010-6-9</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">需求人数：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 148.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=198><P style=\"TEXT-ALIGN: left; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;若</SPAN><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\">干</SPAN><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 75.75pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=101><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">有效期限：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 77.65pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=103><P style=\"TEXT-ALIGN: left; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\">&nbsp;</SPAN><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">长期有效</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR><TR><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 130.5pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=174><P style=\"TEXT-ALIGN: center; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">具体要求：</SPAN><SPAN style=\"FONT-FAMILY: \'Arial\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD><TD style=\"PADDING-BOTTOM: 0pt; PADDING-LEFT: 5.4pt; WIDTH: 301.9pt; PADDING-RIGHT: 5.4pt; BACKGROUND: rgb(255,255,255); PADDING-TOP: 0pt\" vAlign=center width=402 colSpan=3><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 190%; MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; BACKGROUND: rgb(255,255,255); WORD-BREAK: break-all\" class=p0><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-spacerun: \'yes\'; mso-shading: rgb(255,255,255)\">&nbsp;请咨询当地代理商</SPAN><SPAN style=\"FONT-FAMILY: \'宋体\'; BACKGROUND: rgb(255,255,255); COLOR: rgb(0,0,255); FONT-SIZE: 9pt; mso-shading: rgb(255,255,255)\"><o:p></o:p></SPAN></P></TD></TR></TBODY></TABLE><!--EndFragment-->');
INSERT INTO `singlepage` VALUES ('6', '19', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"></SPAN>&nbsp;</P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">公司地址</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">1</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">上海浦东新区新金桥大厦商业中心</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">公司</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">地址</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">2</SPAN><SPAN style=\"FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">：</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">深圳市宝安区西乡客运站对面永怛商业中心<IMG style=\"FILTER: ; WIDTH: 188px; HEIGHT: 202px\" height=202 alt=\"\" hspace=0 src=\"/uploadfile/20110701201145678.jpg\" width=188 align=textTop border=0></SPAN><SPAN></SPAN></P><!--EndFragment-->');
INSERT INTO `singlepage` VALUES ('7', '29', '<P><IMG style=\"WIDTH: 654px; HEIGHT: 320px\" height=420 src=\"/uploadfile/20110701205054155.jpg\" width=813 border=0></P>');

-- ----------------------------
-- Table structure for `tixian`
-- ----------------------------
DROP TABLE IF EXISTS `tixian`;
CREATE TABLE `tixian` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `TrueName` varchar(50) DEFAULT NULL,
  `BankType` varchar(50) DEFAULT NULL,
  `BankAccount` varchar(50) DEFAULT NULL,
  `ZhiFuBaoName` varchar(50) DEFAULT NULL,
  `ZhiFuBao` varchar(250) DEFAULT NULL,
  `Money` int(10) DEFAULT NULL,
  `AddDate` timestamp NULL DEFAULT NULL,
  `Status` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tixian
-- ----------------------------
INSERT INTO `tixian` VALUES ('1', '31', 'qq1', '海外银河', '工商银行', '123456', null, null, '100', '2011-07-02 00:07:36', '1');
INSERT INTO `tixian` VALUES ('2', '38', 'xin2', '海外银河', '工商银行', '123456', null, null, '300', '2011-07-07 08:28:31', '1');
INSERT INTO `tixian` VALUES ('3', '37', 'xin1', '海外银河', '工商银行', '123456', null, null, '100', '2011-07-09 10:37:42', '1');
INSERT INTO `tixian` VALUES ('4', '38', 'xin2', '海外银河', '工商银行', '123456', null, null, '100', '2011-07-17 18:47:53', '1');
INSERT INTO `tixian` VALUES ('5', '87', '抉择', '海外银河', '工商银行', '123456', null, null, '100', '2011-08-13 10:57:31', '1');
INSERT INTO `tixian` VALUES ('6', '30', 'tt1', '海外银河', '工商银行', '123456', null, null, '1100', '2011-09-02 00:22:37', '1');
INSERT INTO `tixian` VALUES ('7', '87', '抉择', '海外银河', '工商银行', '123456', null, null, '100', '2011-09-06 12:43:12', '1');
INSERT INTO `tixian` VALUES ('8', '37', 'xin1', '海外银河', '建设银行', '123456', null, null, '300', '2011-09-14 19:07:13', '1');
INSERT INTO `tixian` VALUES ('9', '87', '抉择', '海外银河', '工商银行', '123456', null, null, '100', '2011-09-15 09:43:36', '1');
INSERT INTO `tixian` VALUES ('10', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '200', '2011-09-18 09:28:20', '1');
INSERT INTO `tixian` VALUES ('11', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '100', '2011-09-19 11:29:58', '1');
INSERT INTO `tixian` VALUES ('12', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '100', '2011-09-20 12:15:08', '1');
INSERT INTO `tixian` VALUES ('13', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '100', '2011-09-22 10:10:31', '1');
INSERT INTO `tixian` VALUES ('14', '37', 'xin1', '海外银河', '建设银行', '123456', null, null, '300', '2011-09-26 14:26:15', '1');
INSERT INTO `tixian` VALUES ('15', '140', '马薪', '海外银河', '建设银行', '123456', null, null, '100', '2011-09-27 09:39:28', '1');
INSERT INTO `tixian` VALUES ('16', '37', 'xin1', '海外银河', '建设银行', '123456', null, null, '100', '2011-09-30 09:37:34', '1');
INSERT INTO `tixian` VALUES ('17', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '100', '2011-10-01 12:37:10', '1');
INSERT INTO `tixian` VALUES ('18', '118', '盛夏光年', '海外银河', '建设银行', '123456', null, null, '200', '2011-10-08 17:00:25', '1');
INSERT INTO `tixian` VALUES ('19', '37', 'xin1', '海外银河', '建设银行', '123456', null, null, '100', '2011-10-09 16:45:20', '1');
INSERT INTO `tixian` VALUES ('20', '118', '盛夏光年', '海外银河', '建设银行', '123456', null, null, '200', '2011-10-11 06:39:29', '1');
INSERT INTO `tixian` VALUES ('21', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '100', '2011-10-11 11:53:54', '1');
INSERT INTO `tixian` VALUES ('22', '37', 'xin1', '海外银河', '建设银行', '123456', null, null, '200', '2011-10-11 16:23:50', '1');
INSERT INTO `tixian` VALUES ('23', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '200', '2011-10-18 12:05:52', '1');
INSERT INTO `tixian` VALUES ('24', '118', '盛夏光年', '海外银河', '建设银行', '123456', null, null, '100', '2011-10-28 12:13:34', '1');
INSERT INTO `tixian` VALUES ('25', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '100', '2011-11-11 12:00:59', '1');
INSERT INTO `tixian` VALUES ('26', '30', 'tt1', '海外银河', '建设银行', '123456', null, null, '100', '2011-11-11 12:08:11', '1');
INSERT INTO `tixian` VALUES ('27', '33', 'tt3', '海外银河', '建设银行', '123456', null, null, '100', '2011-11-11 12:08:36', '1');
INSERT INTO `tixian` VALUES ('28', '193', 'ZGH', '海外银河', '工商银行', '123456', null, null, '100', '2011-11-12 17:09:10', '1');
INSERT INTO `tixian` VALUES ('29', '30', 'tt1', '海外银河', '建设银行', '123456', null, null, '100', '2011-11-14 20:33:19', '1');
INSERT INTO `tixian` VALUES ('30', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '300', '2011-11-15 11:58:47', '1');
INSERT INTO `tixian` VALUES ('31', '129', 'qq4', '海外银河', '工商银行', '123456', null, null, '200', '2011-11-15 12:01:00', '1');
INSERT INTO `tixian` VALUES ('32', '210', 'LX', '海外银河', '工商银行', '123456', null, null, '100', '2011-11-15 12:26:13', '1');
INSERT INTO `tixian` VALUES ('33', '118', '盛夏光年', '海外银河', '建设银行', '123456', null, null, '100', '2011-11-17 09:33:49', '1');
INSERT INTO `tixian` VALUES ('34', '33', 'tt3', '海外银河', '建设银行', '123456', null, null, '100', '2011-11-17 09:35:00', '1');
INSERT INTO `tixian` VALUES ('35', '210', 'LX', '海外银河', '工商银行', '123456', null, null, '100', '2011-11-17 13:05:31', '1');
INSERT INTO `tixian` VALUES ('36', '30', 'tt1', '海外银河', '建设银行', '123456', null, null, '100', '2011-11-18 11:54:39', '1');
INSERT INTO `tixian` VALUES ('37', '35', 'qq3', '海外银河', '工商银行', '123456', null, null, '100', '2011-11-18 11:58:15', '1');
INSERT INTO `tixian` VALUES ('38', '118', '盛夏光年', '海外银河', '建设银行', '123456', null, null, '100', '2011-11-23 16:04:40', '1');
INSERT INTO `tixian` VALUES ('39', '1', 'admin', 'admin', '海外银河', '桂林工行', '', '', '100', '2017-10-22 20:34:57', '0');
INSERT INTO `tixian` VALUES ('40', '1', 'admin', 'admin', '海外银河', '桂林工行', '', '', '200', '2017-10-22 21:00:26', '0');
INSERT INTO `tixian` VALUES ('41', '1', 'admin', 'admin', '海外银河', '桂林工行', '', '', '200', '2017-10-22 21:00:31', '0');
INSERT INTO `tixian` VALUES ('42', '1', 'admin', 'admin', '海外银河', '桂林工行', '', '', '100', '2017-10-22 22:01:56', '0');
INSERT INTO `tixian` VALUES ('43', '1', 'admin', 'admin', '海外银河', '桂林工行', '', '', '100', '2017-10-24 21:44:26', '0');

-- ----------------------------
-- Table structure for `webconfig`
-- ----------------------------
DROP TABLE IF EXISTS `webconfig`;
CREATE TABLE `webconfig` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `Gonggao` text,
  `Chengnuo` text,
  `Contact` text,
  `Foot` text,
  `Jianjie` text,
  `Link` text,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webconfig
-- ----------------------------
INSERT INTO `webconfig` VALUES ('1', '旅游积分计划管理系统', null, '<FONT color=#0000ff><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">本周新增会员数：7005</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">本周最佳会员：马会明</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">本周日薪第一名：李振军（3550</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\"><FONT face=宋体>元</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(255,0,0); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">）</SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><BR></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\">本周总业绩：34628<FONT face=宋体>积分</FONT></SPAN><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'瀹嬩綋\'; mso-spacerun: \'yes\'\"><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P><!--EndFragment--></SPAN></FONT>', '<P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">福建省厦门翔安区翔安东路9888号商业广场</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'宋体\'; mso-spacerun: \'yes\'\">上海浦东新区新金桥大厦商业中心</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">深圳市宝安区西乡客运站对面永怛商业中心</SPAN></P><P class=p0 style=\"MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt\"><SPAN style=\"FONT-SIZE: 9pt; COLOR: rgb(0,0,255); FONT-FAMILY: \'Arial\'; mso-spacerun: \'yes\'\">郑州市金水区大石桥清华园soho广场</SPAN></P>', '旅游积分计划 2017 版权所有 Copyright 2017 Auto Parts All Right Reserved ', '<P>&nbsp;&nbsp;&nbsp; 互联中国是一家拥有丰富互联网经验的增值服务商，同时也是一家高新科技产业的技术型企业，它致力于互联网与局域网上语音传输的发展和推广，把互联网及局域网在语音上的应用普及到公司、家庭及个人，实现真正意义的沟通和无极限。&nbsp;<BR>&nbsp;&nbsp;&nbsp; 2009年，互联中国不惜巨资致力于语音网络话务的投资，经过多年的精心准备，各方面的成就已经初见成效！如今互联中国正式宣布对外进行网络运营，大力进军全国各个市场；并在福建、上海、深圳、郑州等大城市设立办事处，拓展公司业务！</P>', null);
