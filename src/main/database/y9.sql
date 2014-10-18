/*
Navicat MySQL Data Transfer

Source Server         : y91
Source Server Version : 50160
Source Host           : localhost:3306
Source Database       : y9

Target Server Type    : MYSQL
Target Server Version : 50160
File Encoding         : 65001

Date: 2014-10-18 15:03:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `y9_acategory`
-- ----------------------------
DROP TABLE IF EXISTS `y9_acategory`;
CREATE TABLE `y9_acategory` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_acategory
-- ----------------------------
INSERT INTO `y9_acategory` VALUES ('1', '商城帮助', '0', '0', 'help');
INSERT INTO `y9_acategory` VALUES ('2', '商城公告', '0', '0', 'notice');
INSERT INTO `y9_acategory` VALUES ('3', '内置文章', '0', '0', 'system');
INSERT INTO `y9_acategory` VALUES ('4', '最新活动', '0', '255', null);
INSERT INTO `y9_acategory` VALUES ('5', 'ss', '1', '255', null);
INSERT INTO `y9_acategory` VALUES ('6', '活动管理', '0', '1', null);
INSERT INTO `y9_acategory` VALUES ('7', 'wap展示活动', '6', '255', null);
INSERT INTO `y9_acategory` VALUES ('8', '单页展示', '0', '255', null);
INSERT INTO `y9_acategory` VALUES ('9', 'wap', '8', '255', null);

-- ----------------------------
-- Table structure for `y9_address`
-- ----------------------------
DROP TABLE IF EXISTS `y9_address`;
CREATE TABLE `y9_address` (
  `addr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `region_id` int(10) unsigned DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `phone_tel` varchar(60) DEFAULT NULL,
  `phone_mob` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`addr_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_address
-- ----------------------------
INSERT INTO `y9_address` VALUES ('1', '2', '张三', '1', '中国', '福建省', '361000', '', '15252525252');
INSERT INTO `y9_address` VALUES ('10', '3', '周建群', '3', '中国', '厦门湖里区', '', '', '15880765056');
INSERT INTO `y9_address` VALUES ('11', '3', 'ghbb', '3', '中国', '咯巨魔', '', '', '5688866');
INSERT INTO `y9_address` VALUES ('8', '3', 'zhoujiaqnun', '3', '中国', '测测', '', '1111111', '2121212121');
INSERT INTO `y9_address` VALUES ('9', '3', '测测', '3', '中国', '长安商场', '1111', '333333', '11111111');
INSERT INTO `y9_address` VALUES ('12', '11', '杨成', '3', '中国', '厦门湖里区象屿大厦一层', '', '', '13860121919');
INSERT INTO `y9_address` VALUES ('13', '14', '戚玮玮', '3', '中国', '福建省厦门市象屿保税区象屿大厦一层', '', '', '15605922222');

-- ----------------------------
-- Table structure for `y9_article`
-- ----------------------------
DROP TABLE IF EXISTS `y9_article`;
CREATE TABLE `y9_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `cate_id` int(10) NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  `content` text,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `if_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `code` (`code`),
  KEY `cate_id` (`cate_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_article
-- ----------------------------
INSERT INTO `y9_article` VALUES ('1', 'eula', '用户服务协议', '3', '0', '', '<p>特别提醒用户认真阅读本《用户服务协议》(下称《协议》) 中各条款。除非您接受本《协议》条款，否则您无权使用本网站提供的相关服务。您的使用行为将视为对本《协议》的接受，并同意接受本《协议》各项条款的约束。 <br /> <br /> <strong>一、定义</strong><br /></p>\r\n<ol>\r\n<li>\"用户\"指符合本协议所规定的条件，同意遵守本网站各种规则、条款（包括但不限于本协议），并使用本网站的个人或机构。</li>\r\n<li>\"卖家\"是指在本网站上出售物品的用户。\"买家\"是指在本网站购买物品的用户。</li>\r\n<li>\"成交\"指买家根据卖家所刊登的交易要求，在特定时间内提出最优的交易条件，因而取得依其提出的条件购买该交易物品的权利。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>二、用户资格</strong><br /> <br /> 只有符合下列条件之一的人员或实体才能申请成为本网站用户，可以使用本网站的服务。</p>\r\n<ol>\r\n<li>年满十八岁，并具有民事权利能力和民事行为能力的自然人；</li>\r\n<li>未满十八岁，但监护人（包括但不仅限于父母）予以书面同意的自然人；</li>\r\n<li>根据中国法律或设立地法律、法规和/或规章成立并合法存在的公司、企事业单位、社团组织和其他组织。</li>\r\n</ol>\r\n<p><br /> 无民事行为能力人、限制民事行为能力人以及无经营或特定经营资格的组织不当注册为本网站用户或超过其民事权利或行为能力范围从事交易的，其与本网站之间的协议自始无效，本网站一经发现，有权立即注销该用户，并追究其使用本网站\"服务\"的一切法律责任。<br /> <br /> <strong>三.用户的权利和义务</strong><br /></p>\r\n<ol>\r\n<li>用户有权根据本协议的规定及本网站发布的相关规则，利用本网站网上交易平台登录物品、发布交易信息、查询物品信息、购买物品、与其他用户订立物品买卖合同、在本网站社区发帖、参加本网站的有关活动及有权享受本网站提供的其他的有关资讯及信息服务。</li>\r\n<li>用户有权根据需要更改密码和交易密码。用户应对以该用户名进行的所有活动和事件负全部责任。</li>\r\n<li>用户有义务确保向本网站提供的任何资料、注册信息真实准确，包括但不限于真实姓名、身份证号、联系电话、地址、邮政编码等。保证本网站及其他用户可以通过上述联系方式与自己进行联系。同时，用户也有义务在相关资料实际变更时及时更新有关注册资料。</li>\r\n<li>用户不得以任何形式擅自转让或授权他人使用自己在本网站的用户帐号。</li>\r\n<li>用户有义务确保在本网站网上交易平台上登录物品、发布的交易信息真实、准确，无误导性。</li>\r\n<li>用户不得在本网站网上交易平台买卖国家禁止销售的或限制销售的物品、不得买卖侵犯他人知识产权或其他合法权益的物品，也不得买卖违背社会公共利益或公共道德的物品。</li>\r\n<li>用户不得在本网站发布各类违法或违规信息。包括但不限于物品信息、交易信息、社区帖子、物品留言，店铺留言，评价内容等。</li>\r\n<li>用户在本网站交易中应当遵守诚实信用原则，不得以干预或操纵物品价格等不正当竞争方式扰乱网上交易秩序，不得从事与网上交易无关的不当行为，不得在交易平台上发布任何违法信息。</li>\r\n<li>用户不应采取不正当手段（包括但不限于虚假交易、互换好评等方式）提高自身或他人信用度，或采用不正当手段恶意评价其他用户，降低其他用户信用度。</li>\r\n<li>用户承诺自己在使用本网站网上交易平台实施的所有行为遵守国家法律、法规和本网站的相关规定以及各种社会公共利益或公共道德。对于任何法律后果的发生，用户将以自己的名义独立承担所有相应的法律责任。</li>\r\n<li>用户在本网站网上交易过程中如与其他用户因交易产生纠纷，可以请求本网站从中予以协调。用户如发现其他用户有违法或违反本协议的行为，可以向本网站举报。如用户因网上交易与其他用户产生诉讼的，用户有权通过司法部门要求本网站提供相关资料。</li>\r\n<li>用户应自行承担因交易产生的相关费用，并依法纳税。</li>\r\n<li>未经本网站书面允许，用户不得将本网站资料以及在交易平台上所展示的任何信息以复制、修改、翻译等形式制作衍生作品、分发或公开展示。</li>\r\n<li>用户同意接收来自本网站的信息，包括但不限于活动信息、交易信息、促销信息等。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>四、 本网站的权利和义务</strong><br /></p>\r\n<ol>\r\n<li>本网站不是传统意义上的\"拍卖商\"，仅为用户提供一个信息交流、进行物品买卖的平台，充当买卖双方之间的交流媒介，而非买主或卖主的代理商、合伙  人、雇员或雇主等经营关系人。公布在本网站上的交易物品是用户自行上传进行交易的物品，并非本网站所有。对于用户刊登物品、提供的信息或参与竞标的过程，  本网站均不加以监视或控制，亦不介入物品的交易过程，包括运送、付款、退款、瑕疵担保及其它交易事项，且不承担因交易物品存在品质、权利上的瑕疵以及交易  方履行交易协议的能力而产生的任何责任，对于出现在拍卖上的物品品质、安全性或合法性，本网站均不予保证。</li>\r\n<li>本网站有义务在现有技术水平的基础上努力确保整个网上交易平台的正常运行，尽力避免服务中断或将中断时间限制在最短时间内，保证用户网上交易活动的顺利进行。</li>\r\n<li>本网站有义务对用户在注册使用本网站网上交易平台中所遇到的问题及反映的情况及时作出回复。 </li>\r\n<li>本网站有权对用户的注册资料进行查阅，对存在任何问题或怀疑的注册资料，本网站有权发出通知询问用户并要求用户做出解释、改正，或直接做出处罚、删除等处理。</li>\r\n<li>用  户因在本网站网上交易与其他用户产生纠纷的，用户通过司法部门或行政部门依照法定程序要求本网站提供相关资料，本网站将积极配合并提供有关资料；用户将纠  纷告知本网站，或本网站知悉纠纷情况的，经审核后，本网站有权通过电子邮件及电话联系向纠纷双方了解纠纷情况，并将所了解的情况通过电子邮件互相通知对  方。 </li>\r\n<li>因网上交易平台的特殊性，本网站没有义务对所有用户的注册资料、所有的交易行为以及与交易有关的其他事项进行事先审查，但如发生以下情形，本网站有权限制用户的活动、向用户核实有关资料、发出警告通知、暂时中止、无限期地中止及拒绝向该用户提供服务：         \r\n<ul>\r\n<li>用户违反本协议或因被提及而纳入本协议的文件；</li>\r\n<li>存在用户或其他第三方通知本网站，认为某个用户或具体交易事项存在违法或不当行为，并提供相关证据，而本网站无法联系到该用户核证或验证该用户向本网站提供的任何资料；</li>\r\n<li>存在用户或其他第三方通知本网站，认为某个用户或具体交易事项存在违法或不当行为，并提供相关证据。本网站以普通非专业交易者的知识水平标准对相关内容进行判别，可以明显认为这些内容或行为可能对本网站用户或本网站造成财务损失或法律责任。 </li>\r\n</ul>\r\n</li>\r\n<li>在反网络欺诈行动中，本着保护广大用户利益的原则，当用户举报自己交易可能存在欺诈而产生交易争议时，本网站有权通过表面判断暂时冻结相关用户账号，并有权核对当事人身份资料及要求提供交易相关证明材料。</li>\r\n<li>根据国家法律法规、本协议的内容和本网站所掌握的事实依据，可以认定用户存在违法或违反本协议行为以及在本网站交易平台上的其他不当行为，本网站有权在本网站交易平台及所在网站上以网络发布形式公布用户的违法行为，并有权随时作出删除相关信息，而无须征得用户的同意。</li>\r\n<li>本  网站有权在不通知用户的前提下删除或采取其他限制性措施处理下列信息：包括但不限于以规避费用为目的；以炒作信用为目的；存在欺诈等恶意或虚假内容；与网  上交易无关或不是以交易为目的；存在恶意竞价或其他试图扰乱正常交易秩序因素；该信息违反公共利益或可能严重损害本网站和其他用户合法利益的。</li>\r\n<li>用  户授予本网站独家的、全球通用的、永久的、免费的信息许可使用权利，本网站有权对该权利进行再授权，依此授权本网站有权(全部或部份地)  使用、复制、修订、改写、发布、翻译、分发、执行和展示用户公示于网站的各类信息或制作其派生作品，以现在已知或日后开发的任何形式、媒体或技术，将上述  信息纳入其他作品内。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>五、服务的中断和终止</strong><br /></p>\r\n<ol>\r\n<li>在  本网站未向用户收取相关服务费用的情况下，本网站可自行全权决定以任何理由  (包括但不限于本网站认为用户已违反本协议的字面意义和精神，或用户在超过180天内未登录本网站等)  终止对用户的服务，并不再保存用户在本网站的全部资料（包括但不限于用户信息、商品信息、交易信息等）。同时本网站可自行全权决定，在发出通知或不发出通  知的情况下，随时停止提供全部或部分服务。服务终止后，本网站没有义务为用户保留原用户资料或与之相关的任何信息，或转发任何未曾阅读或发送的信息给用户  或第三方。此外，本网站不就终止对用户的服务而对用户或任何第三方承担任何责任。 </li>\r\n<li>如用户向本网站提出注销本网站注册用户身份，需经本网站审核同意，由本网站注销该注册用户，用户即解除与本网站的协议关系，但本网站仍保留下列权利：         \r\n<ul>\r\n<li>用户注销后，本网站有权保留该用户的资料,包括但不限于以前的用户资料、店铺资料、商品资料和交易记录等。 </li>\r\n<li>用户注销后，如用户在注销前在本网站交易平台上存在违法行为或违反本协议的行为，本网站仍可行使本协议所规定的权利。 </li>\r\n</ul>\r\n</li>\r\n<li>如存在下列情况，本网站可以通过注销用户的方式终止服务：         \r\n<ul>\r\n<li>在用户违反本协议相关规定时，本网站有权终止向该用户提供服务。本网站将在中断服务时通知用户。但如该用户在被本网站终止提供服务后，再一次直接或间接或以他人名义注册为本网站用户的，本网站有权再次单方面终止为该用户提供服务；</li>\r\n<li>一旦本网站发现用户注册资料中主要内容是虚假的，本网站有权随时终止为该用户提供服务； </li>\r\n<li>本协议终止或更新时，用户未确认新的协议的。 </li>\r\n<li>其它本网站认为需终止服务的情况。 </li>\r\n</ul>\r\n</li>\r\n<li>因用户违反相关法律法规或者违反本协议规定等原因而致使本网站中断、终止对用户服务的，对于服务中断、终止之前用户交易行为依下列原则处理：         \r\n<ul>\r\n<li>本网站有权决定是否在中断、终止对用户服务前将用户被中断或终止服务的情况和原因通知用户交易关系方，包括但不限于对该交易有意向但尚未达成交易的用户,参与该交易竞价的用户，已达成交易要约用户。</li>\r\n<li>服务中断、终止之前，用户已经上传至本网站的物品尚未交易或交易尚未完成的，本网站有权在中断、终止服务的同时删除此项物品的相关信息。 </li>\r\n<li>服务中断、终止之前，用户已经就其他用户出售的具体物品作出要约，但交易尚未结束，本网站有权在中断或终止服务的同时删除该用户的相关要约和信息。</li>\r\n</ul>\r\n</li>\r\n<li>本网站若因用户的行为（包括但不限于刊登的商品、在本网站社区发帖等）侵害了第三方的权利或违反了相关规定，而受到第三方的追偿或受到主管机关的处分时，用户应赔偿本网站因此所产生的一切损失及费用。</li>\r\n<li>对违反相关法律法规或者违反本协议规定，且情节严重的用户，本网站有权终止该用户的其它服务。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>六、协议的修订</strong><br /> <br /> 本协议可由本网站随时修订，并将修订后的协议公告于本网站之上，修订后的条款内容自公告时起生效，并成为本协议的一部分。用户若在本协议修改之后，仍继续使用本网站，则视为用户接受和自愿遵守修订后的协议。本网站行使修改或中断服务时，不需对任何第三方负责。<br /> <br /> <strong>七、 本网站的责任范围 </strong><br /> <br /> 当用户接受该协议时，用户应明确了解并同意∶</p>\r\n<ol>\r\n<li>是否经由本网站下载或取得任何资料，由用户自行考虑、衡量并且自负风险，因下载任何资料而导致用户电脑系统的任何损坏或资料流失，用户应负完全责任。</li>\r\n<li>用户经由本网站取得的建议和资讯，无论其形式或表现，绝不构成本协议未明示规定的任何保证。</li>\r\n<li>基于以下原因而造成的利润、商誉、使用、资料损失或其它无形损失，本网站不承担任何直接、间接、附带、特别、衍生性或惩罚性赔偿（即使本网站已被告知前款赔偿的可能性）：         \r\n<ul>\r\n<li>本网站的使用或无法使用。</li>\r\n<li>经由或通过本网站购买或取得的任何物品，或接收之信息，或进行交易所随之产生的替代物品及服务的购买成本。</li>\r\n<li>用户的传输或资料遭到未获授权的存取或变更。</li>\r\n<li>本网站中任何第三方之声明或行为。</li>\r\n<li>本网站其它相关事宜。</li>\r\n</ul>\r\n</li>\r\n<li>本网站只是为用户提供一个交易的平台，对于用户所刊登的交易物品的合法性、真实性及其品质，以及用户履行交易的能力等，本网站一律不负任何担保责任。用户如果因使用本网站，或因购买刊登于本网站的任何物品，而受有损害时，本网站不负任何补偿或赔偿责任。</li>\r\n<li>本  网站提供与其它互联网上的网站或资源的链接，用户可能会因此连结至其它运营商经营的网站，但不表示本网站与这些运营商有任何关系。其它运营商经营的网站均  由各经营者自行负责，不属于本网站控制及负责范围之内。对于存在或来源于此类网站或资源的任何内容、广告、产品或其它资料，本网站亦不予保证或负责。因使  用或依赖任何此类网站或资源发布的或经由此类网站或资源获得的任何内容、物品或服务所产生的任何损害或损失，本网站不负任何直接或间接的责任。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>八.、不可抗力</strong><br /> <br /> 因不可抗力或者其他意外事件，使得本协议的履行不可能、不必要或者无意义的，双方均不承担责任。本合同所称之不可抗力意指不能预见、不能避免并不能克服的  客观情况，包括但不限于战争、台风、水灾、火灾、雷击或地震、罢工、暴动、法定疾病、黑客攻击、网络病毒、电信部门技术管制、政府行为或任何其它自然或人  为造成的灾难等客观情况。<br /> <br /> <strong>九、争议解决方式</strong><br /></p>\r\n<ol>\r\n<li>本协议及其修订本的有效性、履行和与本协议及其修订本效力有关的所有事宜，将受中华人民共和国法律管辖，任何争议仅适用中华人民共和国法律。</li>\r\n<li>因  使用本网站服务所引起与本网站的任何争议，均应提交深圳仲裁委员会按照该会届时有效的仲裁规则进行仲裁。相关争议应单独仲裁，不得与任何其它方的争议在任  何仲裁中合并处理，该仲裁裁决是终局，对各方均有约束力。如果所涉及的争议不适于仲裁解决，用户同意一切争议由人民法院管辖。</li>\r\n</ol>', '255', '1', '1240122848', null, null);
INSERT INTO `y9_article` VALUES ('2', 'cert_autonym', '什么是实名认证', '3', '0', '', '<p><strong>什么是实名认证？</strong></p>\r\n<p>&ldquo;认证店铺&rdquo;服务是一项对店主身份真实性识别服务。店主可以通过站内PM、电话或管理员EMail的方式 联系并申请该项认证。经过管理员审核确认了店主的真实身份，就可以开通该项认证。</p>\r\n<p>通过该认证，可以说明店主身份的真实有效性，为买家在网络交易的过程中提供一定的信心和保证。</p>\r\n<p><strong>认证申请的方式：</strong></p>\r\n<p>Email：XXXX@XX.com</p>\r\n<p>管理员：XXXXXX</p>', '255', '1', '1240122848', null, null);
INSERT INTO `y9_article` VALUES ('3', 'cert_material', '什么是实体店铺认证', '3', '0', '', '<p><strong>什么是实体店铺认证？</strong></p>\r\n<p>&ldquo;认证店铺&rdquo;服务是一项对店主身份真实性识别服务。店主可以通过站内PM、电话或管理员EMail的方式 联系并申请该项认证。经过管理员审核确认了店主的真实身份，就可以开通该项认证。</p>\r\n<p>通过该认证，可以说明店主身份的真实有效性，为买家在网络交易的过程中提供一定的信心和保证。</p>\r\n<p><strong>认证申请的方式：</strong></p>\r\n<p>Email：XXXX@XX.com</p>\r\n<p>管理员：XXXXXX</p>', '255', '1', '1240122848', null, null);
INSERT INTO `y9_article` VALUES ('4', 'setup_store', '开店协议', '3', '0', '', '<p>使用本公司服务所须遵守的条款和条件。<br /><br />1.用户资格<br />本公司的服务仅向适用法律下能够签订具有法律约束力的合同的个人提供并仅由其使用。在不限制前述规定的前提下，本公司的服务不向18周岁以下或被临时或无限期中止的用户提供。如您不合资格，请勿使用本公司的服务。此外，您的帐户（包括信用评价）和用户名不得向其他方转让或出售。另外，本公司保留根据其意愿中止或终止您的帐户的权利。<br /><br />2.您的资料（包括但不限于所添加的任何商品）不得：<br />*具有欺诈性、虚假、不准确或具误导性；<br />*侵犯任何第三方著作权、专利权、商标权、商业秘密或其他专有权利或发表权或隐私权；<br />*违反任何适用的法律或法规（包括但不限于有关出口管制、消费者保护、不正当竞争、刑法、反歧视或贸易惯例/公平贸易法律的法律或法规）；<br />*有侮辱或者诽谤他人，侵害他人合法权益的内容；<br />*有淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的内容；<br />*包含可能破坏、改变、删除、不利影响、秘密截取、未经授权而接触或征用任何系统、数据或个人资料的任何病毒、特洛依木马、蠕虫、定时炸弹、删除蝇、复活节彩蛋、间谍软件或其他电脑程序；<br /><br />3.违约<br />如发生以下情形，本公司可能限制您的活动、立即删除您的商品、向本公司社区发出有关您的行为的警告、发出警告通知、暂时中止、无限期地中止或终止您的用户资格及拒绝向您提供服务：<br />(a)您违反本协议或纳入本协议的文件；<br />(b)本公司无法核证或验证您向本公司提供的任何资料；<br />(c)本公司相信您的行为可能对您、本公司用户或本公司造成损失或法律责任。<br /><br />4.责任限制<br />本公司、本公司的关联公司和相关实体或本公司的供应商在任何情况下均不就因本公司的网站、本公司的服务或本协议而产生或与之有关的利润损失或任何特别、间接或后果性的损害（无论以何种方式产生，包括疏忽）承担任何责任。您同意您就您自身行为之合法性单独承担责任。您同意，本公司和本公司的所有关联公司和相关实体对本公司用户的行为的合法性及产生的任何结果不承担责任。<br /><br />5.无代理关系<br />用户和本公司是独立的合同方，本协议无意建立也没有创立任何代理、合伙、合营、雇员与雇主或特许经营关系。本公司也不对任何用户及其网上交易行为做出明示或默许的推荐、承诺或担保。<br /><br />6.一般规定<br />本协议在所有方面均受中华人民共和国法律管辖。本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。</p>', '255', '1', '1240122848', null, null);
INSERT INTO `y9_article` VALUES ('5', 'msn_privacy', 'MSN在线通隐私策略', '3', '0', '', '<p>Msn在线通隐私策略旨在说明您在本网站使用Msn在线通功能时我们如何保护您的Msn帐号信息。<br /> 我们认为隐私权非常重要。我们希望此隐私保护中心有助于您在本网站更好使用Msn在线通<br /> <strong>我们收集的信息</strong></p><blockquote>* 您在本网站激活Msn在线通时,程序将会记录您的Msn在线通帐号</blockquote><p><br /> <strong>您的选择</strong></p><blockquote>* 您可以在本网站随时注销您的Msn在线通帐号</blockquote><p><br /> <strong>其他隐私声明</strong></p><blockquote>* 如果我们需要改变本网站Msn在线通的隐私策略, 我们会把相关的改动在此页面发布.</blockquote>', '255', '1', '1240122848', null, null);
INSERT INTO `y9_article` VALUES ('11', '', '关于我们', '9', '0', '', '<p><!--[if gte mso 9]><xml><w:WordDocument><w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel><w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery><w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery><w:DocumentKind>DocumentNotSpecified</w:DocumentKind><w:DrawingGridVerticalSpacing>7.8</w:DrawingGridVerticalSpacing><w:View>Normal</w:View><w:Compatibility><w:DontGrowAutofit /><w:BalanceSingleByteDoubleByteWidth /><w:DoNotExpandShiftReturn /><w:UseFELayout /></w:Compatibility><w:Zoom>0</w:Zoom></w:WordDocument></xml><![endif]--></p>\r\n<p><!--[if gte mso 9]><xml><w:LatentStyles DefLockedState=\"false\"  DefUnhideWhenUsed=\"true\"  DefSemiHidden=\"true\"  DefQFormat=\"false\"  DefPriority=\"99\"  LatentStyleCount=\"156\" ><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Normal\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 1\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 4\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 5\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 6\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 7\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 8\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"heading 9\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 1\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 4\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 5\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 6\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 7\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 8\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index 9\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 1\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 4\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 5\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 6\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 7\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 8\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toc 9\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Normal Indent\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"footnote text\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"annotation text\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"header\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"footer\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"index heading\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"caption\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"table of figures\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"envelope address\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"envelope return\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"footnote reference\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"annotation reference\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"line number\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"page number\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"endnote reference\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"endnote text\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"table of authorities\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"macro\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"toa heading\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Bullet\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Number\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List 4\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List 5\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Bullet 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Bullet 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Bullet 4\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Bullet 5\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Number 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Number 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Number 4\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Number 5\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Title\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Closing\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Signature\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Default Paragraph Font\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Body Text\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Body Text Indent\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Continue\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Continue 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Continue 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Continue 4\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"List Continue 5\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Message Header\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Subtitle\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Salutation\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Date\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Body Text First Indent\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Body Text First Indent 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Note Heading\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Body Text 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Body Text 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Body Text Indent 2\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Body Text Indent 3\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Block Text\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Hyperlink\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"FollowedHyperlink\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Strong\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Emphasis\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Document Map\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Plain Text\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"E-mail Signature\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Normal (Web)\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Acronym\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Address\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Cite\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Code\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Definition\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Keyboard\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Preformatted\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Sample\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Typewriter\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"HTML Variable\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Normal Table\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"annotation subject\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"No List\" ></w:LsdException><w:LsdException Locked=\"false\"  Priority=\"99\"  Name=\"Balloon Text\" ></w:LsdException></w:LatentStyles></xml><![endif]--></p>\r\n<p class=\"p0\" style=\"margin-bottom: 0pt; margin-top: 0pt;\"><span style=\"mso-spacerun: \'yes\'; font-size: 12.0000pt; font-family: \'宋体\';\">一、优酒库是什么</span></p>\r\n<p class=\"p0\" style=\"margin-bottom: 0pt; margin-top: 0pt;\"><span style=\"mso-spacerun: \'yes\'; font-size: 12.0000pt; font-family: \'宋体\';\">&nbsp;&nbsp;&nbsp;&nbsp;\"<span style=\"font-family: 宋体;\">优酒库</span><span style=\"font-family: Cambria;\">\"</span><span style=\"font-family: 宋体;\">全称&mdash;&mdash;全球优质进口酒原产地直销平台，是世界原产地美酒供应商面对国内消费者的垂直门户，平台由三个窗口组成：实体店、优酒柜与线上互联网。窗口之间实行串联，同一产品、价格与服务，打造线上线下联运体系。</span></span></p>\r\n<p class=\"p0\" style=\"margin-bottom: 0pt; margin-top: 0pt;\"><span style=\"mso-spacerun: \'yes\'; font-size: 12.0000pt; font-family: \'宋体\';\">二、优酒库的功能</span></p>\r\n<p class=\"p0\" style=\"margin-bottom: 0pt; margin-top: 0pt;\"><span style=\"mso-spacerun: \'yes\'; font-size: 12.0000pt; font-family: \'宋体\';\">&nbsp;&nbsp;&nbsp;&nbsp;优酒库平台具备两方面链接功能：一方面，为优质原产地供应商搭建市场终端、消费者面对面对接平台。另一方面，为国内消费者带来更多优质进口酒产品、服务体验。</span></p>\r\n<p class=\"p0\" style=\"margin-bottom: 0pt; margin-top: 0pt;\"><span style=\"mso-spacerun: \'yes\'; font-size: 12.0000pt; font-family: \'宋体\';\">三、有就可以的愿景</span></p>\r\n<p class=\"p0\" style=\"margin-bottom: 0pt; margin-top: 0pt;\"><span style=\"mso-spacerun: \'yes\'; font-size: 12.0000pt; font-family: \'宋体\';\">&nbsp;&nbsp;&nbsp;&nbsp;打造国人选酒第一门户，树立进口酒价格风向标。以产品、运营服务提升来塑造整个平台的商业价值。</span></p>\r\n<p class=\"p0\" style=\"margin-bottom: 0pt; margin-top: 0pt;\"><span style=\"mso-spacerun: \'yes\'; font-size: 12.0000pt; font-family: \'宋体\';\">四、优酒库的定位</span></p>\r\n<p class=\"p0\" style=\"margin-bottom: 0pt; margin-top: 0pt;\"><span style=\"mso-spacerun: \'yes\'; font-size: 12.0000pt; font-family: \'宋体\';\">&nbsp;&nbsp;&nbsp;&nbsp;服务全球优质美酒进驻中国市场，满足国内终端消费者一站式选购需求，架设世界各优质产地与国内消费者之间的直线桥梁。</span></p>\r\n<p>&nbsp;</p>', '255', '1', '1413096830', ' ', null);
INSERT INTO `y9_article` VALUES ('12', '', '浪漫2•14 情定优酒库', '7', '0', '', '<p>1、 店内任意消费即可参与活动；<br />2、 情侣现场合照可立即获得一张照片留念，同时优酒库将收录一张照片作为爱情的见证，本张照片背面可有情侣的签名及爱的誓言，优酒库将予以珍藏。2015年2月14日前，若留照的情侣终成眷属，将获得优酒库提供的优酒库新人特权。<br />3、 优酒库新人特权：<br />（1）一次户外包场使用权<br />（2）享受婚宴酒水折扣 <br />（3）尊享价值1320元的&ldquo;一生爱你&rdquo;相爱美酒<br />（4）赠送一次个性化酒标定制（请提前一周预约）</p>', '255', '1', '1413104112', '', null);
INSERT INTO `y9_article` VALUES ('13', '', '优酒相伴 “醉”美3.8节', '7', '0', '', '<p><span style=\"font-size: medium;\"><strong>品优雅人生 做精致女人<br />优酒相伴 &ldquo;醉&rdquo;美3.8节</strong></span></p>\r\n<p>&nbsp;</p>\r\n<p>3&bull;8女士购酒尊享会员价<br />精选女士美酒 第二杯免单<br />活动时间：2014年3月8日<br />活动地点：优酒库</p>', '255', '1', '1413104187', '', null);
INSERT INTO `y9_article` VALUES ('14', '', '优酒库3·12红酒塞涂鸦大赛', '7', '0', '', '<p>即日起至2014年3月11日前，带上富有环保创意或包含优酒库主题的软木塞DIY涂鸦作品，前往优酒库任一家直营店参与评选。我们将在3月12日评选出最佳作品奖、最具创意奖以及最炫最in奖三个奖项，得奖选手可获得优酒库提供的精美礼品！</p>', '255', '1', '1413104229', '', null);
INSERT INTO `y9_article` VALUES ('15', '', '今天你被忽悠了吗', '7', '0', '', '<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><strong>真假优购（今天你被忽悠了吗）</strong></span></p>\r\n<p>&nbsp;</p>\r\n<p>1、 消费满599元+39元即可参与真假优购活动；<br />2、 3个盒子装有3款价格由高到低的葡萄酒ABC，盒子外印有3款酒的logo，3款酒的酒标将被放入这3个盒子中，您可挑选其中一个盒子，例如您挑选A, 那么此时盒子里面将出现3种可能：1、酒品A；2、酒品B；3、酒品C.<br />（三款竞猜产品市场价格均不低于100元）</p>', '255', '1', '1413104295', '', null);
INSERT INTO `y9_article` VALUES ('16', '', '优酒库葡萄酒文化交流酒会', '7', '0', '', '<p>自由交流酒会、品鉴美酒</p>', '255', '1', '1413104316', '', null);
INSERT INTO `y9_article` VALUES ('17', '', '优酒库5.1欢乐购', '7', '0', '', '<p>托莱多城干红葡萄酒 5+1（买五赠一）￥540<br />爱普普里米蒂沃干红葡萄酒2支装 ￥319<br />爱普长相思玛尔维萨干白葡萄酒2支装 ￥219<br />活动时间：2014年5月1日-5月3日</p>', '255', '1', '1413104336', '', null);
INSERT INTO `y9_article` VALUES ('18', '', '5.11母亲节给妈妈最好的', '7', '0', '', '<p>优酒库---购酒满599 送 养生SPA体验<br />活动时间：2014.5.10-2014.5.12</p>', '255', '1', '1413104370', '', null);
INSERT INTO `y9_article` VALUES ('19', '', '优酒库西班牙罗兰酒庄专场品鉴会', '7', '0', '', '<p>05月21日/周三/晚七点至十点<br />优酒库为您呈现来自西班牙罗兰酒庄的经典佳酿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />届时西班牙罗兰酒庄代表将与您共度这独一无二的红酒之夜<br />您将品鉴到一系列西班牙罗兰酒庄葡萄酒，同时搭配精美小食</p>', '255', '1', '1413104389', '', null);
INSERT INTO `y9_article` VALUES ('20', '', '会员福利日', '7', '0', '', '<p>5月26日～29日为会员福利日，至优酒库Sm店享会员折上折，会员购酒除原有折扣外再享9.5折。岛内两箱起免费送到家。</p>', '255', '1', '1413104409', '', null);
INSERT INTO `y9_article` VALUES ('21', '', '酒香四溢 情浓端午', '7', '0', '', '<p>托莱多康德干红葡萄酒 整箱购（6支装）￥819 <br />爱普普里米蒂沃干红葡萄酒2支装 ￥319<br />托莱多城干红葡萄酒&nbsp; 2支装 ￥199<br />活动时间：2014年5月31日-2014年6月6日</p>', '255', '1', '1413104426', '', null);
INSERT INTO `y9_article` VALUES ('22', '', '爸爸去哪儿', '7', '0', '', '<p>Hi，想好了带你的他去哪儿度过一个浪漫又有趣的父亲节了吗？ <br />Hi，周日是父亲节哎！给老爸的礼物准备好了吗？ <br />优酒库精选父亲节活动套餐 <br />购酒满299赠真空酒瓶塞（钢泵）<br />购酒满699赠无耳快速醒酒器套装<br />购酒满1919赠黑色高档鳄鱼纹酒具礼盒套装<br />活动时间：2014年6月14日-6月15日</p>', '255', '1', '1413104442', '', null);
INSERT INTO `y9_article` VALUES ('23', '', '优酒库世界杯嘉年华', '7', '0', '', '<p>进口冰啤1bottle+精美小食 59元<br />托莱多城干红2cup+精美小食 89元<br />安娜天然高泡 1bottle+精美小食 109元</p>', '255', '1', '1413104460', '', null);
INSERT INTO `y9_article` VALUES ('24', '', '奥迪A3世界杯主题专场酒会', '7', '0', '', '<p>抽奖、自由酒会、品鉴美酒</p>', '255', '1', '1413104478', '', null);
INSERT INTO `y9_article` VALUES ('25', '', '遇见•爱 情定优酒库', '7', '0', '', '<p>（托莱多城干红葡萄酒+黑色鳄鱼纹酒具礼盒套装+大树皮纹棕色双支皮盒）配图=￥520<br />活动时间：8月1日-8月2日</p>', '255', '1', '1413104495', '', null);
INSERT INTO `y9_article` VALUES ('26', '', '优酒库欢乐下午茶 Happy Hour', '7', '0', '', '<p>纽约芝士+养生花茶=￥58<br />炎炎夏日来优酒库享受一份清凉吧~<br />活动时间：8月1日-9月31日<br />优酒库会员每月可免费享受 一次下午茶时光</p>', '255', '1', '1413104549', '', null);
INSERT INTO `y9_article` VALUES ('27', '', '优酒库迎中秋 博好礼！', '7', '0', '', '<p>法国名庄美人鱼庄园干红葡萄酒金标礼盒装 ￥1699（原价￥3999）<br />法国高级酒庄宝诺十字酒庄干红葡萄酒礼盒装 ￥699（原价￥1599）<br />意大利法罗黑曼罗干红葡萄酒礼盒装 ￥518（原价￥1199）<br />西班牙托莱多城干红葡萄酒整箱购 ￥588（原价￥1399）<br />法国阿曼特雄狮干红葡萄酒￥199整箱购<br />安娜甜高泡2支装 ￥99<br />活动时间：2014年8月15日-2014年9月30日</p>', '255', '1', '1413104568', '', null);
INSERT INTO `y9_article` VALUES ('28', '', '香醇融情 新贵诱惑', '7', '0', '', '<p>会员尊享博饼酒会（充值赠送）</p>', '255', '1', '1413104605', '', null);
INSERT INTO `y9_article` VALUES ('29', '', '金秋十月 悦享国庆', '7', '0', '', '<p>1、法国名庄美人鱼庄园干红葡萄酒金标礼盒装 ￥1699（原价￥3999）<br />2、意大利爱普普里米蒂沃干红葡萄酒礼盒装 ￥369（原价￥799）<br />3、拉沃隆河谷干红葡萄酒整箱购 ￥599（原价￥1299）<br />4、加入会员尊享：<br />&rarr;会员大礼包：即日起加入优酒库会员送会员大礼包，尊享会员政策，免费参与品酒会，更多惊喜等你来！<br />活动时间：2014年10月1日-2014年10月31日</p>', '255', '1', '1413104623', '', null);
INSERT INTO `y9_article` VALUES ('30', '', '欢乐圣诞嘉年华', '7', '0', '', '<p>优酒库会员尊享圣诞大餐198/位 2人同行，第2位半价，3人同行 1人免单，赠法国原装进口AOC葡萄酒一杯 ，还有圣诞小礼品送出<br />活动时间：12月23日-12月24日<br />禾祥西店</p>', '255', '1', '1413104640', '', 'data/files/article/other/article1413105416.jpg');
INSERT INTO `y9_article` VALUES ('31', '', '优酒库精选名庄美酒倾情贺岁', '7', '0', '', '<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><strong>让味蕾去名庄旅行<br />优酒库精选名庄美酒倾情贺岁</strong></span></p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\"><br />源自1855年梅多克列级名庄美人鱼酒庄&mdash;&mdash;<br />（金属标美人鱼美悦城堡2007/金属标美人鱼美悦城堡2008）+美人鱼木盒=名庄礼盒套装 1919元<br />源自西班牙优质葡萄产区Castilla&mdash;&mdash;<br />（托莱多雷伊2006）+两支装国产葡萄酒杯黑色礼盒=经典礼盒套装699<br />西班牙古都Toledo经典&mdash;&mdash;<br />（托莱多城干红葡萄酒/托莱多康德干红葡萄酒）+黑色/棕色双支装礼盒=马年贺岁礼盒套装399元<br />活动时间：1月27日-2月16日</p>', '255', '1', '1413104704', '', 'data/files/article/other/article1413105298.jpg');

-- ----------------------------
-- Table structure for `y9_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `y9_attribute`;
CREATE TABLE `y9_attribute` (
  `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `input_mode` varchar(10) NOT NULL DEFAULT 'text',
  `def_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_brand`
-- ----------------------------
DROP TABLE IF EXISTS `y9_brand`;
CREATE TABLE `y9_brand` (
  `brand_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) NOT NULL DEFAULT '',
  `brand_logo` varchar(255) DEFAULT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `if_show` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `tag` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`brand_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_brand
-- ----------------------------
INSERT INTO `y9_brand` VALUES ('1', '如福庄园', null, '1', '0', '0', '1', '1');

-- ----------------------------
-- Table structure for `y9_cart`
-- ----------------------------
DROP TABLE IF EXISTS `y9_cart`;
CREATE TABLE `y9_cart` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL DEFAULT '',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `specification` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `goods_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_cart
-- ----------------------------
INSERT INTO `y9_cart` VALUES ('100', '13', '7bca3bc1e4f40b315ae1dbed84e99b15', '1', '16', '奥特洛酒庄干红葡萄酒2010', '23', '', '225.00', '1', 'data/files/store_1/goods_61/small_201410121737413071.png');
INSERT INTO `y9_cart` VALUES ('99', '11', 'cbff767319c31ac2ef7ec44883741b98', '1', '8', '美人鱼酒庄正牌干红葡萄酒2007', '15', '', '990.00', '1', 'data/files/store_1/goods_49/small_201410130237299435.png');
INSERT INTO `y9_cart` VALUES ('98', '11', 'cbff767319c31ac2ef7ec44883741b98', '1', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '23', 'data/files/store_1/goods_180/small_201410061859403909.png');

-- ----------------------------
-- Table structure for `y9_category_goods`
-- ----------------------------
DROP TABLE IF EXISTS `y9_category_goods`;
CREATE TABLE `y9_category_goods` (
  `cate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cate_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_category_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_category_store`
-- ----------------------------
DROP TABLE IF EXISTS `y9_category_store`;
CREATE TABLE `y9_category_store` (
  `cate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cate_id`,`store_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_category_store
-- ----------------------------
INSERT INTO `y9_category_store` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `y9_collect`
-- ----------------------------
DROP TABLE IF EXISTS `y9_collect`;
CREATE TABLE `y9_collect` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'goods',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`,`type`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_collect
-- ----------------------------
INSERT INTO `y9_collect` VALUES ('2', 'goods', '6', '', '1413075682');
INSERT INTO `y9_collect` VALUES ('3', 'goods', '94', '', '1413128199');
INSERT INTO `y9_collect` VALUES ('2', 'goods', '9', '', '1413078940');
INSERT INTO `y9_collect` VALUES ('1', 'goods', '82', '', '1413071653');

-- ----------------------------
-- Table structure for `y9_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `y9_coupon`;
CREATE TABLE `y9_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `coupon_name` varchar(100) NOT NULL DEFAULT '',
  `coupon_value` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `use_times` int(10) unsigned NOT NULL DEFAULT '0',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `if_issue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`coupon_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_coupon_sn`
-- ----------------------------
DROP TABLE IF EXISTS `y9_coupon_sn`;
CREATE TABLE `y9_coupon_sn` (
  `coupon_sn` varchar(20) NOT NULL,
  `coupon_id` int(10) unsigned NOT NULL DEFAULT '0',
  `remain_times` int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`coupon_sn`),
  KEY `coupon_id` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_coupon_sn
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_friend`
-- ----------------------------
DROP TABLE IF EXISTS `y9_friend`;
CREATE TABLE `y9_friend` (
  `owner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `friend_id` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_id`,`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_friend
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_function`
-- ----------------------------
DROP TABLE IF EXISTS `y9_function`;
CREATE TABLE `y9_function` (
  `func_code` varchar(20) NOT NULL DEFAULT '',
  `func_name` varchar(60) NOT NULL DEFAULT '',
  `privileges` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`func_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_function
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_gcategory`
-- ----------------------------
DROP TABLE IF EXISTS `y9_gcategory`;
CREATE TABLE `y9_gcategory` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `if_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`cate_id`),
  KEY `store_id` (`store_id`,`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_gcategory
-- ----------------------------
INSERT INTO `y9_gcategory` VALUES ('1', '0', '白葡萄酒', '0', '1', '1');
INSERT INTO `y9_gcategory` VALUES ('2', '0', '干型', '1', '2', '1');
INSERT INTO `y9_gcategory` VALUES ('3', '0', '半干型', '1', '3', '1');
INSERT INTO `y9_gcategory` VALUES ('4', '0', '红葡萄酒', '0', '1', '1');
INSERT INTO `y9_gcategory` VALUES ('5', '0', '半干型', '4', '2', '1');
INSERT INTO `y9_gcategory` VALUES ('6', '0', '桃红葡萄酒', '0', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('10', '0', '干型', '4', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('11', '0', '白兰地', '0', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('12', '0', '威士忌', '0', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('13', '0', '半甜型', '1', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('14', '0', '甜型', '1', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('15', '0', '香槟起泡酒', '0', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('16', '0', '甜型', '4', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('17', '0', '半甜型', '4', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('18', '0', '干邑', '11', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('19', '0', '阿曼涅克', '11', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('20', '0', '单一麦芽', '12', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('21', '0', '调和', '12', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('22', '0', '天然酒', '15', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('23', '0', '绝干酒', '15', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('24', '0', '甜酒', '15', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('25', '0', '半干酒', '15', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('26', '0', '干酒', '15', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('27', '0', '干型', '6', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('28', '0', '半干型', '6', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('29', '0', '甜型', '6', '255', '1');
INSERT INTO `y9_gcategory` VALUES ('30', '0', '半甜型', '6', '255', '1');

-- ----------------------------
-- Table structure for `y9_goods`
-- ----------------------------
DROP TABLE IF EXISTS `y9_goods`;
CREATE TABLE `y9_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'material',
  `goods_name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `cate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_name` varchar(255) NOT NULL DEFAULT '',
  `brand` varchar(100) NOT NULL,
  `spec_qty` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `spec_name_1` varchar(60) NOT NULL DEFAULT '',
  `spec_name_2` varchar(60) NOT NULL DEFAULT '',
  `if_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `closed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `close_reason` varchar(255) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `default_spec` int(11) unsigned NOT NULL DEFAULT '0',
  `default_image` varchar(255) NOT NULL DEFAULT '',
  `default_image2` varchar(255) DEFAULT NULL,
  `recommended` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cate_id_1` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_id_2` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_id_3` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_id_4` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `mgrade_dis` char(200) DEFAULT '' COMMENT '会员等级折扣比例',
  `tags` varchar(102) NOT NULL,
  `mgrade_ingredients` varchar(255) DEFAULT NULL,
  `mgrade_alcohol` varchar(200) DEFAULT NULL,
  `mgrade_year` varchar(200) DEFAULT NULL,
  `mgrade_norm` int(11) DEFAULT NULL,
  `mgrade_areas` varchar(255) DEFAULT NULL,
  `mgrade_grade` varchar(255) DEFAULT NULL,
  `market_price` decimal(10,2) DEFAULT '0.00' COMMENT '市场价',
  `prizeinfo` text COMMENT '获奖信息',
  PRIMARY KEY (`goods_id`),
  KEY `store_id` (`store_id`),
  KEY `cate_id` (`cate_id`),
  KEY `cate_id_1` (`cate_id_1`),
  KEY `cate_id_2` (`cate_id_2`),
  KEY `cate_id_3` (`cate_id_3`),
  KEY `cate_id_4` (`cate_id_4`),
  KEY `brand` (`brand`(10)),
  KEY `tags` (`tags`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_goods
-- ----------------------------
INSERT INTO `y9_goods` VALUES ('9', '1', 'material', '阿曼特雄狮干红葡萄酒', '<p class=\"p1\"><span class=\"s1\">外观：深紫色；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：红莓、李子等水果香，同时还含有其也丰富的水果香气；</span></p>\r\n<p>口感：单宁成熟而美味，口感独特。</p>', '10', '红葡萄酒	干型', '阿曼特雄狮', '0', '', '', '0', '0', null, '1413005236', '1413084458', '16', '', null, '1', '4', '10', '0', '0', '62.00', '{\"3\":\"0.774\",\"2\":\"0.774\",\"1\":\"0.774\"}', '', '多种混合', '11.5', '0', '750', '法国', 'VCE（欧盟餐酒）', '152.00', '');
INSERT INTO `y9_goods` VALUES ('6', '1', 'material', '蓝色葡萄牙珍藏干红葡萄酒', '<p class=\"p1\">外观：色泽明亮的深红色；</p>\r\n<p class=\"p1\">香气：紫罗兰香气伴随橡木桶熟成带来的辛香；</p>\r\n<p>口感：酒体饱满，带有黑加仑、果酱和土司的味道，回味悠长。</p>\r\n<ol> </ol>', '5', '红葡萄酒	半干型', '蓝色葡萄牙', '0', '', '', '1', '0', null, '1412564433', '1413099320', '9', 'data/files/store_1/goods_180/small_201410061859403909.png', 'data/files/store_1/goods_181/small_201410061859415669.jpg', '1', '4', '5', '0', '0', '203.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', ',干红 葡萄酒 宴会,', '60% 醇卡蒂拉、20% 阿里冈德布契、 20% 亚拉贡利', '13.5', '2007', '750', '葡萄牙-阿连特茹', 'VR（地区餐酒）', '515.00', '2009年伦敦国际葡萄酒挑战赛推荐奖；Mark Squires评分：87分');
INSERT INTO `y9_goods` VALUES ('8', '1', 'material', '美人鱼酒庄正牌干红葡萄酒2007', '<p class=\"p1\">外观：深宝石红；</p>\r\n<p class=\"p1\">香气：洋李和黑醋栗的果香，伴烟熏、橡木、巧克力和干香草等气息，浓郁而丰厚；</p>\r\n<p class=\"p1\">口感：单宁细腻，酒体柔和，持续的黑莓子和烤橡木味令余韵更为悠长。</p>\r\n<p>&nbsp;</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '1', '0', null, '1413004065', '1413110393', '15', 'data/files/store_1/goods_49/small_201410130237299435.png', null, '1', '4', '10', '0', '0', '1188.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '65%赤霞珠、35%梅洛', '13', '2007', '750', '法国-波尔多-玛歌', '三级名庄', '1560.00', 'Robert Parker：86分\r\nWine Spectator：89分');
INSERT INTO `y9_goods` VALUES ('23', '1', 'material', '拉沃隆河谷干红葡萄酒', '<p class=\"p1\">外观：深石榴红；</p>\r\n<p class=\"p1\">香气：红莓，李子和黑色水果香；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：入口清新温和，丹宁柔和成熟。</p>', '10', '红葡萄酒	干型', '拉沃隆河谷', '0', '', '', '0', '0', null, '1413008653', '1413084737', '30', '', null, '1', '4', '10', '0', '0', '150.00', '{\"3\":\"0.766\",\"2\":\"0.766\",\"1\":\"0.766\"}', '', '60%歌海娜、40%西拉', '13', '2011', '750', '法国-隆河谷', 'AOC（法定产区酒）', '360.00', '2009年份获得《中国葡萄酒》；2012年度百大葡萄酒评选铜奖；2010年份获2011年国际葡萄酒挑战赛铜奖；2010年份获2012年《品醇客》世界葡萄酒评比铜奖；2010年份获《葡萄酒鉴赏家》评分87分。');
INSERT INTO `y9_goods` VALUES ('10', '1', 'material', '卡特督侯干红葡萄酒', '<p class=\"p1\"><span class=\"s1\">外观：深紫色；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：浓郁的红色浆果如草莓、李子等水果香气；</span></p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\"><span class=\"s1\">口感：口感柔滑，单宁细腻，回味悠长。</span></p>\r\n<p class=\"p1\"><span class=\"s1\"><br /></span></p>', '10', '红葡萄酒	干型', '卡特督侯', '0', '', '', '0', '0', null, '1413005719', '1413084477', '17', '', null, '1', '4', '10', '0', '0', '82.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '赤霞珠、美乐、品丽珠', '13', '2011', '750', '法国-波尔多', 'AOC（法定产区酒）', '259.00', '');
INSERT INTO `y9_goods` VALUES ('11', '1', 'material', '圣-格兰庄园珍藏干红葡萄酒', '<p class=\"p1\"><span class=\"s1\">外观：宝石红色；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：迷人的水果香气；</span></p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\"><span class=\"s1\">口感：酒体集中，口感圆润细滑。品尝时在口中留下长时间的余香，回味无穷。</span></p>', '10', '红葡萄酒	干型', '圣-格兰庄园', '0', '', '', '0', '0', null, '1413006072', '1413084501', '18', '', null, '1', '4', '10', '0', '0', '111.00', '{\"3\":\"0.765\",\"2\":\"0.765\",\"1\":\"0.765\"}', '', '50%赤霞珠、40%美乐、10%品丽珠', '12.5', '2011', '750', '法国-波尔多', 'AOC（法定产区酒）', '355.00', '');
INSERT INTO `y9_goods` VALUES ('94', '1', 'material', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '<p class=\"p1\">外观：宝石红，挂杯持久；</p>\r\n<p class=\"p1\">香气：香气浓郁；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：柔和的口感集中而丰富，芳香的水果味持续留存在口腔中。</p>', '10', '红葡萄酒	干型', '梅洛莎娜庄园', '0', '', '', '1', '0', null, '1413077348', '1413098624', '101', 'data/files/store_1/goods_144/small_201410121729046034.png', 'data/files/store_1/goods_136/small_201410121728565719.png', '1', '4', '10', '0', '0', '205.00', '{\"3\":\"0.77\",\"2\":\"0.77\",\"1\":\"0.77\"}', '', '60%梅洛、40%赤霞珠', '12.8', '2011', '750', '法国-波尔多', 'AOC（法定产区酒）', '458.00', '');
INSERT INTO `y9_goods` VALUES ('13', '1', 'material', '梅洛莎娜庄园特酿干红葡萄酒（金标）', '<p class=\"p1\"><span class=\"s1\">外观：宝石红；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：红色浆果与黑色浆果香气浓郁；</span></p>\r\n<p>口感：口感柔和，酒体集中，芳香的水果味持续留存在口腔中，余味悠长。</p>', '10', '红葡萄酒	干型', '梅洛莎娜庄园', '0', '', '', '0', '0', null, '1413006360', '1413084552', '20', '', null, '1', '4', '10', '0', '0', '218.00', '{\"3\":\"0.770\",\"2\":\"0.770\",\"1\":\"0.770\"}', ',AOC,法国,', '60%梅洛、40%赤霞珠', '12.8', '2011', '750', '法国-波尔多', 'AOC（法定产区酒）', '510.00', '');
INSERT INTO `y9_goods` VALUES ('14', '1', 'material', '达思梵咏叹调庄园干红葡萄酒2007', '<p class=\"p1\"><span class=\"s1\">外观：深樱桃红；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：浓郁的小黑莓、橡木、艾草及绿色植被的混合香气；</span></p>\r\n<p>口感：层次丰富，口感复杂，余韵悠长。</p>', '10', '红葡萄酒	干型', '达思梵咏叹调庄园', '0', '', '', '0', '0', null, '1413006480', '1413084570', '21', '', null, '1', '4', '10', '0', '0', '494.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', ',法国,', '56%赤霞珠、35%梅乐、9%小维度', '12.5', '2007', '750', '法国-上梅多克', '中级庄', '665.00', '');
INSERT INTO `y9_goods` VALUES ('15', '1', 'material', '古兰彤酒庄干红葡萄酒', '<p class=\"p1\"><span class=\"s1\">外观：宝石红；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：成熟的果实芳香与香料等橡木香气完美融合；</span></p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\"><span class=\"s1\">口感：丹宁醇厚润滑，口感完美和谐。</span></p>\r\n<p class=\"p1\"><span class=\"s1\"><br /></span></p>', '10', '红葡萄酒	干型', '古兰彤酒庄', '0', '', '', '0', '0', null, '1413006580', '1413084585', '22', '', null, '1', '4', '10', '0', '0', '345.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '70%赤霞珠、25%梅乐、5%马尔贝克', '13', '2008', '750', '法国-梅多克', '中级庄', '780.00', '酒庄庄主Cyril Gillet先生的另一款同庄不同名的干红葡萄酒——Chateau Haut Barrail （芭赫酒庄）连续三年（2008-2010年）被选入法国购酒指南《LE GUIDE HACHETTE DES VINS》当中，此款红酒在2008年与Vieux Chateau Landon一起被评为一星级的葡萄酒。 \r\n');
INSERT INTO `y9_goods` VALUES ('16', '1', 'material', '奥特洛酒庄干红葡萄酒2010', '<p>宝石红，略带紫色光泽；有红色水果和辛香料香气；在法国橡木桶中陈年12个月，带有橡木桶的香气。</p>', '10', '红葡萄酒	干型', '奥特洛酒庄', '0', '', '', '1', '0', null, '1413006660', '1413099303', '23', 'data/files/store_1/goods_61/small_201410121737413071.png', 'data/files/store_1/goods_28/small_201410121753482068.png', '1', '4', '10', '0', '0', '293.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', ',法国,', '100%品丽珠', '12.5', '2010', '750', '法国-卢瓦尔河谷-索米尔香皮尼', '高级酒庄', '812.00', '');
INSERT INTO `y9_goods` VALUES ('17', '1', 'material', '宝诺十字酒庄干红葡萄酒2010', '<p class=\"p1\"><span class=\"s1\">外观：宝石红，略带紫色光泽；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：红色水果香气扑鼻而来，口中有轻微的香草气息；</span></p>\r\n<p>口感：单宁如丝绸般细腻，口感顺滑。</p>', '10', '红葡萄酒	干型', '宝诺十字酒庄', '0', '', '', '1', '0', null, '1413006741', '1413099291', '24', 'data/files/store_1/goods_163/small_201410121802432032.png', 'data/files/store_1/goods_164/small_201410121802441468.png', '1', '4', '10', '0', '0', '442.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', ',法国,高级酒庄,', '95%梅乐、5%赤霞珠', '13.5', '2010', '750', '法国-波尔多-山地圣艾美隆', '高级酒庄', '818.00', '此酒连续两年（2009和2010）被列入法国葡萄酒导购Guide Hachette Vin当中， 并被评为两星级酒。');
INSERT INTO `y9_goods` VALUES ('18', '1', 'material', '圣安德烈十字酒庄干红葡萄酒2009', '<p class=\"p1\"><span class=\"s1\">外观：典型的波尔多红色酒裙；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：黑色水果香气扑鼻而来，鹿茸气息随后呈现；</span></p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\"><span class=\"s1\">口感：口中水果香气更加明显，带橡木香气，单宁柔滑，口感平衡。</span></p>', '10', '红葡萄酒	干型', '圣安德烈十字酒庄', '0', '', '', '0', '0', null, '1413006826', '1413084630', '25', '', null, '1', '4', '10', '0', '0', '598.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', ',高级酒庄,法国,', '80%梅乐、20%品丽珠与赤霞珠', '13.5', '2009', '750', '法国-拉朗德-波美侯', '高级酒庄', '880.00', '被选入法国购酒指南《LE GUIDE HACHETTE DES VINS 2008》、《LE GUIDE HACHETTE DES VINS 2011》，并被评为当年一星级的葡萄酒。 ');
INSERT INTO `y9_goods` VALUES ('19', '1', 'material', '蒙特大厦庄园干红葡萄酒2008', '<p class=\"p1\"><span class=\"s1\">外观：宝石红，闪烁着鲜亮的光泽；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：红色水果香气明显，微带烤面包的气息；</span></p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\"><span class=\"s1\">口感：浓郁饱满的水果清香，甘美与烘烤之间的完美平衡，余香持久。</span></p>', '10', '红葡萄酒	干型', '蒙特大厦庄园', '0', '', '', '0', '0', null, '1413006901', '1413006901', '26', '', null, '1', '4', '10', '0', '0', '455.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '60%梅乐、40%赤霞珠', '13', '2008', '750', '法国-上梅多克', '中级庄', '920.00', '');
INSERT INTO `y9_goods` VALUES ('20', '1', 'material', '杜高图兹酒庄干红葡萄酒2007', '<p class=\"p1\"><span class=\"s1\">外观：石榴红；</span></p>\r\n<p class=\"p1\"><span class=\"s1\">香气：开瓶后红色水果与黑色水果的香气扑鼻而来；</span></p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\"><span class=\"s1\">口感：口感华美。酒体精致完整，味道极具变化，丹宁成熟，有丝绸般柔滑的口感，品尝后口中仍香气不绝。</span></p>', '10', '红葡萄酒	干型', '杜高图兹酒庄', '0', '', '', '0', '0', null, '1413007100', '1413008235', '27', '', null, '1', '4', '10', '0', '0', '676.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '90%梅乐、10%赤霞珠', '13', '2007', '750', '法国-波尔多-圣艾美隆', '高级酒庄', '982.00', '荣获2010年法国波尔多葡萄酒大奖赛金奖。');
INSERT INTO `y9_goods` VALUES ('21', '1', 'material', '尚-康德露庄园干红葡萄酒2004', '<p class=\"p1\">外观：石榴红并带有红宝石反光；</p>\r\n<p class=\"p1\">香气：花香四溢、成熟水果香并带有烘烤、香草味；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：丰富而集中，余韵悠长。</p>', '10', '红葡萄酒	干型', '尚-康德露庄园', '0', '', '', '0', '0', null, '1413008453', '1413008453', '28', '', null, '1', '4', '10', '0', '0', '546.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '80%梅乐、10%赤霞珠、10%品丽珠', '13', '2004', '750', '法国-梅多克', '中级庄', '1050.00', '');
INSERT INTO `y9_goods` VALUES ('22', '1', 'material', '卡洛宾庄园干红葡萄酒2006', '<p class=\"p1\">外观：鲜艳的宝石红；</p>\r\n<p class=\"p1\">香气：具有成熟的果香味和轻微的花香味；</p>\r\n<p>口感：圆润，浓烈，单宁平衡。</p>', '10', '红葡萄酒	干型', '卡洛宾庄园', '0', '', '', '0', '0', null, '1413008553', '1413018990', '29', '', null, '1', '4', '10', '0', '0', '715.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '50%赤霞珠、30%梅洛 、15%品丽珠、5%小维度', '12.5', '2006', '750', '法国-波尔多-玛歌', '高级酒庄', '1155.00', '');
INSERT INTO `y9_goods` VALUES ('24', '1', 'material', '拉沃哈斯图干红葡萄酒', '<p class=\"p1\">外观：暗紫色；</p>\r\n<p class=\"p1\">香气：充满花香，樱桃白兰地和泥土清香；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：口感极佳，丹宁细腻，余韵悠长带有清新的果香。</p>', '10', '红葡萄酒	干型', '拉沃哈斯图', '0', '', '', '0', '0', null, '1413008735', '1413084712', '31', '', null, '1', '4', '10', '0', '0', '280.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', ',AOC,法国,', '50%歌海娜、50%西拉', '13.5', '2011', '750', '法国-隆河谷-哈斯图', 'AOC（法定产区酒）', '675.00', '2010年份获《葡萄酒鉴赏家》评分88分。');
INSERT INTO `y9_goods` VALUES ('25', '1', 'material', '美人鱼酒庄正牌干红葡萄酒2008', '<p class=\"p1\">外观：石榴红；</p>\r\n<p class=\"p1\">香气：黑樱桃与黑加仑的果香，伴烟熏和泥土气息，浓郁高雅；</p>\r\n<p>口感：酒体饱满，口感圆润，单宁丝滑，口中有愉悦的黑樱桃、黑加仑香气和烟熏味。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '1', '0', null, '1413008815', '1413109868', '32', 'data/files/store_1/goods_60/small_201410130231003572.png', null, '1', '4', '10', '0', '0', '1272.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '', '13', '2008', '750', '法国-波尔多-玛歌', '', '1590.00', 'Robert Parker：90分，\r\n简西斯•罗宾逊(Jancis Robbinson) JR 16.5+，\r\nWine Spectator《葡萄酒观察家评分》：87-90分');
INSERT INTO `y9_goods` VALUES ('26', '1', 'material', '拉沃吉贡达干红葡萄酒', '<p class=\"p1\">外观：深紫色。</p>\r\n<p class=\"p1\">香气：浓郁的黑色水果，黑莓和香料香气。</p>\r\n<p>口感：酒体平衡，入口清新温和，丹宁柔和成熟，余味悠长。</p>', '10', '红葡萄酒	干型', '拉沃吉贡达', '0', '', '', '0', '0', null, '1413008869', '1413084682', '33', '', null, '1', '4', '10', '0', '0', '423.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', ',AOC,法国,', '50%歌海娜、40%西拉、10%慕维得尔', '14.5', '2010', '750', '法国-吉贡达', 'AOC（法定产区酒）', '1075.00', 'Robert Parker’s Wine Advocate，Jeb Dunnuck评分90分；《葡萄酒鉴赏家Wine Spectator》89分；2011年布鲁塞尔国际评酒会银奖；2011年国际葡萄酒挑战赛铜奖；2012年《品醇客》世界葡萄酒评比银奖。');
INSERT INTO `y9_goods` VALUES ('27', '1', 'material', '托莱多城干红葡萄酒2010', '<p class=\"p1\">外观：鲜艳的草莓红色；&nbsp;</p>\r\n<p class=\"p1\">香气：十分清新、强烈的草莓及成熟李子的香气，并带有优雅的燧石、泥土的气息；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：入口圆润饱满，协调的橡木桶味及略高的酸度令酒体十分清新，极易入口且回甘愉悦，优雅柔软，令人印象深刻。</p>', '10', '红葡萄酒	干型', '托莱多城', '0', '', '', '0', '0', null, '1413008970', '1413019356', '34', '', null, '1', '4', '10', '0', '0', '140.00', '{\"3\":\"0.771\",\"2\":\"0.771\",\"1\":\"0.771\"}', ',VDLT,', '80%添帕尼罗，20%西拉', '14.5', '2010', '750', '西班牙-卡斯蒂利亚-拉曼恰', 'VDLT（优质地区餐酒）', '486.00', '2012年《国际葡萄酒指南》“铜奖”');
INSERT INTO `y9_goods` VALUES ('28', '1', 'material', '托莱多康德干红葡萄酒2007', '<p class=\"p1\">外观：强烈明亮的紫色；</p>\r\n<p class=\"p1\">香气：醇香弥漫。带有成熟野生坚果的香气，持久迷人；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：入口甜美，酸度清新适中，单宁成熟，回味持久，收尾别具一格，陈年潜力佳。</p>', '10', '红葡萄酒	干型', '托莱多康德', '0', '', '', '0', '0', null, '1413009089', '1413084654', '35', '', null, '1', '4', '10', '0', '0', '189.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', '', '100%西拉', '13', '2006', '750', '西班牙-卡斯蒂利亚-拉曼恰', 'VDLT（优质地区餐酒)', '652.00', '2011年维也纳AWC“金奖”；2010年德国国际葡萄酒大奖赛“金奖”；2012年guía Intervinos德语版评分：92分；2012年《国际葡萄酒指南》“铜奖”');
INSERT INTO `y9_goods` VALUES ('29', '1', 'material', '托莱多雷伊干红葡萄酒2006', '<p class=\"p1\">外观：酒体清澈、明亮。呈成熟樱桃红色，带有紫色边缘;</p>\r\n<p class=\"p1\">香气：花香味扑鼻而来，干玫瑰花瓣及干黑莓的香味细腻优雅，以矿物味收尾。</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：入口清新，口感优雅。协调而完美的奶香味，矿物味及烘烤香气，回味悠长。</p>', '10', '红葡萄酒	干型', '托莱多雷伊', '0', '', '', '0', '0', null, '1413009166', '1413009166', '36', '', null, '1', '4', '10', '0', '0', '333.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '50%西拉，50%添帕尼罗', '13', '2006', '750', '西班牙-卡斯蒂利亚-拉曼恰', 'VDLT（优质地区餐酒）', '1075.00', '2012年法国国际酿酒师大赛“银奖”；2012年《国际葡萄酒指南》“铜奖”；2011年伦敦品醇（DECANTER）；2011年“推荐奖”；2011年维也纳AWC“鉴定奖”；2005年份：西班牙Repsol Wine Guide 2010年评分：91分');
INSERT INTO `y9_goods` VALUES ('30', '1', 'material', '罗曼干红葡萄酒', '<p class=\"p1\">外观：深樱桃红并泛紫罗兰光泽；</p>\r\n<p class=\"p1\">香气：成熟黑莓的特殊果香，同时还含有其他丰富的&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 水果香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：属于现代风格的单品种葡萄酒。在口中，野生色水果香气独特而浓郁，单宁成熟而美味。</p>', '10', '红葡萄酒	干型', '罗曼', '0', '', '', '0', '0', null, '1413009229', '1413009229', '37', '', null, '1', '4', '10', '0', '0', '88.00', '{\"3\":\"0.772\",\"2\":\"0.772\",\"1\":\"0.772\"}', '', '100%添帕尼罗', '13', '2011', '750', '西班牙-卡斯蒂利亚-拉曼恰-乌克莱斯', 'DO（法定产区酒）', '245.00', '');
INSERT INTO `y9_goods` VALUES ('31', '1', 'material', '美人鱼酒庄副牌干红葡萄酒2006', '<p class=\"p1\">外观：石榴红；</p>\r\n<p class=\"p1\">香气：黑色水果香气和微妙的烘烤味巧妙的融合在一起，极富有表现力；</p>\r\n<p>口感：单宁平衡而个性十足，回味极佳。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '0', '0', null, '1413009252', '1413110024', '38', 'data/files/store_1/goods_19/small_201410130233396741.png', null, '1', '4', '10', '0', '0', '828.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '62%赤霞珠、38%梅乐', '13', '2006', '750', '法国-波尔多-玛歌', '三级名庄', '975.00', '');
INSERT INTO `y9_goods` VALUES ('32', '1', 'material', '罗曼干白葡萄酒', '<p class=\"p1\">外观：犹如麦秆般的漂亮的浅黄色，清澈透亮；</p>\r\n<p class=\"p1\">香气：令人愉悦的浓郁酒香，柠檬酸色调，带有葡萄柚和菠 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 萝的香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：清新爽口，果香四溢，酸度平衡适中。</p>', '2', '白葡萄酒	干型', '罗曼', '0', '', '', '0', '0', null, '1413009290', '1413009290', '39', '', null, '1', '1', '2', '0', '0', '88.00', '{\"3\":\"0.772\",\"2\":\"0.772\",\"1\":\"0.772\"}', '', '100%艾伦', '11', '2011', '750', '西班牙-卡斯蒂利亚-拉曼恰-乌克莱斯', 'DO（法定产区酒）', '245.00', '');
INSERT INTO `y9_goods` VALUES ('33', '1', 'material', '埃斯塔卡干红葡萄酒（18个月/750ml）', '<p class=\"p1\">外观：酒体呈樱桃红并带有宝石红边缘；</p>\r\n<p class=\"p1\">香气：气味复杂，含有可可，咖啡酒，雪松，烟草和蓝莓等香气，同时含有异国风味水果、矿物和生姜的香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：口感醇厚优雅，入口感觉细致，含有经特别烤制的名贵树木香气，口感清爽，酒体平衡，细腻，柔和。</p>', '10', '红葡萄酒	干型', '埃斯塔卡', '0', '', '', '1', '0', null, '1413009359', '1413099276', '40', 'data/files/store_1/goods_151/small_201410121759116188.png', 'data/files/store_1/goods_151/small_201410121759119494.png', '1', '4', '10', '0', '0', '298.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '40%添帕尼罗、30%赤霞珠、20%西拉、10%梅洛', '14', '2007', '750', '西班牙-卡斯蒂利亚-拉曼恰', 'DO（法定产区酒）', '520.00', '');
INSERT INTO `y9_goods` VALUES ('34', '1', 'material', '雪库瓦干白葡萄酒', '<p>&nbsp;</p>\r\n<p class=\"p1\">酒香强<span class=\"s1\">劲</span>，<span class=\"s1\">优</span>雅复<span class=\"s1\">杂</span>。成熟的水果香气混合着<span class=\"s1\">让</span>人愉快的糕点香。白色水果香气<span class=\"s1\">综</span>合着橡木桶的香气，口感<span class=\"s1\">浓</span>厚，回甘悠<span class=\"s1\">长</span>。</p>', '2', '白葡萄酒	干型', '雪库瓦', '0', '', '', '0', '0', null, '1413009437', '1413009437', '41', '', null, '1', '1', '2', '0', '0', '1021.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '40%维欧芝、60%白苏维翁', '12', '2010', '750', '西班牙-卡斯蒂利亚-拉曼恰', 'DO（法定产区酒）', '2088.00', '');
INSERT INTO `y9_goods` VALUES ('35', '1', 'material', '雪库瓦干红葡萄酒', '<p class=\"p1\">外观：暗红色；</p>\r\n<p class=\"p1\">香气：气味层次复杂，含有少许烟草和巧克力的香气；</p>\r\n<p>口感：口感强劲，力度适中。</p>', '10', '红葡萄酒	干型', '雪库瓦', '0', '', '', '1', '0', null, '1413009511', '1413099266', '42', 'data/files/store_1/goods_146/small_201410121822266193.png', 'data/files/store_1/goods_148/small_201410121822283024.png', '1', '4', '10', '0', '0', '1073.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '85%赤霞珠、15%西拉', '14', '2009', '750', '西班牙-卡斯蒂利亚-拉曼恰', 'VDLT（优质地区餐酒）', '2288.00', '帕克分 91分；\r\n2011年柏林葡萄酒杯金奖。');
INSERT INTO `y9_goods` VALUES ('36', '1', 'material', '美人鱼酒庄副牌干红葡萄酒2007', '<p class=\"p1\">外观：宝石红。</p>\r\n<p class=\"p1\">香气：黑醋栗、黑莓、李子的果香中弥散着细致优雅的的烘培、烟熏的橡木香气。</p>\r\n<p>口感：黑醋栗、香料气息浓郁，口感醇厚，单宁适中，酒体平衡，回味悠长。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '0', '0', null, '1413009621', '1413110099', '43', 'data/files/store_1/goods_92/small_201410130234527593.png', null, '1', '4', '10', '0', '0', '864.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '55%赤霞珠、40%梅洛、5%品丽珠', '13', '0', '750', '法国-波尔多-玛歌', '三级名庄', '960.00', '');
INSERT INTO `y9_goods` VALUES ('37', '1', 'material', '埃斯塔卡庄园干红葡萄酒（18个月/1.5L)', '<p class=\"p1\">外观：樱桃红；</p>\r\n<p class=\"p1\">香气：气味复杂，含有可可，咖啡酒，雪松，烟草和热带森林水果的味道以及果木气，同时含有异国风味水果等特殊香气；</p>\r\n<p>口感：口感醇厚优雅，入口感觉细致，含有经特别烤制的名贵树木香气，酒体平衡，柔和。</p>', '10', '红葡萄酒	干型', '埃斯塔卡庄园', '0', '', '', '1', '0', null, '1413009649', '1413099257', '44', 'data/files/store_1/goods_81/small_201410121758017641.png', 'data/files/store_1/goods_80/small_201410121758005041.png', '1', '4', '10', '0', '0', '1030.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '40%添帕尼罗、30%赤霞珠、20%西拉、10%梅洛', '14', '2007', '1500', '西班牙-卡斯蒂利亚-拉曼恰', 'VDLT（优质地区餐酒)', '1715.00', '');
INSERT INTO `y9_goods` VALUES ('38', '1', 'material', '如福庄园埃塔玛珍藏干红葡萄酒', '<p class=\"p1\">外观：明亮的宝石红泛栗色光泽；</p>\r\n<p class=\"p1\">香气：草莓果脯味浓烈，香甜而成熟；</p>\r\n<p>口感：果味浓郁、甘美强劲，单宁圆润甜美，酸度适中、易饮，耐人寻味。</p>', '10', '红葡萄酒	干型', '如福庄园埃塔玛', '0', '', '', '1', '0', null, '1413009735', '1413099243', '45', 'data/files/store_1/goods_163/small_201410121826035747.png', 'data/files/store_1/goods_164/small_201410121826046474.png', '1', '4', '10', '0', '0', '868.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '100%添帕尼罗', '13', '2001', '750', '西班牙-卡斯蒂利亚-莱昂-锡加莱斯', 'DO（法定产区酒）', '1500.00', '2007 TEMPRANILLO DE PLATA');
INSERT INTO `y9_goods` VALUES ('39', '1', 'material', '美人鱼酒庄副牌干红葡萄酒2008', '<p class=\"p1\">外观：宝石红。</p>\r\n<p class=\"p1\">香气：黑色浆果香气，伴烘烤、香草气息。</p>\r\n<p>口感：口中黑醋栗、香料、成熟蜜枣与香草香气浓郁，单宁适中，酒体平衡，余韵悠长。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '1', '0', null, '1413009754', '1413109966', '46', 'data/files/store_1/goods_156/small_201410130232369505.png', null, '1', '4', '10', '0', '0', '900.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '55%赤霞珠、40%梅洛、5%品丽珠和小维度 ', '13', '2008', '750', '法国-波尔多-玛歌', '三级名庄', '990.00', '');
INSERT INTO `y9_goods` VALUES ('40', '1', 'material', '如福庄园珍藏干红葡萄酒（1.5L)', '<p class=\"p1\">外观：黑莓般的紫色色调；</p>\r\n<p class=\"p1\">香气：口感辛辣复杂带有些许来自于年份久远的橡木桶的烘烤味道；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：入口优雅饱满，丝绸般柔滑，酸甜平衡，结构良好，余韵悠长。</p>', '10', '红葡萄酒	干型', '如福庄园', '0', '', '', '0', '0', null, '1413009812', '1413009812', '47', '', null, '1', '4', '10', '0', '0', '1205.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '100%添帕尼罗', '14', '2004', '1500', '西班牙-卡斯蒂利亚-莱昂-锡加莱斯', 'DO（法定产区酒）', '2470.00', '');
INSERT INTO `y9_goods` VALUES ('41', '1', 'material', '美人鱼庄园干红葡萄酒2007（金属标）', '<p class=\"p1\">外观：宝石红色；</p>\r\n<p class=\"p1\">香气：成熟的红色、黑色水果的香气，辛香、雪松的芳香，融合优雅的烘焙、烟熏的橡木香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：口感醇厚，单宁细腻，酒体平衡，回味悠长。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '0', '0', null, '1413009903', '1413009903', '48', '', null, '1', '4', '10', '0', '0', '1105.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '55%赤霞珠、40%梅洛、5%品丽珠', '13', '2007', '750', '法国-波尔多-玛歌', '三级名庄', '1960.00', '');
INSERT INTO `y9_goods` VALUES ('42', '1', 'material', '如福庄园珍藏干红葡萄酒（5L)', '<p class=\"p1\">外观：砖红；</p>\r\n<p class=\"p1\">香气：香气强烈，富有表现力，带有樱桃和熟透的水果香，甚至有肉酱味；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：酒体强劲、酒质浓稠、单宁厚重、但是味甜滑腻，入口圆润饱满。</p>', '10', '红葡萄酒	干型', '如福庄园', '0', '', '', '0', '0', null, '1413009915', '1413009915', '49', '', null, '1', '4', '10', '0', '0', '4664.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '100%添帕尼罗', '14', '2004', '5000', '西班牙', 'DO（法定产区酒）', '9970.00', '2012年AWC维也纳金奖');
INSERT INTO `y9_goods` VALUES ('43', '1', 'material', '克鲁诺佳美娜干红葡萄酒', '<p class=\"p1\">外观：深宝石红；</p>\r\n<p class=\"p1\">香气：李子，紫罗兰的香味，带有少许的辛辣味；</p>\r\n<p>口感：入口柔顺，口感圆润，酸度适宜，富含水果味，结构平衡。</p>', '10', '红葡萄酒	干型', '克鲁诺佳美娜', '0', '', '', '1', '0', null, '1413010006', '1413099220', '50', 'data/files/store_1/goods_153/small_201410121805538025.png', 'data/files/store_1/goods_162/small_201410121806021681.png', '1', '4', '10', '0', '0', '111.00', '{\"3\":\"0.765\",\"2\":\"0.765\",\"1\":\"0.765\"}', '', '100%佳美娜', '13', '2011', '750', '智利-科尔查瓜山谷', '品种级', '260.00', '');
INSERT INTO `y9_goods` VALUES ('44', '1', 'material', '美人鱼庄园干红葡萄酒2008（金属标）', '<p class=\"p1\">外观：宝石红；</p>\r\n<p class=\"p1\">香气：成熟的红色、黑色水果的香气伴香料与雪松的气息，与烘焙、烟熏的橡木香气完美融合；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：口感醇厚，单宁柔滑，酒体平衡，余韵悠长。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '0', '0', null, '1413010027', '1413010027', '51', '', null, '1', '4', '10', '0', '0', '1131.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', '', '55%赤霞珠、40%梅洛、5%品丽珠', '13', '2008', '750', '法国-波尔多-玛歌', '三级名庄', '1980.00', '');
INSERT INTO `y9_goods` VALUES ('45', '1', 'material', '克鲁诺梅洛干红葡萄酒', '<p class=\"p1\">外观：深红色略带紫罗兰色调；</p>\r\n<p class=\"p1\">香气：柑橘类、果酱和黑醋栗的香味并混有橡木桶的香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：酒体饱满，单宁柔和，余韵怡人。</p>', '10', '红葡萄酒	干型', '克鲁诺梅洛', '0', '', '', '1', '0', null, '1413010069', '1413081048', '52', 'data/files/store_1/goods_45/small_201410121830457791.jpg', null, '1', '4', '10', '0', '0', '103.00', '{\"3\":\"0.766\",\"2\":\"0.766\",\"1\":\"0.766\"}', '', '100%梅洛', '13', '2011', '750', '智利-科尔查瓜山谷', '品种级', '260.00', '');
INSERT INTO `y9_goods` VALUES ('46', '1', 'material', '金色美人鱼干红葡萄酒2006', '<p>外观：明亮的宝石红色，色泽艳丽，香气浓郁；</p>\r\n<p class=\"p1\">香气：有黑醋栗、黑莓、黑李子等黑色浆果的芳香，略带青椒及薄荷的香气，并带有细致优雅的烟熏、烘焙、烤面包的香气；</p>\r\n<p class=\"p1\">口感：酒香果香四溢，厚实的酒体由细致平衡的单宁恰到好处的到达舌根，有力却不突兀。余味纯净优雅而温和。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '1', '0', null, '1413010176', '1413109782', '53', 'data/files/store_1/goods_177/small_201410130229379100.png', null, '1', '4', '10', '0', '0', '1664.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '60%赤霞珠、40%梅乐', '13.5', '2006', '750', '法国-梅多克', '三级名庄', '2880.00', '');
INSERT INTO `y9_goods` VALUES ('47', '1', 'material', '克鲁诺西拉干红葡萄酒', '<p class=\"p1\">外观：明亮的宝石红；</p>\r\n<p class=\"p1\">香气：散发花香味和少许香料的香气混有樱桃和黑色浆果的</p>\r\n<p class=\"p1\">香味，也有胡椒和丁香的味道；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：结构平衡、余韵悠长。</p>', '10', '红葡萄酒	干型', '克鲁诺西拉', '0', '', '', '1', '0', null, '1413010251', '1413084406', '54', 'data/files/store_1/goods_4/small_201410121926446803.png', null, '1', '4', '10', '0', '0', '103.00', '{\"3\":\"0.766\",\"2\":\"0.766\",\"1\":\"0.766\"}', '', '100%西拉', '13', '2011', '750', '智利-科尔查瓜山谷', '品种级', '260.00', '');
INSERT INTO `y9_goods` VALUES ('48', '1', 'material', '金色美人鱼干红葡萄酒2007', '<p class=\"p1\">外观：深度宝石红色，色泽艳丽；</p>\r\n<p class=\"p1\">香气：香气浓郁，有黑醋栗、黑莓等黑色浆果及红色浆果芳香，略带辛辣香气，并带有的烟熏及烘培的香气；</p>\r\n<p>口感：单宁含量高，酒体强劲饱满，酸度较高，余韵持久。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '1', '0', null, '1413010319', '1413109744', '55', 'data/files/store_1/goods_119/small_201410130228395391.png', null, '1', '4', '10', '0', '0', '1586.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '60%赤霞珠、40%梅乐', '13.5', '2007', '750', '法国-梅多克', '三级名庄', '2820.00', '');
INSERT INTO `y9_goods` VALUES ('49', '1', 'material', '克鲁诺莎当妮干白葡萄酒', '<p class=\"p1\">外观：诱人黄色略带绿色光泽；</p>\r\n<p class=\"p1\">香气：成熟水果的香味和蜂蜜，木材、小白花的香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：富含果味、略带奶油香气。</p>', '2', '白葡萄酒	干型', '克鲁诺莎当妮', '0', '', '', '1', '0', null, '1413010328', '1413084372', '56', 'data/files/store_1/goods_169/small_201410121926093071.png', null, '1', '1', '2', '0', '0', '111.00', '{\"3\":\"0.765\",\"2\":\"0.765\",\"1\":\"0.765\"}', '', '100%莎当妮', '13', '2011', '750', '智利-科尔查瓜山谷', '品种级', '260.00', '');
INSERT INTO `y9_goods` VALUES ('50', '1', 'material', '克鲁诺赤霞珠珍藏干红葡萄酒', '<p class=\"p1\">外观：深宝石红；</p>\r\n<p class=\"p1\">香气：有黑胡椒，红色水果和香草的香气；</p>\r\n<p>口感：结构紧实、口感醇厚，酒体平衡，余韵悠长。</p>', '10', '红葡萄酒	干型', '克鲁诺赤霞珠', '0', '', '', '1', '0', null, '1413010491', '1413084335', '57', 'data/files/store_1/goods_129/small_201410121925295151.png', null, '1', '4', '10', '0', '0', '205.00', '{\"3\":\"0.77\",\"2\":\"0.77\",\"1\":\"0.77\"}', '', '100%赤霞珠', '14', '2009', '750', '智利-科尔查瓜山谷', '珍藏级', '499.00', '2011智利布鲁塞尔国际葡萄酒挑战赛银奖；《品醇客》世界葡萄酒大奖赛推荐；\r\n2012布鲁塞尔国际葡萄酒挑战赛银奖； 2012德国柏林葡萄酒大赛银奖；\r\n2012圣地亚哥葡萄酒大赛银奖。');
INSERT INTO `y9_goods` VALUES ('51', '1', 'material', '克鲁诺佳美娜珍藏干红葡萄酒', '<p class=\"p1\">外观：深紫罗兰色；</p>\r\n<p class=\"p1\">香气：有果酱，辛香料和黑胡椒的香味，同时还有咖啡和烟草的味道；</p>\r\n<p>口感：入口单宁柔顺，酒体圆润饱满。</p>', '10', '红葡萄酒	干型', '克鲁诺佳美娜', '0', '', '', '1', '0', null, '1413010566', '1413084284', '58', 'data/files/store_1/goods_78/small_201410121924385265.png', null, '1', '4', '10', '0', '0', '215.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', '', '100%佳美娜', '14', '2010', '750', '智利-科尔查瓜山谷', '珍藏级', '499.00', ' 2011德国柏林葡萄酒大赛金奖；2011智利布鲁塞尔国际葡萄酒挑战赛银奖；\r\n2012智利布鲁塞尔国际葡萄酒挑战赛金奖；2012国际葡萄酒大赛金奖；\r\n2012加拿大国际葡萄酒挑战赛银奖。');
INSERT INTO `y9_goods` VALUES ('52', '1', 'material', '美人鱼传说干红葡萄酒2006', '<p class=\"p1\">外观：紫色酒体中泛着浅淡的宝石红色；</p>\r\n<p class=\"p1\">香气：香气浓郁丰厚，呈现黑醋栗、黑莓、青椒及些微辛辣的香气，烟熏烤面包的烘培香气融合其中；</p>\r\n<p>口感：酒体饱满，单宁细致优雅，酒体平衡，回味悠长。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '1', '0', null, '1413010636', '1413098792', '59', 'data/files/store_1/goods_72/small_201410121724328042.png', 'data/files/store_1/goods_65/small_201410121724256127.png', '1', '4', '10', '0', '0', '1664.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '60%赤霞珠、40%梅乐', '13.5', '2006', '750', '法国-梅多克', '三级名庄', '2880.00', '');
INSERT INTO `y9_goods` VALUES ('53', '1', 'material', '美人鱼传说干红葡萄酒2007', '<p class=\"p1\">外观：深色酒体呈现宝石红色；</p>\r\n<p class=\"p1\">香气：香气浓郁丰厚，呈现黑醋栗、黑莓、青椒及些微辛辣的香气，烟熏烤面包的烘培香气融合其中；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：单宁含量高，细致浓密，酒体强劲饱满，酸度适中，余韵持久，回味悠长。</p>', '10', '红葡萄酒	干型', '美人鱼酒庄', '0', '', '', '1', '0', null, '1413010808', '1413098782', '60', 'data/files/store_1/goods_9/small_201410121653297135.png', 'data/files/store_1/goods_172/small_201410121656121117.png', '1', '4', '10', '0', '0', '1586.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '60%赤霞珠、40%梅乐', '13.5', '2007', '750', '法国-梅多克', '三级名庄', '2820.00', '');
INSERT INTO `y9_goods` VALUES ('54', '1', 'material', '克鲁诺梅洛珍藏干红葡萄酒', '<p class=\"p1\">外观：深红色；</p>\r\n<p class=\"p1\">香气：有黑色水果、草莓酱、薄荷以及咖啡的香气；</p>\r\n<p>口感：入口单宁柔和，酒体比较平衡。</p>', '10', '红葡萄酒	干型', '克鲁诺', '0', '', '', '1', '0', null, '1413011545', '1413084259', '61', 'data/files/store_1/goods_21/small_201410121923419464.png', null, '1', '4', '10', '0', '0', '205.00', '{\"3\":\"0.77\",\"2\":\"0.77\",\"1\":\"0.77\"}', '', '100%梅洛', '14', '2009', '750', '智利-科尔查瓜山谷', '珍藏级', '499.00', '');
INSERT INTO `y9_goods` VALUES ('56', '1', 'material', '蓝色葡萄牙特茹干红葡萄酒', '<p>外观：明亮的深紫色；<br />香气：复杂、清新的浆果类香气：覆盆子、草莓，伴有些微花香；<br />口感：结构均衡，单宁绵柔。余味悠长且富有层次。</p>', '10', '红葡萄酒	干型', '蓝色葡萄牙', '0', '', '', '1', '0', null, '1413011758', '1413098766', '63', 'data/files/store_1/goods_47/small_201410121810472946.png', 'data/files/store_1/goods_52/small_201410121810522508.png', '1', '4', '10', '0', '0', '153.00', '{\"3\":\"0.77\",\"2\":\"0.77\",\"1\":\"0.77\"}', '', '80%卡斯蒂莱欧，20%醇卡蒂拉', '14', '2009', '750', '葡萄牙-特茹', 'DOC（法定产区酒）', '412.00', '');
INSERT INTO `y9_goods` VALUES ('57', '1', 'material', '克鲁诺西拉珍藏干红葡萄酒', '<p class=\"p1\">外观：深红色；</p>\r\n<p class=\"p1\">香气：有黑色水果、草莓酱、薄荷以及咖啡的香气；</p>\r\n<p>口感：入口单宁柔和，酒体比较平衡。</p>', '10', '红葡萄酒	干型', '克鲁诺', '0', '', '', '1', '0', null, '1413011777', '1413084166', '64', 'data/files/store_1/goods_160/small_201410121922406641.png', null, '1', '4', '10', '0', '0', '205.00', '{\"3\":\"0.77\",\"2\":\"0.77\",\"1\":\"0.77\"}', '', '100%西拉', '14', '2009', '750', '智利-科尔查瓜山谷', '珍藏级', '499.00', '');
INSERT INTO `y9_goods` VALUES ('58', '1', 'material', '克鲁诺长相思珍藏干白葡萄酒', '<p class=\"p1\">外观：浅黄色，略带绿色光泽；</p>\r\n<p class=\"p1\">香气：强烈的柑橘类水果如葡萄柚香气，略带杏子和青草香味；</p>\r\n<p>口感：入口有活力的酸度，但是很柔顺，余韵悠长。</p>', '2', '白葡萄酒	干型', '克鲁诺', '0', '', '', '1', '0', null, '1413012106', '1413084101', '65', 'data/files/store_1/goods_95/small_201410121921352776.png', null, '1', '1', '2', '0', '0', '215.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', '', '100%长相思', '13', '2011', '750', '智利-雷达山谷', '珍藏级', '499.00', '');
INSERT INTO `y9_goods` VALUES ('59', '1', 'material', '克鲁诺莎当妮珍藏干白葡萄酒', '<p class=\"p1\">外观：浅黄色，略带绿色光泽；</p>\r\n<p class=\"p1\">香气：香蕉，蜂蜜和香草的香味；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：入口清新，酒体平衡，余韵悠长。</p>', '2', '白葡萄酒	干型', '克鲁诺', '0', '', '', '1', '0', null, '1413012231', '1413080651', '66', 'data/files/store_1/goods_48/small_201410121824083635.jpg', null, '1', '1', '2', '0', '0', '215.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', '', '100%莎当妮', '13', '2011', '750', '智利-迈普谷', '珍藏级', '499.00', '2012国际葡萄酒挑战赛银奖；斯蒂芬•坦泽评分：89分；2012国际葡萄酒与烈酒大赛银奖。');
INSERT INTO `y9_goods` VALUES ('60', '1', 'material', '特级克鲁诺限量版干红葡萄酒', '<p class=\"p1\">外观：宝石红;</p>\r\n<p class=\"p1\">香气：有充分成熟的红色水果香气，伴樱桃、西梅、微妙的香草和可可气息，略带辛辣；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：甜美的单宁，含有成熟水果、黑醋栗，黑巧克力和咖啡的香味， 余韵悠长。</p>', '10', '红葡萄酒	干型', '克鲁诺', '0', '', '', '1', '0', null, '1413012416', '1413079381', '67', 'data/files/store_1/goods_163/small_201410121802432054.jpg', null, '1', '4', '10', '0', '0', '510.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '45%赤霞珠、35%西拉、20%佳美娜', '14', '2009', '750', '智利-科尔查瓜山谷', '特珍藏级', '907.00', '2011年智利布鲁塞尔国际葡萄酒挑战赛银奖；2012年德国柏林葡萄酒大赛金奖；2012年法国葡萄酒评估大赛银奖；葡萄酒观察家评分：89分；斯蒂芬•坦泽（与帕克齐名的美国葡萄酒评论家）评分：91分。');
INSERT INTO `y9_goods` VALUES ('61', '1', 'material', '爱普长相思玛尔维萨干白葡萄酒', '<p>外观：稻草黄，泛绿色光泽；<br />香气：金雀花的清香带有一丝柑橘和热带水果的果香；<br />口感：酸度活泼，口感清新，具矿物味。</p>', '2', '白葡萄酒	干型', '爱普', '0', '', '', '0', '0', null, '1413012959', '1413013408', '68', '', null, '0', '1', '2', '0', '0', '168.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', '', '50%白玛尔维萨，50%长相思', '12', '2012', '750', '意大利-普利亚-萨伦托', 'IGP（地区餐酒）', '490.00', '');
INSERT INTO `y9_goods` VALUES ('62', '1', 'material', '爱普普里米蒂沃干红葡萄酒', '<p>外观：深宝石红，泛紫色光泽；<br />香气：酒香浓郁，李子、樱桃、香料的香气伴迷迭香和香草气息；<br />口感：酒体饱满，单宁柔顺，平衡易饮。</p>', '10', '红葡萄酒	干型', '爱普', '0', '', '', '0', '0', null, '1413013077', '1413013418', '69', '', null, '0', '4', '10', '0', '0', '228.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', '', '100%普里米蒂沃', '13', '2012', '750', '意大利-普利亚-萨伦托', 'IGP（地区餐酒）', '556.00', '');
INSERT INTO `y9_goods` VALUES ('63', '1', 'material', '法罗黑曼罗干红葡萄酒', '<p>外观：深紫红色，泛紫色光泽；<br />香气：酒香浓郁持久，带有黑醋栗和野果的芳香，伴有些许香料和香草味；<br />口感：酒体饱满，单宁柔顺，口感平衡，余韵悠长</p>', '10', '红葡萄酒	干型', '法罗', '0', '', '', '0', '0', null, '1413013175', '1413014251', '70', '', null, '1', '4', '10', '0', '0', '333.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '100%黑曼罗', '13', '2012', '750', '意大利-普利亚-萨伦托', 'IGP（地区餐酒）', '849.00', '');
INSERT INTO `y9_goods` VALUES ('64', '1', 'material', '法罗普里米蒂沃干红葡萄酒', '<p>外观：宝石红色，泛紫色光泽。<br />香气：酒香浓郁，有成熟草莓和李子的果香，伴有些许可可和香草的怡人清香；<br />口感：丝般柔顺，余味持久甜美。</p>', '10', '红葡萄酒	干型', '法罗', '0', '', '', '0', '0', null, '1413013250', '1413014146', '71', '', null, '1', '4', '10', '0', '0', '426.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '100%普里米蒂沃', '14', '2011', '750', '意大利-普利亚-萨伦托', 'DOP', '1228.00', '');
INSERT INTO `y9_goods` VALUES ('65', '1', 'material', '威雷德绿维特利纳干白葡萄酒2009', '<p>&nbsp;</p>\r\n<p class=\"p1\">澄净明亮，胡椒香气，口感浓厚，余味悠长。</p>', '2', '白葡萄酒	干型', '威雷德', '0', '', '', '1', '0', null, '1413013540', '1413085809', '72', 'data/files/store_1/goods_5/small_201410121950056692.png', null, '1', '1', '2', '0', '0', '218.00', '{\"3\":\"0.77\",\"2\":\"0.77\",\"1\":\"0.77\"}', '', '绿维特利纳', '13', '2009', '750', '奥地利-葡萄酒地区-施奈德贝格（单一葡萄园）', '优质地区酒', '399.00', '');
INSERT INTO `y9_goods` VALUES ('66', '1', 'material', '62周年纪念版普里米蒂沃干红葡萄酒', '<p>外观：深宝石红；<br />香气：酒香复杂多样，果香浓郁，有草莓酱和李子干的香气，伴有烟草和些许香料气息；<br />口感：酒体饱满，丹宁丰富细腻，余韵有可可、咖啡和香草味。</p>', '10', '红葡萄酒	干型', '62周年纪念版', '0', '', '', '0', '0', null, '1413013608', '1413014112', '73', '', null, '0', '4', '10', '0', '0', '881.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '100%普里米蒂沃', '14', '2010', '750', '意大利-普利亚-萨伦托', 'DOP（法定产区酒）', '1925.00', '');
INSERT INTO `y9_goods` VALUES ('83', '1', 'material', '威雷德绿维特利纳珍藏干白葡萄酒2007', '<p>&nbsp;</p>\r\n<p class=\"p1\">精心采摘单一葡萄园内最上乘的维特利纳葡萄，经过几轮的筛选，精酿而成。</p>', '2', '白葡萄酒	干型', '威雷德', '0', '', '', '1', '0', null, '1413014867', '1413081292', '90', 'data/files/store_1/goods_90/small_201410121834505768.jpg', null, '1', '1', '2', '0', '0', '355.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '绿维特利纳', '14', '2007', '750', '奥地利-葡萄酒地区-施奈德贝格（单一葡萄园）', '优质地区酒', '508.00', '');
INSERT INTO `y9_goods` VALUES ('68', '1', 'material', '多美多10年纯麦威士忌', '<p>外观：金色;<br />香气：柑橘、太妃糖的香气中带有葡萄干的香气;<br />口感：纯正、易饮。奶油的香甜与橡木桶带来的些许香料味完美平衡。余味悠长，香甜而又辛辣。</p>', '20', '威士忌	单一麦芽', '多美多', '0', '', '', '1', '0', null, '1413013796', '1413099066', '75', 'data/files/store_1/goods_29/small_201410122330296703.jpg', null, '1', '12', '20', '0', '0', '546.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '', '40', '10', '700', '苏格兰', '单一纯麦', '875.00', '2006年中国国际葡萄酒与烈酒挑战赛金奖；2013年俄罗斯国际食品展览会银奖；2009年旧金山世界烈酒大赛铜奖；2009年伦敦国际烈酒挑战赛铜奖；2007年轮渡国际葡萄酒与烈酒大赛银奖\r\n');
INSERT INTO `y9_goods` VALUES ('87', '1', 'material', '米特鲁诺莎当妮干白葡萄酒', '<p class=\"p1\">外观：明亮的黄色，泛橄榄色光泽；</p>\r\n<p class=\"p1\">香气：混合了清甜可口的菠萝，香蕉以及柠檬的香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：清新淡雅，余韵持久。</p>', '2', '白葡萄酒	干型', '米特鲁诺', '0', '', '', '1', '0', null, '1413015491', '1413080714', '94', 'data/files/store_1/goods_111/small_201410121825115783.jpg', null, '1', '1', '2', '0', '0', '85.00', '{\"3\":\"0.764\",\"2\":\"0.764\",\"1\":\"0.764\"}', '', '100%莎当妮', '13', '2012', '750', '阿根廷-门多萨-乌克山谷', '无', '287.00', '墨西哥Guía Palacio de Hierro 91分');
INSERT INTO `y9_goods` VALUES ('70', '1', 'material', '威雷德绿维特利纳珍藏干白葡萄酒2008', '<p>&nbsp;</p>\r\n<p class=\"p1\">精心采摘单一葡萄园内最上乘的维特利纳葡萄，经过几轮的筛选，精酿而成。</p>', '2', '白葡萄酒	干型', '威雷德', '0', '', '', '1', '0', null, '1413013806', '1413082163', '77', 'data/files/store_1/goods_160/small_201410121849206608.png', null, '1', '1', '2', '0', '0', '462.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '绿维特利纳', '14', '2008', '750', '奥地利-葡萄酒地区-施奈德贝格（单一葡萄园）', '优质地区酒', '508.00', '');
INSERT INTO `y9_goods` VALUES ('71', '1', 'material', '多美多16年纯麦威士忌', '<p>外观：琥珀色；<br />香气：圆润柔和的榛子与糖渍果皮的香气；<br />口感：风味浓郁，坚果香味伴辛辣的后味。余韵持久，奶油甜香后以辛辣收尾。</p>', '20', '威士忌	单一麦芽', '', '0', '', '', '1', '0', null, '1413013878', '1413099187', '78', 'data/files/store_1/goods_180/small_201410122333006736.jpg', 'data/files/store_1/goods_136/small_201410121745368096.jpg', '1', '12', '20', '0', '0', '798.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '', '40', '16', '700', '苏格兰', '单一纯麦', '1520.00', '2003/2004年美国旧金山世界烈酒大赛金奖；2007/2013年俄罗斯烈酒大赛金奖 ；2005年美国品酒协会特奖；2006年中国国际葡萄酒及烈酒挑战赛金奖；2010年伦敦国际烈酒挑战赛金奖；2006年中国国际葡萄酒及烈酒挑战赛金奖；2010年伦敦国际葡萄酒及烈酒大赛金奖；2005/2009/2012年伦敦国际葡萄酒及烈酒大赛银奖；2006年苏格兰威士忌竞赛优异奖；2006年伦敦国际葡萄酒及烈酒大赛银奖；2007年德国诺伊斯塔特国际烈酒大赛银奖；2007年伦敦国际葡萄酒及烈酒大赛铜奖；2009伦敦国际烈酒挑战赛铜奖。\r\n');
INSERT INTO `y9_goods` VALUES ('85', '1', 'material', '威雷德圣劳伦特红冰酒2008', '<p class=\"p1\">外观：雅致的浅红色；</p>\r\n<p class=\"p1\">香气：散发出黑莓、林果等成熟浆果的气息；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：入口柔软，酸甜平衡。</p>', '16', '红葡萄酒	甜型', '威雷德', '0', '', '', '1', '0', null, '1413015094', '1413084294', '92', 'data/files/store_1/goods_18/small_201410121836585167.jpg', null, '1', '4', '16', '0', '0', '436.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '圣劳伦特', '11.1', '2008', '375', '奥地利-葡萄酒地区-赫尔兹尔（单一葡萄园）', '冰酒', '1020.00', '');
INSERT INTO `y9_goods` VALUES ('86', '1', 'material', '威雷德白比诺贵腐酒2004', '<p class=\"p1\">外观：明亮的金黄色；</p>\r\n<p class=\"p1\">香气：复杂、浓郁的香气，如干无花果、杏仁等；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：甜味精细柔滑，如奶油果仁糖一般，清新，平衡。</p>', '3', '白葡萄酒	半干型', '威雷德', '0', '', '', '1', '0', null, '1413015202', '1413098642', '93', 'data/files/store_1/goods_90/small_201410121734501512.jpg', 'data/files/store_1/goods_91/small_201410121734518487.jpg', '1', '1', '3', '0', '0', '436.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '白比诺', '10', '2004', '375', '奥地利-伯萨尔（单一葡萄园）', '贵腐精选', '1120.00', '');
INSERT INTO `y9_goods` VALUES ('73', '1', 'material', '威雷德雷司令白葡萄酒2009', '<p>&nbsp;</p>\r\n<p class=\"p1\">酒体优雅，口感柔滑，水果味香调。</p>', '2', '白葡萄酒	干型', '威雷德', '0', '', '', '1', '0', null, '1413013937', '1413085563', '80', 'data/files/store_1/goods_99/small_201410121848193939.png', null, '1', '1', '2', '0', '0', '306.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', '', '雷司令', '13', '2009', '750', '奥地利-葡萄酒地区-库格勒（单一葡萄园）', '优质地区酒', '476.00', '');
INSERT INTO `y9_goods` VALUES ('84', '1', 'material', '威雷德威尔殊雷司令冰酒2008', '<p class=\"p1\">外观：澄净明亮；</p>\r\n<p class=\"p1\">香气：香料芳香伴苹果味；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：品味怡人，甜度和酸度平衡恰到适宜，带有浓郁异域水果风味，是一款上乘甜酒。</p>', '14', '白葡萄酒	甜型', '威雷德', '0', '', '', '1', '0', null, '1413014994', '1413098650', '91', 'data/files/store_1/goods_12/small_201410121740121476.jpg', 'data/files/store_1/goods_14/small_201410121740142672.jpg', '1', '1', '14', '0', '0', '436.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '威尔殊雷司令', '9', '2008', '375', '奥地利-葡萄酒地区-赫尔兹尔（单一葡萄园）', '冰酒', '1020.00', '');
INSERT INTO `y9_goods` VALUES ('75', '1', 'material', '杜佩诱惑VSOP干邑白兰地', '<p>外观：深金黄色。<br />香气：充满野生康乃馨、柠檬花等花香与馥郁的橘子、柠檬、李子等水果香气。<br />口感：清爽的口感，仿佛置身于盛夏。口中的水果香气浓郁而不失优雅。</p>', '18', '白兰地	干邑', '杜佩诱惑', '0', '', '', '1', '0', null, '1413014011', '1413078843', '82', 'data/files/store_1/goods_35/small_201410121753555893.jpg', null, '1', '11', '18', '0', '0', '630.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '白玉霓', '40', '7', '700', '法国-大香槟、小香槟、优林区', 'VSOP', '965.00', '2010年香港国际葡萄酒与烈酒大赛铜奖，2013年香港国际葡萄酒与烈酒大赛银奖。\r\n');
INSERT INTO `y9_goods` VALUES ('76', '1', 'material', '美悦XO白兰地', '<p class=\"p1\">外观：琥珀色，略带金色；</p>\r\n<p class=\"p1\">香气：丝丝的鲜奶油芳香，及独特的法式炖蛋气息；</p>\r\n<p>口感：圆润，细腻而悠长。</p>', '18', '白兰地	干邑', '美悦XO', '0', '', '', '1', '0', null, '1413014027', '1413098681', '83', 'data/files/store_1/goods_91/small_201410121834519784.png', 'data/files/store_1/goods_91/small_201410121834515904.png', '1', '11', '18', '0', '0', '644.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '葡萄汁、水、焦糖色', '40', '6', '700', '法国', 'XO', '1270.00', '');
INSERT INTO `y9_goods` VALUES ('77', '1', 'material', '美悦1945白兰地', '<p class=\"p1\">外观：琥珀色，略带金色；</p>\r\n<p class=\"p1\">香气：馥郁的西梅果香，夹带橡木的诱人芳香；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：入口柔和香气平衡，余味绵延留香持久。</p>', '18', '白兰地	干邑', '美悦1945', '0', '', '', '1', '0', null, '1413014098', '1413098670', '84', 'data/files/store_1/goods_40/small_201410121834002725.png', 'data/files/store_1/goods_41/small_201410121834018846.png', '1', '11', '18', '0', '0', '943.00', '{\"3\":\"0.768\",\"2\":\"0.768\",\"1\":\"0.768\"}', '', '葡萄汁、水、焦糖色', '40', '7', '700', '法国', 'XO', '1817.00', '');
INSERT INTO `y9_goods` VALUES ('78', '1', 'material', '杜佩诱惑LUXUS干邑白兰地', '<p>外观：琥珀色；<br />香气：花卉的芬芳巧妙地与梨子、烤苹果的香气完美融合；<br />口感：香甜的口感为人们带来一个美妙的夜晚，余韵优雅而悠长。</p>', '18', '白兰地	干邑', '杜佩', '0', '', '', '1', '0', null, '1413014382', '1413079008', '85', 'data/files/store_1/goods_4/small_201410121756449586.jpg', null, '1', '11', '18', '0', '0', '852.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '白玉霓', '40', '10', '700', '法国-小香槟区、优林区', 'LUXUS', '1665.00', '2013年香港国际葡萄酒与烈酒大赛银奖。');
INSERT INTO `y9_goods` VALUES ('79', '1', 'material', '杜佩诱惑XO干邑白兰地', '<p>外观：琥珀色；<br />香气：充满香料的辛辣香气与干果、坚果的香气以及香草、焦糖等橡木桶陈年的香气。<br />口感：成熟甜蜜，余韵悠长而柔顺。</p>', '18', '白兰地	干邑', '杜佩', '0', '', '', '1', '0', null, '1413014496', '1413082016', '86', 'data/files/store_1/goods_13/small_201410121846531493.jpg', null, '1', '11', '18', '0', '0', '1500.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '白玉霓、鸽笼白、白福尔', '40', '25', '700', '法国-大香槟、小香槟、优林区', 'XO', '2015.00', '2010年国际葡萄酒与烈酒大赛银奖；2010年香港葡萄酒与烈酒大赛银奖；2011年国际葡萄酒与烈酒大赛“同类最佳奖”金奖；2011年国际烈酒挑战赛银奖；2012年国际葡萄酒与烈酒大赛金奖；2013年香港国际葡萄酒与烈酒大赛金奖；2013年国际葡萄酒与烈酒大赛铜奖。');
INSERT INTO `y9_goods` VALUES ('80', '1', 'material', '杜佩诱惑EXTRA优质香槟干邑白兰地', '<p>外观：琥珀色；<br />香气：充满了花香与肉桂、香草、蜂蜜以及雪茄盒等陈年的香气；<br />口感：干果、巧克力和轻微的胡椒味在口中完美平衡。余韵悠长而优雅，带有肉桂的辛香。</p>', '18', '白兰地	干邑', '杜佩', '0', '', '', '1', '0', null, '1413014605', '1413081859', '87', 'data/files/store_1/goods_56/small_201410121844169142.png', null, '1', '11', '18', '0', '0', '2544.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '白玉霓、鸽笼白、白福尔', '40', '30', '700', '白玉霓、鸽笼白、白福尔', 'EXTRA', '3968.00', '2009年国际葡萄酒与烈酒大赛“同类最佳奖”银奖。\r\n');
INSERT INTO `y9_goods` VALUES ('81', '1', 'material', '威雷德颗粒精选雪当妮甜白葡萄酒', '<p class=\"p1\">外观：金黄色；</p>\r\n<p class=\"p1\">香气：复杂浓郁的香气，充满干无花果、杏仁、蜂蜜等香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：甜味雅致，酸度适中。</p>', '14', '白葡萄酒	甜型', '威雷德', '0', '', '', '1', '0', null, '1413014669', '1413081765', '88', 'data/files/store_1/goods_151/small_201410121842314552.png', null, '1', '1', '14', '0', '0', '333.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '莎当妮', '13', '2005', '375', '奥地利-葡萄酒地区-伯萨尔（单一葡萄园）', '颗粒精选', '476.00', '');
INSERT INTO `y9_goods` VALUES ('82', '1', 'material', '杜佩奥古斯特干邑白兰地', '<p>外观：深琥珀色；<br />香气：充满了香料的辛香与雪松、香草、烟草以及雪茄盒等橡木桶带来的复杂香气；<br />口感：酒体浓烈辛辣，酒香浓郁复杂，余韵悠长。</p>\r\n<p>&nbsp;</p>', '18', '白兰地	干邑', '杜佩', '0', '', '', '0', '0', null, '1413014766', '1413083636', '89', '', null, '1', '11', '18', '0', '0', '21840.00', '{\"3\":\"0.833\",\"2\":\"0.833\",\"1\":\"0.833\"}', '', '白玉霓、白福尔', '40', '70', '700', '法国-大香槟区', '干邑', '28887.00', '');
INSERT INTO `y9_goods` VALUES ('88', '1', 'material', '米特鲁诺赤霞珠干红葡萄酒', '<p class=\"p1\">外观：深紫红色；</p>\r\n<p class=\"p1\">香气：混合了草本植物,香料以及红色水果的香气；</p>\r\n<p class=\"p1\">口感：口感柔滑，单宁厚重，回味悠长。</p>', '10', '红葡萄酒	干型', '米特鲁诺', '0', '', '', '1', '0', null, '1413015638', '1413079199', '95', 'data/files/store_1/goods_191/small_201410121759518007.jpg', null, '1', '4', '10', '0', '0', '94.00', '{\"3\":\"0.766\",\"2\":\"0.766\",\"1\":\"0.766\"}', '', '100%赤霞珠', '13', '2012', '750', '阿根廷-门多萨-迈普', '无', '319.00', '墨西哥Guía Palacio de Hierro 91分');
INSERT INTO `y9_goods` VALUES ('89', '1', 'material', '米特鲁诺马尔贝克珍藏干红葡萄酒', '<p class=\"p1\">外观：深红色，泛紫罗兰光泽；</p>\r\n<p class=\"p1\">香气：典型的诸如李子、樱桃等红色水果的香气，同时伴有橡木桶中陈酿赋予的香草气息；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：酒体强劲，单宁柔滑。</p>', '10', '红葡萄酒	干型', '米特鲁诺', '0', '', '', '1', '0', null, '1413015755', '1413081138', '96', 'data/files/store_1/goods_135/small_201410121832155828.jpg', null, '1', '4', '10', '0', '0', '169.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '100%马尔贝克', '14', '2012', '750', '阿根廷-门多萨-佩德里埃', '无', '506.00', '2012哥伦比亚葡萄酒博览会金奖；Vinotheque Wine Magazine，Japan June 2011 Edition 评分17分（20分制）;墨西哥Guía Palacio de Hierro评分94分');
INSERT INTO `y9_goods` VALUES ('90', '1', 'material', '米特鲁诺玛卡梅碧干红葡萄酒', '<p class=\"p1\">外观：石榴红色并带有蓝色光泽；</p>\r\n<p class=\"p1\">香气：完美的成熟红色水果香味。橡木桶陈酿 赋予的香草、烟熏、烘烤和辛辣等一系列香味；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：酒体厚重、单宁细腻、表现力强，结构复杂、余韵悠长。</p>', '10', '红葡萄酒	干型', '米特鲁诺', '0', '', '', '1', '0', null, '1413015922', '1413084248', '97', 'data/files/store_1/goods_122/small_201410121832024708.jpg', null, '1', '4', '10', '0', '0', '556.00', '{\"3\":\"0.769\",\"2\":\"0.769\",\"1\":\"0.769\"}', '', '100%马尔贝克', '14', '2008', '750', '阿根廷-门多萨-佩德里埃 ', '无', '1699.00', '美国2011年4月International Wine Review Magazine评分90分；2011年10月新加坡American Express Tower Club Wine Competition金奖;Anthony Gismondi – Canada (Argentina Tasting)91分; Oz Clark & Tim Atkins – 2012 UK Argentina Wine Tasting评为三大最佳阿根廷葡萄酒; 墨西哥 Guía Palacio de Hierro评分95分');
INSERT INTO `y9_goods` VALUES ('92', '1', 'material', '蓝色葡萄牙精选白葡萄酒（半干型）', '<p class=\"p1\">外观：浅柠檬黄；</p>\r\n<p class=\"p1\">香气：青苹果、菠萝等清新有活力的香气；</p>\r\n<p>&nbsp;</p>\r\n<p class=\"p1\">口感：清爽、酸度活泼，伴有青苹果、新鲜菠萝、矿物质和月桂叶的香气。</p>', '3', '白葡萄酒	半干型', '蓝色葡萄牙', '0', '', '', '1', '0', null, '1413016339', '1413084225', '99', 'data/files/store_1/goods_105/small_201410121838258682.jpg', null, '1', '1', '3', '0', '0', '98.00', '{\"3\":\"0.765\",\"2\":\"0.765\",\"1\":\"0.765\"}', ',葡萄牙,', '60%洛雷罗、20%塔佳迪拉、20%阿兰铎', '10', '2014', '750', '葡萄牙-绿酒', 'DOC（法定产区酒）', '226.00', '');
INSERT INTO `y9_goods` VALUES ('93', '1', 'material', '蓝色葡萄牙帕米拉干红葡萄酒', '<p class=\"p1\">外观：深宝石红色；</p>\r\n<p class=\"p1\">香&nbsp; 气：浓郁的红色水果香气，伴有些微橡木桶赋予的香草香气；</p>\r\n<p>口感：口感温暖、柔和、辛辣，成熟的覆盆子、蓝莓、黑樱桃和紫罗兰的香气。丝质顺滑，余味诱人。</p>', '10', '红葡萄酒	干型', '蓝色葡萄牙', '0', '', '', '1', '0', null, '1413016463', '1413108954', '100', 'data/files/store_1/goods_142/small_201410130215428248.jpg', 'data/files/store_1/goods_37/small_201410121807172266.png', '1', '4', '10', '0', '0', '129.00', '{\"3\":\"0.767\",\"2\":\"0.767\",\"1\":\"0.767\"}', ',葡萄牙,', '70%卡斯蒂莱欧、15%国产多瑞加、15%赤霞珠', '14', '2009', '750', '葡萄牙-帕米拉', 'DOC（法定产区酒）', '375.00', '');

-- ----------------------------
-- Table structure for `y9_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `y9_goods_attr`;
CREATE TABLE `y9_goods_attr` (
  `gattr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_value` varchar(255) NOT NULL DEFAULT '',
  `attr_id` int(10) unsigned DEFAULT NULL,
  `sort_order` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`gattr_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_goods_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_goods_image`
-- ----------------------------
DROP TABLE IF EXISTS `y9_goods_image`;
CREATE TABLE `y9_goods_image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `image_url` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `file_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_goods_image
-- ----------------------------
INSERT INTO `y9_goods_image` VALUES ('18', '52', 'data/files/store_1/goods_65/201410121724256127.png', 'data/files/store_1/goods_65/small_201410121724256127.png', '255', '19');
INSERT INTO `y9_goods_image` VALUES ('19', '52', 'data/files/store_1/goods_72/201410121724328042.png', 'data/files/store_1/goods_72/small_201410121724328042.png', '1', '20');
INSERT INTO `y9_goods_image` VALUES ('82', '48', 'data/files/store_1/goods_119/201410130228395391.png', 'data/files/store_1/goods_119/small_201410130228395391.png', '1', '83');
INSERT INTO `y9_goods_image` VALUES ('71', '57', 'data/files/store_1/goods_160/201410121922406641.png', 'data/files/store_1/goods_160/small_201410121922406641.png', '1', '72');
INSERT INTO `y9_goods_image` VALUES ('70', '58', 'data/files/store_1/goods_95/201410121921352776.png', 'data/files/store_1/goods_95/small_201410121921352776.png', '1', '71');
INSERT INTO `y9_goods_image` VALUES ('9', '6', 'data/files/store_1/goods_180/201410061859403909.png', 'data/files/store_1/goods_180/small_201410061859403909.png', '1', '9');
INSERT INTO `y9_goods_image` VALUES ('10', '6', 'data/files/store_1/goods_181/201410061859415669.jpg', 'data/files/store_1/goods_181/small_201410061859415669.jpg', '255', '10');
INSERT INTO `y9_goods_image` VALUES ('53', '38', 'data/files/store_1/goods_163/201410121826035747.png', 'data/files/store_1/goods_163/small_201410121826035747.png', '1', '54');
INSERT INTO `y9_goods_image` VALUES ('52', '87', 'data/files/store_1/goods_111/201410121825115783.jpg', 'data/files/store_1/goods_111/small_201410121825115783.jpg', '1', '53');
INSERT INTO `y9_goods_image` VALUES ('60', '83', 'data/files/store_1/goods_90/201410121834505768.jpg', 'data/files/store_1/goods_90/small_201410121834505768.jpg', '1', '61');
INSERT INTO `y9_goods_image` VALUES ('16', '53', 'data/files/store_1/goods_9/201410121653297135.png', 'data/files/store_1/goods_9/small_201410121653297135.png', '1', '17');
INSERT INTO `y9_goods_image` VALUES ('17', '53', 'data/files/store_1/goods_172/201410121656121117.png', 'data/files/store_1/goods_172/small_201410121656121117.png', '255', '18');
INSERT INTO `y9_goods_image` VALUES ('20', '94', 'data/files/store_1/goods_136/201410121728565719.png', 'data/files/store_1/goods_136/small_201410121728565719.png', '255', '21');
INSERT INTO `y9_goods_image` VALUES ('21', '94', 'data/files/store_1/goods_144/201410121729046034.png', 'data/files/store_1/goods_144/small_201410121729046034.png', '1', '22');
INSERT INTO `y9_goods_image` VALUES ('22', '86', 'data/files/store_1/goods_90/201410121734501512.jpg', 'data/files/store_1/goods_90/small_201410121734501512.jpg', '1', '23');
INSERT INTO `y9_goods_image` VALUES ('23', '86', 'data/files/store_1/goods_91/201410121734518487.jpg', 'data/files/store_1/goods_91/small_201410121734518487.jpg', '255', '24');
INSERT INTO `y9_goods_image` VALUES ('24', '86', 'data/files/store_1/goods_91/201410121734516831.jpg', 'data/files/store_1/goods_91/small_201410121734516831.jpg', '255', '25');
INSERT INTO `y9_goods_image` VALUES ('25', '16', 'data/files/store_1/goods_61/201410121737413071.png', 'data/files/store_1/goods_61/small_201410121737413071.png', '1', '26');
INSERT INTO `y9_goods_image` VALUES ('27', '84', 'data/files/store_1/goods_12/201410121740121476.jpg', 'data/files/store_1/goods_12/small_201410121740121476.jpg', '1', '28');
INSERT INTO `y9_goods_image` VALUES ('28', '84', 'data/files/store_1/goods_14/201410121740142672.jpg', 'data/files/store_1/goods_14/small_201410121740142672.jpg', '255', '29');
INSERT INTO `y9_goods_image` VALUES ('29', '84', 'data/files/store_1/goods_14/201410121740141442.jpg', 'data/files/store_1/goods_14/small_201410121740141442.jpg', '255', '30');
INSERT INTO `y9_goods_image` VALUES ('30', '71', 'data/files/store_1/goods_136/201410121745368096.jpg', 'data/files/store_1/goods_136/small_201410121745368096.jpg', '255', '31');
INSERT INTO `y9_goods_image` VALUES ('79', '71', 'data/files/store_1/goods_180/201410122333006736.jpg', 'data/files/store_1/goods_180/small_201410122333006736.jpg', '1', '80');
INSERT INTO `y9_goods_image` VALUES ('32', '16', 'data/files/store_1/goods_28/201410121753482068.png', 'data/files/store_1/goods_28/small_201410121753482068.png', '255', '33');
INSERT INTO `y9_goods_image` VALUES ('33', '75', 'data/files/store_1/goods_35/201410121753555893.jpg', 'data/files/store_1/goods_35/small_201410121753555893.jpg', '1', '34');
INSERT INTO `y9_goods_image` VALUES ('34', '78', 'data/files/store_1/goods_4/201410121756449586.jpg', 'data/files/store_1/goods_4/small_201410121756449586.jpg', '1', '35');
INSERT INTO `y9_goods_image` VALUES ('35', '37', 'data/files/store_1/goods_80/201410121758005041.png', 'data/files/store_1/goods_80/small_201410121758005041.png', '255', '36');
INSERT INTO `y9_goods_image` VALUES ('36', '37', 'data/files/store_1/goods_81/201410121758017641.png', 'data/files/store_1/goods_81/small_201410121758017641.png', '1', '37');
INSERT INTO `y9_goods_image` VALUES ('37', '33', 'data/files/store_1/goods_151/201410121759119494.png', 'data/files/store_1/goods_151/small_201410121759119494.png', '255', '38');
INSERT INTO `y9_goods_image` VALUES ('38', '33', 'data/files/store_1/goods_151/201410121759116188.png', 'data/files/store_1/goods_151/small_201410121759116188.png', '1', '39');
INSERT INTO `y9_goods_image` VALUES ('39', '88', 'data/files/store_1/goods_191/201410121759518007.jpg', 'data/files/store_1/goods_191/small_201410121759518007.jpg', '1', '40');
INSERT INTO `y9_goods_image` VALUES ('40', '17', 'data/files/store_1/goods_163/201410121802432032.png', 'data/files/store_1/goods_163/small_201410121802432032.png', '1', '41');
INSERT INTO `y9_goods_image` VALUES ('41', '60', 'data/files/store_1/goods_163/201410121802432054.jpg', 'data/files/store_1/goods_163/small_201410121802432054.jpg', '1', '42');
INSERT INTO `y9_goods_image` VALUES ('42', '17', 'data/files/store_1/goods_164/201410121802441468.png', 'data/files/store_1/goods_164/small_201410121802441468.png', '255', '43');
INSERT INTO `y9_goods_image` VALUES ('43', '43', 'data/files/store_1/goods_153/201410121805538025.png', 'data/files/store_1/goods_153/small_201410121805538025.png', '1', '44');
INSERT INTO `y9_goods_image` VALUES ('44', '43', 'data/files/store_1/goods_162/201410121806021681.png', 'data/files/store_1/goods_162/small_201410121806021681.png', '255', '45');
INSERT INTO `y9_goods_image` VALUES ('46', '93', 'data/files/store_1/goods_37/201410121807172266.png', 'data/files/store_1/goods_37/small_201410121807172266.png', '255', '47');
INSERT INTO `y9_goods_image` VALUES ('47', '56', 'data/files/store_1/goods_47/201410121810472946.png', 'data/files/store_1/goods_47/small_201410121810472946.png', '1', '48');
INSERT INTO `y9_goods_image` VALUES ('48', '56', 'data/files/store_1/goods_52/201410121810522508.png', 'data/files/store_1/goods_52/small_201410121810522508.png', '255', '49');
INSERT INTO `y9_goods_image` VALUES ('49', '35', 'data/files/store_1/goods_146/201410121822266193.png', 'data/files/store_1/goods_146/small_201410121822266193.png', '1', '50');
INSERT INTO `y9_goods_image` VALUES ('50', '35', 'data/files/store_1/goods_148/201410121822283024.png', 'data/files/store_1/goods_148/small_201410121822283024.png', '255', '51');
INSERT INTO `y9_goods_image` VALUES ('51', '59', 'data/files/store_1/goods_48/201410121824083635.jpg', 'data/files/store_1/goods_48/small_201410121824083635.jpg', '1', '52');
INSERT INTO `y9_goods_image` VALUES ('54', '38', 'data/files/store_1/goods_164/201410121826046474.png', 'data/files/store_1/goods_164/small_201410121826046474.png', '255', '55');
INSERT INTO `y9_goods_image` VALUES ('55', '45', 'data/files/store_1/goods_45/201410121830457791.jpg', 'data/files/store_1/goods_45/small_201410121830457791.jpg', '1', '56');
INSERT INTO `y9_goods_image` VALUES ('56', '90', 'data/files/store_1/goods_122/201410121832024708.jpg', 'data/files/store_1/goods_122/small_201410121832024708.jpg', '1', '57');
INSERT INTO `y9_goods_image` VALUES ('57', '89', 'data/files/store_1/goods_135/201410121832155828.jpg', 'data/files/store_1/goods_135/small_201410121832155828.jpg', '1', '58');
INSERT INTO `y9_goods_image` VALUES ('58', '77', 'data/files/store_1/goods_40/201410121834002725.png', 'data/files/store_1/goods_40/small_201410121834002725.png', '1', '59');
INSERT INTO `y9_goods_image` VALUES ('59', '77', 'data/files/store_1/goods_41/201410121834018846.png', 'data/files/store_1/goods_41/small_201410121834018846.png', '255', '60');
INSERT INTO `y9_goods_image` VALUES ('61', '76', 'data/files/store_1/goods_91/201410121834519784.png', 'data/files/store_1/goods_91/small_201410121834519784.png', '1', '62');
INSERT INTO `y9_goods_image` VALUES ('62', '76', 'data/files/store_1/goods_91/201410121834515904.png', 'data/files/store_1/goods_91/small_201410121834515904.png', '255', '63');
INSERT INTO `y9_goods_image` VALUES ('63', '85', 'data/files/store_1/goods_18/201410121836585167.jpg', 'data/files/store_1/goods_18/small_201410121836585167.jpg', '1', '64');
INSERT INTO `y9_goods_image` VALUES ('64', '92', 'data/files/store_1/goods_105/201410121838258682.jpg', 'data/files/store_1/goods_105/small_201410121838258682.jpg', '1', '65');
INSERT INTO `y9_goods_image` VALUES ('65', '81', 'data/files/store_1/goods_151/201410121842314552.png', 'data/files/store_1/goods_151/small_201410121842314552.png', '1', '66');
INSERT INTO `y9_goods_image` VALUES ('66', '80', 'data/files/store_1/goods_56/201410121844169142.png', 'data/files/store_1/goods_56/small_201410121844169142.png', '1', '67');
INSERT INTO `y9_goods_image` VALUES ('67', '79', 'data/files/store_1/goods_13/201410121846531493.jpg', 'data/files/store_1/goods_13/small_201410121846531493.jpg', '1', '68');
INSERT INTO `y9_goods_image` VALUES ('68', '73', 'data/files/store_1/goods_99/201410121848193939.png', 'data/files/store_1/goods_99/small_201410121848193939.png', '1', '69');
INSERT INTO `y9_goods_image` VALUES ('69', '70', 'data/files/store_1/goods_160/201410121849206608.png', 'data/files/store_1/goods_160/small_201410121849206608.png', '1', '70');
INSERT INTO `y9_goods_image` VALUES ('72', '54', 'data/files/store_1/goods_21/201410121923419464.png', 'data/files/store_1/goods_21/small_201410121923419464.png', '1', '73');
INSERT INTO `y9_goods_image` VALUES ('73', '51', 'data/files/store_1/goods_78/201410121924385265.png', 'data/files/store_1/goods_78/small_201410121924385265.png', '1', '74');
INSERT INTO `y9_goods_image` VALUES ('74', '50', 'data/files/store_1/goods_129/201410121925295151.png', 'data/files/store_1/goods_129/small_201410121925295151.png', '1', '75');
INSERT INTO `y9_goods_image` VALUES ('75', '49', 'data/files/store_1/goods_169/201410121926093071.png', 'data/files/store_1/goods_169/small_201410121926093071.png', '1', '76');
INSERT INTO `y9_goods_image` VALUES ('76', '47', 'data/files/store_1/goods_4/201410121926446803.png', 'data/files/store_1/goods_4/small_201410121926446803.png', '1', '77');
INSERT INTO `y9_goods_image` VALUES ('77', '65', 'data/files/store_1/goods_5/201410121950056692.png', 'data/files/store_1/goods_5/small_201410121950056692.png', '1', '78');
INSERT INTO `y9_goods_image` VALUES ('78', '68', 'data/files/store_1/goods_29/201410122330296703.jpg', 'data/files/store_1/goods_29/small_201410122330296703.jpg', '1', '79');
INSERT INTO `y9_goods_image` VALUES ('80', '93', 'data/files/store_1/goods_142/201410130215428248.jpg', 'data/files/store_1/goods_142/small_201410130215428248.jpg', '1', '81');
INSERT INTO `y9_goods_image` VALUES ('83', '46', 'data/files/store_1/goods_177/201410130229379100.png', 'data/files/store_1/goods_177/small_201410130229379100.png', '1', '84');
INSERT INTO `y9_goods_image` VALUES ('84', '25', 'data/files/store_1/goods_60/201410130231003572.png', 'data/files/store_1/goods_60/small_201410130231003572.png', '1', '85');
INSERT INTO `y9_goods_image` VALUES ('85', '39', 'data/files/store_1/goods_156/201410130232369505.png', 'data/files/store_1/goods_156/small_201410130232369505.png', '1', '86');
INSERT INTO `y9_goods_image` VALUES ('86', '31', 'data/files/store_1/goods_19/201410130233396741.png', 'data/files/store_1/goods_19/small_201410130233396741.png', '1', '87');
INSERT INTO `y9_goods_image` VALUES ('87', '36', 'data/files/store_1/goods_92/201410130234527593.png', 'data/files/store_1/goods_92/small_201410130234527593.png', '1', '88');
INSERT INTO `y9_goods_image` VALUES ('88', '8', 'data/files/store_1/goods_49/201410130237299435.png', 'data/files/store_1/goods_49/small_201410130237299435.png', '1', '89');

-- ----------------------------
-- Table structure for `y9_goods_qa`
-- ----------------------------
DROP TABLE IF EXISTS `y9_goods_qa`;
CREATE TABLE `y9_goods_qa` (
  `ques_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_content` varchar(255) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `email` varchar(60) NOT NULL,
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `reply_content` varchar(255) NOT NULL,
  `time_post` int(10) unsigned NOT NULL,
  `time_reply` int(10) unsigned NOT NULL,
  `if_new` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'goods',
  PRIMARY KEY (`ques_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`item_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_goods_qa
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_goods_spec`
-- ----------------------------
DROP TABLE IF EXISTS `y9_goods_spec`;
CREATE TABLE `y9_goods_spec` (
  `spec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spec_1` varchar(60) NOT NULL DEFAULT '',
  `spec_2` varchar(60) NOT NULL DEFAULT '',
  `color_rgb` varchar(7) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `stock` int(11) NOT NULL DEFAULT '0',
  `sku` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`spec_id`),
  KEY `goods_id` (`goods_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_goods_spec
-- ----------------------------
INSERT INTO `y9_goods_spec` VALUES ('17', '10', '', '', '', '82.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('16', '9', '', '', '', '62.00', '2626', '');
INSERT INTO `y9_goods_spec` VALUES ('15', '8', '', '', '', '1188.00', '241', '');
INSERT INTO `y9_goods_spec` VALUES ('9', '6', '', '', '', '203.00', '502', '');
INSERT INTO `y9_goods_spec` VALUES ('18', '11', '', '', '', '111.00', '2117', '');
INSERT INTO `y9_goods_spec` VALUES ('101', '94', '', '', '', '205.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('20', '13', '', '', '', '218.00', '3204', '');
INSERT INTO `y9_goods_spec` VALUES ('21', '14', '', '', '', '494.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('22', '15', '', '', '', '345.00', '88', '');
INSERT INTO `y9_goods_spec` VALUES ('23', '16', '', '', '', '293.00', '3405', '');
INSERT INTO `y9_goods_spec` VALUES ('24', '17', '', '', '', '442.00', '6167', '');
INSERT INTO `y9_goods_spec` VALUES ('25', '18', '', '', '', '598.00', '4294', '');
INSERT INTO `y9_goods_spec` VALUES ('26', '19', '', '', '', '455.00', '2589', '');
INSERT INTO `y9_goods_spec` VALUES ('27', '20', '', '', '', '676.00', '3820', '');
INSERT INTO `y9_goods_spec` VALUES ('28', '21', '', '', '', '546.00', '4873', '');
INSERT INTO `y9_goods_spec` VALUES ('29', '22', '', '', '', '715.00', '558', '');
INSERT INTO `y9_goods_spec` VALUES ('30', '23', '', '', '', '150.00', '112', '');
INSERT INTO `y9_goods_spec` VALUES ('31', '24', '', '', '', '280.00', '488', '');
INSERT INTO `y9_goods_spec` VALUES ('32', '25', '', '', '', '1272.00', '212', '');
INSERT INTO `y9_goods_spec` VALUES ('33', '26', '', '', '', '423.00', '224', '');
INSERT INTO `y9_goods_spec` VALUES ('34', '27', '', '', '', '140.00', '2040', '');
INSERT INTO `y9_goods_spec` VALUES ('35', '28', '', '', '', '189.00', '929', '');
INSERT INTO `y9_goods_spec` VALUES ('36', '29', '', '', '', '333.00', '700', '');
INSERT INTO `y9_goods_spec` VALUES ('37', '30', '', '', '', '88.00', '1491', '');
INSERT INTO `y9_goods_spec` VALUES ('38', '31', '', '', '', '828.00', '4257', '');
INSERT INTO `y9_goods_spec` VALUES ('39', '32', '', '', '', '88.00', '1783', '');
INSERT INTO `y9_goods_spec` VALUES ('40', '33', '', '', '', '298.00', '2270', '');
INSERT INTO `y9_goods_spec` VALUES ('41', '34', '', '', '', '1021.00', '265', '');
INSERT INTO `y9_goods_spec` VALUES ('42', '35', '', '', '', '1073.00', '297', '');
INSERT INTO `y9_goods_spec` VALUES ('43', '36', '', '', '', '864.00', '4167', '');
INSERT INTO `y9_goods_spec` VALUES ('44', '37', '', '', '', '1030.00', '145', '');
INSERT INTO `y9_goods_spec` VALUES ('45', '38', '', '', '', '868.00', '717', '');
INSERT INTO `y9_goods_spec` VALUES ('46', '39', '', '', '', '900.00', '633', '');
INSERT INTO `y9_goods_spec` VALUES ('47', '40', '', '', '', '1205.00', '1145', '');
INSERT INTO `y9_goods_spec` VALUES ('48', '41', '', '', '', '1105.00', '10000', '');
INSERT INTO `y9_goods_spec` VALUES ('49', '42', '', '', '', '4664.00', '21', '');
INSERT INTO `y9_goods_spec` VALUES ('50', '43', '', '', '', '111.00', '273', '');
INSERT INTO `y9_goods_spec` VALUES ('51', '44', '', '', '', '1131.00', '10000', '');
INSERT INTO `y9_goods_spec` VALUES ('52', '45', '', '', '', '103.00', '4', '');
INSERT INTO `y9_goods_spec` VALUES ('53', '46', '', '', '', '1664.00', '46377', '');
INSERT INTO `y9_goods_spec` VALUES ('54', '47', '', '', '', '103.00', '450', '');
INSERT INTO `y9_goods_spec` VALUES ('55', '48', '', '', '', '1586.00', '12474', '');
INSERT INTO `y9_goods_spec` VALUES ('56', '49', '', '', '', '111.00', '591', '');
INSERT INTO `y9_goods_spec` VALUES ('57', '50', '', '', '', '205.00', '264', '');
INSERT INTO `y9_goods_spec` VALUES ('58', '51', '', '', '', '215.00', '351', '');
INSERT INTO `y9_goods_spec` VALUES ('59', '52', '', '', '', '1664.00', '35364', '');
INSERT INTO `y9_goods_spec` VALUES ('60', '53', '', '', '', '1586.00', '1041', '');
INSERT INTO `y9_goods_spec` VALUES ('61', '54', '', '', '', '205.00', '417', '');
INSERT INTO `y9_goods_spec` VALUES ('63', '56', '', '', '', '153.00', '1', '');
INSERT INTO `y9_goods_spec` VALUES ('64', '57', '', '', '', '205.00', '451', '');
INSERT INTO `y9_goods_spec` VALUES ('65', '58', '', '', '', '215.00', '303', '');
INSERT INTO `y9_goods_spec` VALUES ('66', '59', '', '', '', '215.00', '554', '');
INSERT INTO `y9_goods_spec` VALUES ('67', '60', '', '', '', '510.00', '97', '');
INSERT INTO `y9_goods_spec` VALUES ('68', '61', '', '', '', '168.00', '477', '');
INSERT INTO `y9_goods_spec` VALUES ('69', '62', '', '', '', '228.00', '340', '');
INSERT INTO `y9_goods_spec` VALUES ('70', '63', '', '', '', '333.00', '491', '');
INSERT INTO `y9_goods_spec` VALUES ('71', '64', '', '', '', '426.00', '512', '');
INSERT INTO `y9_goods_spec` VALUES ('72', '65', '', '', '', '218.00', '3252', '');
INSERT INTO `y9_goods_spec` VALUES ('73', '66', '', '', '', '881.00', '326', '');
INSERT INTO `y9_goods_spec` VALUES ('90', '83', '', '', '', '355.00', '780', '');
INSERT INTO `y9_goods_spec` VALUES ('75', '68', '', '', '', '546.00', '86', '');
INSERT INTO `y9_goods_spec` VALUES ('93', '86', '', '', '', '436.00', '247', '');
INSERT INTO `y9_goods_spec` VALUES ('77', '70', '', '', '', '462.00', '780', '');
INSERT INTO `y9_goods_spec` VALUES ('78', '71', '', '', '', '798.00', '92', '');
INSERT INTO `y9_goods_spec` VALUES ('92', '85', '', '', '', '436.00', '1', '');
INSERT INTO `y9_goods_spec` VALUES ('80', '73', '', '', '', '306.00', '500', '');
INSERT INTO `y9_goods_spec` VALUES ('91', '84', '', '', '', '436.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('82', '75', '', '', '', '630.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('83', '76', '', '', '', '644.00', '410', '');
INSERT INTO `y9_goods_spec` VALUES ('84', '77', '', '', '', '943.00', '1938', '');
INSERT INTO `y9_goods_spec` VALUES ('85', '78', '', '', '', '852.00', '59', '');
INSERT INTO `y9_goods_spec` VALUES ('86', '79', '', '', '', '1500.00', '36', '');
INSERT INTO `y9_goods_spec` VALUES ('87', '80', '', '', '', '2544.00', '24', '');
INSERT INTO `y9_goods_spec` VALUES ('88', '81', '', '', '', '333.00', '380', '');
INSERT INTO `y9_goods_spec` VALUES ('89', '82', '', '', '', '21840.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('94', '87', '', '', '', '85.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('95', '88', '', '', '', '94.00', '3862', '');
INSERT INTO `y9_goods_spec` VALUES ('96', '89', '', '', '', '169.00', '1', '');
INSERT INTO `y9_goods_spec` VALUES ('97', '90', '', '', '', '556.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('99', '92', '', '', '', '98.00', '0', '');
INSERT INTO `y9_goods_spec` VALUES ('100', '93', '', '', '', '129.00', '0', '');

-- ----------------------------
-- Table structure for `y9_goods_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `y9_goods_statistics`;
CREATE TABLE `y9_goods_statistics` (
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `collects` int(10) unsigned NOT NULL DEFAULT '0',
  `carts` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_goods_statistics
-- ----------------------------
INSERT INTO `y9_goods_statistics` VALUES ('8', '57', '0', '6', '4', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('6', '137', '1', '23', '15', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('9', '35', '1', '1', '1', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('10', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('11', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('94', '32', '1', '4', '4', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('13', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('14', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('15', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('16', '11', '0', '3', '2', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('17', '4', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('18', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('19', '10', '0', '1', '1', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('20', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('21', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('22', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('23', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('24', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('25', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('26', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('27', '3', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('28', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('29', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('30', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('31', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('32', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('33', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('34', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('35', '1', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('36', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('37', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('38', '5', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('39', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('40', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('41', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('42', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('43', '1', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('44', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('45', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('46', '91', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('47', '5', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('48', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('49', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('50', '17', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('51', '1', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('52', '12', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('53', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('54', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('56', '5', '0', '1', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('57', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('58', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('59', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('60', '8', '0', '1', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('61', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('62', '3', '0', '1', '1', '1', '0');
INSERT INTO `y9_goods_statistics` VALUES ('63', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('64', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('65', '1', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('66', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('83', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('68', '11', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('86', '4', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('70', '5', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('71', '3', '0', '1', '1', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('85', '4', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('73', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('84', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('75', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('76', '7', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('77', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('78', '2', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('79', '1', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('80', '4', '0', '1', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('81', '0', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('82', '5', '1', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('87', '1', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('88', '5', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('89', '14', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('90', '13', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('92', '3', '0', '0', '0', '0', '0');
INSERT INTO `y9_goods_statistics` VALUES ('93', '7', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `y9_groupbuy`
-- ----------------------------
DROP TABLE IF EXISTS `y9_groupbuy`;
CREATE TABLE `y9_groupbuy` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL DEFAULT '',
  `group_desc` varchar(255) NOT NULL DEFAULT '',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spec_price` text NOT NULL,
  `min_quantity` smallint(5) unsigned NOT NULL DEFAULT '0',
  `max_per_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `goods_id` (`goods_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_groupbuy
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_groupbuy_log`
-- ----------------------------
DROP TABLE IF EXISTS `y9_groupbuy_log`;
CREATE TABLE `y9_groupbuy_log` (
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `quantity` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spec_quantity` text NOT NULL,
  `linkman` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_groupbuy_log
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_mail_queue`
-- ----------------------------
DROP TABLE IF EXISTS `y9_mail_queue`;
CREATE TABLE `y9_mail_queue` (
  `queue_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mail_to` varchar(150) NOT NULL DEFAULT '',
  `mail_encoding` varchar(50) NOT NULL DEFAULT '',
  `mail_subject` varchar(255) NOT NULL DEFAULT '',
  `mail_body` text NOT NULL,
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `err_num` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `lock_expiry` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`queue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_mail_queue
-- ----------------------------
INSERT INTO `y9_mail_queue` VALUES ('97', '', 'utf-8', '优酒库提醒:您的订单已生成', '<p>尊敬的15605922222:</p>\r\n<p style=\"padding-left: 30px;\">您在优酒库上下的订单已生成，订单号1428874517。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://y9.pkvip.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=44\">http://y9.pkvip.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=44</a></p>\r\n<p style=\"text-align: right;\">优酒库</p>\r\n<p style=\"text-align: right;\">2014-10-16 20:24</p>', '1', '1', '1413433446', '1413433480');
INSERT INTO `y9_mail_queue` VALUES ('98', 'Transient_1988@foxmail.com', 'utf-8', '优酒库提醒:您有一个新订单需要处理', '<p>尊敬的优酒库:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1428874517，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://y9.pkvip.cn/index.php?app=seller_order&amp;act=view&amp;order_id=44\">http://y9.pkvip.cn/index.php?app=seller_order&amp;act=view&amp;order_id=44</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://y9.pkvip.cn/index.php?app=seller_order\">http://y9.pkvip.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">优酒库</p>\r\n<p style=\"text-align: right;\">2014-10-16 20:24</p>', '1', '1', '1413433446', '1413433480');
INSERT INTO `y9_mail_queue` VALUES ('95', '', 'utf-8', '优酒库提醒:您的订单已生成', '<p>尊敬的15605922222:</p>\r\n<p style=\"padding-left: 30px;\">您在优酒库上下的订单已生成，订单号1428872167。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://y9.pkvip.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=43\">http://y9.pkvip.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=43</a></p>\r\n<p style=\"text-align: right;\">优酒库</p>\r\n<p style=\"text-align: right;\">2014-10-16 20:22</p>', '1', '2', '1413433370', '1413433480');
INSERT INTO `y9_mail_queue` VALUES ('96', 'Transient_1988@foxmail.com', 'utf-8', '优酒库提醒:您有一个新订单需要处理', '<p>尊敬的优酒库:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1428872167，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://y9.pkvip.cn/index.php?app=seller_order&amp;act=view&amp;order_id=43\">http://y9.pkvip.cn/index.php?app=seller_order&amp;act=view&amp;order_id=43</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://y9.pkvip.cn/index.php?app=seller_order\">http://y9.pkvip.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">优酒库</p>\r\n<p style=\"text-align: right;\">2014-10-16 20:22</p>', '1', '2', '1413433370', '1413433480');

-- ----------------------------
-- Table structure for `y9_member`
-- ----------------------------
DROP TABLE IF EXISTS `y9_member`;
CREATE TABLE `y9_member` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `real_name` varchar(60) DEFAULT NULL,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `phone_tel` varchar(60) DEFAULT NULL,
  `phone_mob` varchar(60) DEFAULT NULL,
  `im_qq` varchar(60) DEFAULT NULL,
  `im_msn` varchar(60) DEFAULT NULL,
  `im_skype` varchar(60) DEFAULT NULL,
  `im_yahoo` varchar(60) DEFAULT NULL,
  `im_aliww` varchar(60) DEFAULT NULL,
  `reg_time` int(10) unsigned DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `ugrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `portrait` varchar(255) DEFAULT NULL,
  `outer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `activation` varchar(60) DEFAULT NULL,
  `feed_config` text NOT NULL,
  `mg_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `outer_id` (`outer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_member
-- ----------------------------
INSERT INTO `y9_member` VALUES ('1', 'admin', 'Transient_1988@foxmail.com', '2aefc34200a294a3cc7db81b43a81873', '', '0', null, null, null, '', '', null, null, null, '1412473022', '1413267576', '121.207.164.30', '108', '0', '', '0', null, '', '3');
INSERT INTO `y9_member` VALUES ('2', '测试1', 'cs@qq.com', '4297f44b13955235245b2497399d7a93', null, '0', null, null, null, null, null, null, null, null, '1412473565', '1413081224', '27.154.209.83', '21', '0', null, '0', null, '', '2');
INSERT INTO `y9_member` VALUES ('3', 'dan8288749', '123123123@qq.com', '5f05b9a44a2ef4c619143b44fe5dc926', null, '0', null, null, null, null, null, null, null, null, '1412812418', '1413146574', '120.39.65.250', '80', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('4', '测试2', '123@qq.com', '4297f44b13955235245b2497399d7a93', '123', '0', null, null, null, '', '', null, null, null, '1412934984', null, null, '0', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('5', '15880219171', '123123@qq.com', '4297f44b13955235245b2497399d7a93', '', '0', null, null, null, '', '', null, null, null, '1412935119', null, null, '0', '0', null, '0', null, '', '3');
INSERT INTO `y9_member` VALUES ('6', '15880219173', '', '4297f44b13955235245b2497399d7a93', null, '0', null, null, null, null, null, null, null, null, '1413108630', '1413111770', '27.154.209.83', '6', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('7', '15880219172', '', '4297f44b13955235245b2497399d7a93', null, '0', null, null, null, null, null, null, null, null, '1413108876', '1413108876', '27.154.209.83', '1', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('8', '15880219174', '', '4297f44b13955235245b2497399d7a93', null, '0', null, null, null, null, null, null, null, null, '1413112678', '1413112678', '27.154.209.83', '1', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('9', '15880219175', '', '4297f44b13955235245b2497399d7a93', null, '0', null, null, null, null, null, null, null, null, '1413113245', '1413115875', '27.154.209.83', '2', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('10', '15880219179', '', '4297f44b13955235245b2497399d7a93', null, '0', null, null, null, null, null, null, null, null, '1413136552', '1413136552', '110.80.63.220', '1', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('11', '13860121919', '', '9308121b9556e8e9bd3caf3bf1267c57', null, '0', null, null, null, null, null, null, null, null, '1413138707', '1413157781', '222.178.231.91', '2', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('12', '18659298950', '', 'fa17f85c91125ebe136de0a5fdd47951', null, '0', null, null, null, null, null, null, null, null, '1413144075', '1413144178', '119.233.144.130', '2', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('13', '13695022517', '', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1413261304', '1413261304', '121.207.164.30', '1', '0', null, '0', null, '', '1');
INSERT INTO `y9_member` VALUES ('14', '15605922222', '', 'c776982154cbed8934bb8e6f113f5235', null, '0', null, null, null, null, null, null, null, null, '1413433260', '1413501973', '211.97.130.151', '2', '0', null, '0', null, '', '1');

-- ----------------------------
-- Table structure for `y9_message`
-- ----------------------------
DROP TABLE IF EXISTS `y9_message`;
CREATE TABLE `y9_message` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(10) unsigned NOT NULL DEFAULT '0',
  `to_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `from_id` (`from_id`),
  KEY `to_id` (`to_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_message
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_mgrade`
-- ----------------------------
DROP TABLE IF EXISTS `y9_mgrade`;
CREATE TABLE `y9_mgrade` (
  `mg_id` int(11) NOT NULL DEFAULT '0',
  `mg_name` char(10) DEFAULT '',
  `mg_order` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`mg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_mgrade
-- ----------------------------
INSERT INTO `y9_mgrade` VALUES ('1', '注册会员', '1');
INSERT INTO `y9_mgrade` VALUES ('2', '白银会员', '2');
INSERT INTO `y9_mgrade` VALUES ('3', '黄金会员', '3');

-- ----------------------------
-- Table structure for `y9_module`
-- ----------------------------
DROP TABLE IF EXISTS `y9_module`;
CREATE TABLE `y9_module` (
  `module_id` varchar(30) NOT NULL DEFAULT '',
  `module_name` varchar(100) NOT NULL DEFAULT '',
  `module_version` varchar(5) NOT NULL DEFAULT '',
  `module_desc` text NOT NULL,
  `module_config` text NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_module
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `y9_navigation`;
CREATE TABLE `y9_navigation` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `open_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_navigation
-- ----------------------------
INSERT INTO `y9_navigation` VALUES ('1', 'middle', '最新活动', 'index.php?app=article&amp;cate_id=4', '1', '1');
INSERT INTO `y9_navigation` VALUES ('2', 'middle', '官方店铺', 'index.php?app=store&id=1', '1', '0');
INSERT INTO `y9_navigation` VALUES ('3', 'header', '头部导航', 'http://www.baidu.com', '255', '1');

-- ----------------------------
-- Table structure for `y9_order`
-- ----------------------------
DROP TABLE IF EXISTS `y9_order`;
CREATE TABLE `y9_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT 'material',
  `extension` varchar(10) NOT NULL DEFAULT '',
  `seller_id` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_name` varchar(100) DEFAULT NULL,
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer_name` varchar(100) DEFAULT NULL,
  `buyer_email` varchar(60) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(10) unsigned DEFAULT NULL,
  `payment_name` varchar(100) DEFAULT NULL,
  `payment_code` varchar(20) NOT NULL DEFAULT '',
  `out_trade_sn` varchar(20) NOT NULL DEFAULT '',
  `pay_time` int(10) unsigned DEFAULT NULL,
  `pay_message` varchar(255) NOT NULL DEFAULT '',
  `ship_time` int(10) unsigned DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `finished_time` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `evaluation_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `evaluation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `anonymous` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `pay_alter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `order_sn` (`order_sn`,`seller_id`),
  KEY `seller_name` (`seller_name`),
  KEY `buyer_name` (`buyer_name`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_order
-- ----------------------------
INSERT INTO `y9_order` VALUES ('1', '1427828930', 'material', 'normal', '1', '优酒库', '2', '测试1', 'cs@qq.com', '11', '1412581293', null, null, '', '', null, '', null, null, '0', '2018.00', '0.00', '2018.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('2', '1428104621', 'material', 'normal', '1', '优酒库', '2', '测试1', 'cs@qq.com', '11', '1412839453', '2', '支付宝', 'alipay', '1428104621', null, '', null, null, '0', '16213.00', '0.00', '16213.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('3', '1428263259', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '40', '1412898218', null, null, '', '', '1412898254', '', '1412898261', '123456', '1412898276', '7628.00', '0.00', '7628.00', '1', '1412898346', '0', '测试', '0');
INSERT INTO `y9_order` VALUES ('4', '1428223536', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1412901592', null, null, '', '', null, '', null, null, '0', '2018.00', '0.00', '2018.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('5', '1428262460', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '40', '1412901758', '2', '支付宝', 'alipay', '1428262460', '1412901788', '', '1412901800', '12345', '1412902287', '5610.00', '0.00', '5610.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('6', '1428202472', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '20', '1412904985', null, null, '', '', '1412904996', '', null, null, '0', '5610.00', '0.00', '5610.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('7', '1428282318', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1412907403', null, null, '', '', null, '', null, null, '0', '6658.00', '0.00', '6658.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('8', '1428288894', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '0', '1412907489', null, null, '', '', null, '', null, null, '0', '16830.00', '0.00', '16830.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('9', '1428265292', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1412916732', null, null, '', '', null, '', null, null, '0', '5610.00', '0.00', '5610.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('10', '1428226314', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1412944293', null, null, '', '', null, '', null, null, '0', '18848.00', '0.00', '18848.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('11', '1428346376', 'material', 'normal', '1', '优酒库', '2', '测试1', 'cs@qq.com', '11', '1413009595', null, null, '', '', null, '', null, null, '0', '24037.00', '0.00', '24037.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('12', '1428437810', 'material', 'normal', '1', '优酒库', '2', '测试1', 'cs@qq.com', '11', '1413065713', null, null, '', '', null, '', null, null, '0', '6977.00', '0.00', '6977.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('13', '1428472193', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '40', '1413071866', null, null, '', '', '1413071917', '', '1413071922', '123456', '1413080926', '7441.51', '0.00', '7441.51', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('14', '1428409339', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '30', '1413074045', null, null, '', '', '1413082947', '', '1413082951', '123456', '0', '100.50', '0.00', '100.50', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('15', '1428418292', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '30', '1413074177', '3', '货到付款', 'cod', '', null, '', '1413074204', '5555', '0', '100.50', '0.00', '100.50', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('16', '1428444712', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '40', '1413081044', null, null, '', '', '1413081058', '', '1413081061', '123456', '1413082823', '5610.00', '0.00', '5610.00', '1', '1413116908', '0', '', '0');
INSERT INTO `y9_order` VALUES ('17', '1428485968', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413099026', null, null, '', '', null, '', null, null, '0', '2460.00', '0.00', '2460.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('18', '1428429927', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413099321', null, null, '', '', null, '', null, null, '0', '205.00', '0.00', '205.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('19', '1428475215', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413109303', null, null, '', '', null, '', null, null, '0', '1141.00', '0.00', '1141.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('20', '1428487086', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413109358', null, null, '', '', null, '', null, null, '0', '517.00', '0.00', '517.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('21', '1428476024', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413111036', null, null, '', '', null, '', null, null, '0', '158.00', '0.00', '158.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('22', '1428499714', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413111191', null, null, '', '', null, '', null, null, '0', '10890.00', '0.00', '10890.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('23', '1428496283', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413111676', null, null, '', '', null, '', null, null, '0', '990.00', '0.00', '990.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('24', '1428404402', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413111747', null, null, '', '', null, '', null, null, '0', '158.00', '0.00', '158.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('25', '1428478488', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413111777', null, null, '', '', null, '', null, null, '0', '158.00', '0.00', '158.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('26', '1428438627', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413111794', null, null, '', '', null, '', null, null, '0', '158.00', '0.00', '158.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('27', '1428488340', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413112089', null, null, '', '', null, '', null, null, '0', '158.00', '0.00', '158.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('28', '1428434039', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413112124', null, null, '', '', null, '', null, null, '0', '158.00', '0.00', '158.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('29', '1428491054', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413112246', null, null, '', '', null, '', null, null, '0', '225.00', '0.00', '225.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('30', '1428465909', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413112921', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('31', '1428446121', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413114073', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('32', '1428414517', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413117980', null, null, '', '', null, '', null, null, '0', '624.00', '0.00', '624.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('33', '1428451271', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413121280', null, null, '', '', null, '', null, null, '0', '1846.00', '0.00', '1846.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('34', '1428412129', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413122259', null, null, '', '', null, '', null, null, '0', '225.00', '0.00', '225.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('35', '1428424700', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413122552', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('36', '1428462550', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413122910', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('37', '1428450390', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413122976', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('38', '1428472048', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413123839', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('39', '1428432738', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413123892', null, null, '', '', null, '', null, null, '0', '990.00', '0.00', '990.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('40', '1428442806', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413124921', null, null, '', '', null, '', null, null, '0', '312.00', '0.00', '312.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('41', '1428433919', 'material', 'normal', '1', '优酒库', '3', 'dan8288749', '123123123@qq.com', '11', '1413126180', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('42', '1428581919', 'material', 'normal', '1', '优酒库', '11', '13860121919', '', '11', '1413138860', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('43', '1428872167', 'material', 'normal', '1', '优酒库', '14', '15605922222', '', '11', '1413433370', null, null, '', '', null, '', null, null, '0', '665.00', '0.00', '665.00', '0', '0', '0', '', '0');
INSERT INTO `y9_order` VALUES ('44', '1428874517', 'material', 'normal', '1', '优酒库', '14', '15605922222', '', '11', '1413433446', null, null, '', '', null, '', null, null, '0', '156.00', '0.00', '156.00', '0', '0', '0', '', '0');

-- ----------------------------
-- Table structure for `y9_order_extm`
-- ----------------------------
DROP TABLE IF EXISTS `y9_order_extm`;
CREATE TABLE `y9_order_extm` (
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `region_id` int(10) unsigned DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `phone_tel` varchar(60) DEFAULT NULL,
  `phone_mob` varchar(60) DEFAULT NULL,
  `shipping_id` int(10) unsigned DEFAULT NULL,
  `shipping_name` varchar(100) DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`order_id`),
  KEY `consignee` (`consignee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_order_extm
-- ----------------------------
INSERT INTO `y9_order_extm` VALUES ('1', '张三', '1', '中国', '福建省', '361000', '', '15252525252', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('2', '张三', '1', '中国', '福建省', '361000', '', '15252525252', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('3', '蛋啊', '1', '中国', '测试', '3333333', '888888', '15555555', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('4', '蛋啊', '1', '中国', '测试', '3333333', '888888', '15555555', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('5', '蛋啊', '1', '中国', '测试', '3333333', '888888', '15555555', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('6', '蛋啊', '1', '中国', '测试', '3333333', '888888', '15555555', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('7', '蛋啊', '1', '中国', '测试', '3333333', '888888', '15555555', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('8', '蛋啊', '1', '中国', '测试', '3333333', '888888', '15555555', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('9', 'fdfsfd', '1', '中国', '佛挡杀佛加了睡觉了空间', '123456', '12521315313', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('10', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('11', '张三', '1', '中国', '福建省', '361000', '', '15252525252', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('12', '张三', '1', '中国', '福建省', '361000', '', '15252525252', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('13', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('14', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '3', '物流', '0.00');
INSERT INTO `y9_order_extm` VALUES ('15', '测试', '3', '中国', '地址测试', '35222', '1588076511', '15880765053', '3', '物流', '0.00');
INSERT INTO `y9_order_extm` VALUES ('16', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('17', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('18', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('19', 'asdasd', '3', '中国', '厦门湖里区', '362246', '8288749', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('20', '菲菲', '3', '中国', '丰富双方的是粉丝发生地方的', '4534342', '2424234', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('21', '自从撒', '4', '中国	sa', '阿斯达斯的', '', '', '11111111', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('22', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('23', '菲菲', '3', '中国', '丰富双方的是粉丝发生地方的', '4534342', '2424234', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('24', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('25', '大苏打撒旦', '4', '中国	sa', '111', '1212112', '11112222', '1221212', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('26', '菲菲', '3', '中国', '丰富双方的是粉丝发生地方的', '4534342', '2424234', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('27', '菲菲', '3', '中国', '丰富双方的是粉丝发生地方的', '', '2424234', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('28', '菲菲', '3', '中国', '丰富双方的是粉丝发生地方的', '', '2424234', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('29', '菲菲', '3', '中国', '丰富双方的是粉丝发生地方的', '', '2424234', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('30', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '', '42345243543', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('31', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '423234', '42345243543', '', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('32', '范德萨', '1', '中国', '发生的发生过圣诞颂歌史蒂芬港水电费', '', '42345243543', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('33', 'asdasd', '3', '中国', '厦门湖里区', '', '8288749', '', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('34', '周建群', '3', '中国', '哈哈', '', '1211222', '1212121', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('35', 'zhoujiaqnun', '3', '中国', '测测', '', '1111111', '2121212121', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('36', '擦', '3', '中国', '1212121', '', '12121212', '2132131211', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('37', '12121', '3', '中国', '121212', '', '1211222', '2132131211', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('38', '11111111111', '3', '中国', '121212', '', '', '11111111', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('39', '周建群', '3', '中国', '厦门湖里区', '', '', '15880765056', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('40', 'ghbb', '3', '中国', '咯巨魔', '', '', '5688866', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('41', 'ggg', '3', '中国', '啦啦啦', '', '', '11155555', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('42', '杨成', '3', '中国', '厦门湖里区象屿大厦一层', '', '', '13860121919', '4', '存放至私人酒窖', '0.00');
INSERT INTO `y9_order_extm` VALUES ('43', '戚玮玮', '3', '中国', '福建省厦门市象屿保税区象屿大厦一层', '', '', '15605922222', '2', '自提', '0.00');
INSERT INTO `y9_order_extm` VALUES ('44', '戚玮玮', '3', '中国', '福建省厦门市象屿保税区象屿大厦一层', '', '', '15605922222', '2', '自提', '0.00');

-- ----------------------------
-- Table structure for `y9_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `y9_order_goods`;
CREATE TABLE `y9_order_goods` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL DEFAULT '',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `specification` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `goods_image` varchar(255) DEFAULT NULL,
  `evaluation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `credit_value` tinyint(1) NOT NULL DEFAULT '0',
  `is_valid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_order_goods
-- ----------------------------
INSERT INTO `y9_order_goods` VALUES ('1', '1', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '2018.00', '1', 'data/files/store_1/goods_17/small_201410061813378537.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('2', '2', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '2018.00', '1', 'data/files/store_1/goods_17/small_201410061813378537.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('3', '2', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '520.00', '14', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('4', '2', '4', '美人鱼传说干红葡萄酒', '7', '', '6915.00', '1', 'data/files/store_1/goods_60/small_201410061844202452.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('5', '3', '5', '雷曼雄狮珍藏干红葡萄酒', '8', '', '5610.00', '1', 'data/files/store_1/goods_53/small_201410061854137899.png', '3', '不错', '1', '1');
INSERT INTO `y9_order_goods` VALUES ('6', '3', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '2018.00', '1', 'data/files/store_1/goods_17/small_201410061813378537.png', '3', '送人的，客户很喜欢，比较上档次。', '1', '1');
INSERT INTO `y9_order_goods` VALUES ('7', '4', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '2018.00', '1', 'data/files/store_1/goods_17/small_201410061813378537.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('8', '5', '5', '雷曼雄狮珍藏干红葡萄酒', '8', '', '5610.00', '1', 'data/files/store_1/goods_53/small_201410061854137899.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('9', '6', '5', '雷曼雄狮珍藏干红葡萄酒', '8', '', '5610.00', '1', 'data/files/store_1/goods_53/small_201410061854137899.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('10', '7', '5', '雷曼雄狮珍藏干红葡萄酒', '8', '', '5610.00', '1', 'data/files/store_1/goods_53/small_201410061854137899.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('11', '7', '7', '如福庄园埃塔玛珍藏干红葡萄酒', '10', '', '528.00', '1', 'data/files/store_1/goods_161/small_201410061902416638.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('12', '7', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '520.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('13', '8', '5', '雷曼雄狮珍藏干红葡萄酒', '8', '', '5610.00', '3', 'data/files/store_1/goods_53/small_201410061854137899.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('14', '9', '5', '雷曼雄狮珍藏干红葡萄酒', '8', '', '5610.00', '1', 'data/files/store_1/goods_53/small_201410061854137899.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('15', '10', '5', '雷曼雄狮珍藏干红葡萄酒', '8', '', '5610.00', '3', 'data/files/store_1/goods_53/small_201410061854137899.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('16', '10', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '2018.00', '1', 'data/files/store_1/goods_17/small_201410061813378537.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('17', '11', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '12018.50', '2', 'data/files/store_1/goods_17/small_201410061813378537.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('18', '12', '9', '阿曼特雄狮干红葡萄酒', '16', '', '62.00', '1', 'data/system/default_goods_image.gif', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('19', '12', '4', '美人鱼传说干红葡萄酒', '7', '', '6915.00', '1', 'data/files/store_1/goods_60/small_201410061844202452.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('20', '13', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '100.50', '1', 'data/files/store_1/goods_93/small_201410120354531719.jpg', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('21', '13', '7', '如福庄园埃塔玛珍藏干红葡萄酒', '11', '年份:98 容量:2L', '198.01', '1', 'data/files/store_1/goods_161/small_201410061902416638.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('22', '13', '62', '爱普普里米蒂沃干红葡萄酒', '69', '', '228.00', '1', 'data/system/default_goods_image.gif', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('23', '13', '4', '美人鱼传说干红葡萄酒', '7', '', '6915.00', '1', 'data/files/store_1/goods_60/small_201410061844202452.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('24', '14', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '100.50', '1', 'data/files/store_1/goods_93/small_201410120354531719.jpg', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('25', '15', '2', '梅洛莎娜庄园至尊干红葡萄酒', '5', '', '100.50', '1', 'data/files/store_1/goods_93/small_201410120354531719.jpg', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('26', '16', '5', '雷曼雄狮珍藏干红葡萄酒', '8', '', '5610.00', '1', 'data/files/store_1/goods_53/small_201410061854139100.jpg', '3', '不错', '1', '1');
INSERT INTO `y9_order_goods` VALUES ('27', '17', '94', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '101', '', '205.00', '12', 'data/files/store_1/goods_136/small_201410121728565719.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('28', '18', '94', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '101', '', '205.00', '1', 'data/files/store_1/goods_144/small_201410121729046034.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('29', '19', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '4', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('30', '19', '3', '天使玫瑰桃红葡萄酒', '6', '', '517.00', '1', 'data/files/store_1/goods_111/small_201410061818316965.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('31', '20', '3', '天使玫瑰桃红葡萄酒', '6', '', '517.00', '1', 'data/files/store_1/goods_104/small_201410061818249480.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('32', '21', '94', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '101', '', '158.00', '1', 'data/files/store_1/goods_144/small_201410121729046034.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('33', '22', '8', '美人鱼酒庄正牌干红葡萄酒2007', '15', '', '990.00', '11', 'data/files/store_1/goods_49/small_201410130237299435.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('34', '23', '8', '美人鱼酒庄正牌干红葡萄酒2007', '15', '', '990.00', '1', 'data/files/store_1/goods_49/small_201410130237299435.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('35', '24', '94', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '101', '', '158.00', '1', 'data/files/store_1/goods_144/small_201410121729046034.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('36', '25', '94', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '101', '', '158.00', '1', 'data/files/store_1/goods_144/small_201410121729046034.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('37', '26', '94', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '101', '', '158.00', '1', 'data/files/store_1/goods_144/small_201410121729046034.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('38', '27', '94', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '101', '', '158.00', '1', 'data/files/store_1/goods_144/small_201410121729046034.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('39', '28', '94', '梅洛莎娜庄园至尊干红葡萄酒（金标）', '101', '', '158.00', '1', 'data/files/store_1/goods_144/small_201410121729046034.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('40', '29', '16', '奥特洛酒庄干红葡萄酒2010', '23', '', '225.00', '1', 'data/files/store_1/goods_61/small_201410121737413071.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('41', '30', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('42', '31', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('43', '32', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '4', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('44', '33', '8', '美人鱼酒庄正牌干红葡萄酒2007', '15', '', '990.00', '1', 'data/files/store_1/goods_49/small_201410130237299435.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('45', '33', '19', '蒙特大厦庄园干红葡萄酒2008', '26', '', '350.00', '2', 'data/system/default_goods_image.gif', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('46', '33', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('47', '34', '16', '奥特洛酒庄干红葡萄酒2010', '23', '', '225.00', '1', 'data/files/store_1/goods_61/small_201410121737413071.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('48', '35', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('49', '36', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('50', '37', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('51', '38', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('52', '39', '8', '美人鱼酒庄正牌干红葡萄酒2007', '15', '', '990.00', '1', 'data/files/store_1/goods_49/small_201410130237299435.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('53', '40', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '2', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('54', '41', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('55', '42', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('56', '43', '71', '多美多16年纯麦威士忌', '78', '', '665.00', '1', 'data/files/store_1/goods_180/small_201410122333006736.jpg', '0', '', '0', '1');
INSERT INTO `y9_order_goods` VALUES ('57', '44', '6', '蓝色葡萄牙珍藏干红葡萄酒', '9', '', '156.00', '1', 'data/files/store_1/goods_180/small_201410061859403909.png', '0', '', '0', '1');

-- ----------------------------
-- Table structure for `y9_order_log`
-- ----------------------------
DROP TABLE IF EXISTS `y9_order_log`;
CREATE TABLE `y9_order_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(60) NOT NULL DEFAULT '',
  `order_status` varchar(60) NOT NULL DEFAULT '',
  `changed_status` varchar(60) NOT NULL DEFAULT '',
  `remark` varchar(255) DEFAULT NULL,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_order_log
-- ----------------------------
INSERT INTO `y9_order_log` VALUES ('1', '3', 'admin', '待付款', '待发货', '', '1412898254');
INSERT INTO `y9_order_log` VALUES ('2', '3', 'admin', '待发货', '已发货', '', '1412898261');
INSERT INTO `y9_order_log` VALUES ('3', '3', 'dan8288749', '已发货', '已完成', '买家确认收货', '1412898276');
INSERT INTO `y9_order_log` VALUES ('4', '5', 'admin', '待付款', '待发货', '', '1412901788');
INSERT INTO `y9_order_log` VALUES ('5', '5', 'admin', '待发货', '已发货', '', '1412901800');
INSERT INTO `y9_order_log` VALUES ('6', '5', 'dan8288749', '已发货', '已完成', '买家确认收货', '1412902287');
INSERT INTO `y9_order_log` VALUES ('7', '6', 'admin', '待付款', '待发货', '', '1412904996');
INSERT INTO `y9_order_log` VALUES ('8', '8', 'dan8288749', '待付款', '已取消', '其他原因', '1412917405');
INSERT INTO `y9_order_log` VALUES ('9', '13', 'admin', '待付款', '待发货', '', '1413071917');
INSERT INTO `y9_order_log` VALUES ('10', '13', 'admin', '待发货', '已发货', '', '1413071922');
INSERT INTO `y9_order_log` VALUES ('11', '15', 'admin', '已提交', '待发货', '', '1413074197');
INSERT INTO `y9_order_log` VALUES ('12', '15', 'admin', '待发货', '已发货', '', '1413074204');
INSERT INTO `y9_order_log` VALUES ('13', '13', 'dan8288749', '已发货', '已完成', '买家确认收货', '1413080926');
INSERT INTO `y9_order_log` VALUES ('14', '16', 'admin', '待付款', '待发货', '', '1413081058');
INSERT INTO `y9_order_log` VALUES ('15', '16', 'admin', '待发货', '已发货', '', '1413081061');
INSERT INTO `y9_order_log` VALUES ('16', '16', 'dan8288749', '已发货', '已完成', '买家确认收货', '1413082823');
INSERT INTO `y9_order_log` VALUES ('17', '14', 'admin', '待付款', '待发货', '', '1413082947');
INSERT INTO `y9_order_log` VALUES ('18', '14', 'admin', '待发货', '已发货', '', '1413082951');

-- ----------------------------
-- Table structure for `y9_pageview`
-- ----------------------------
DROP TABLE IF EXISTS `y9_pageview`;
CREATE TABLE `y9_pageview` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_date` date NOT NULL DEFAULT '0000-00-00',
  `view_times` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`rec_id`),
  UNIQUE KEY `storedate` (`store_id`,`view_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_pageview
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_partner`
-- ----------------------------
DROP TABLE IF EXISTS `y9_partner`;
CREATE TABLE `y9_partner` (
  `partner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) DEFAULT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`partner_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_partner
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_payment`
-- ----------------------------
DROP TABLE IF EXISTS `y9_payment`;
CREATE TABLE `y9_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_code` varchar(20) NOT NULL DEFAULT '',
  `payment_name` varchar(100) NOT NULL DEFAULT '',
  `payment_desc` varchar(255) DEFAULT NULL,
  `config` text,
  `is_online` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`payment_id`),
  KEY `store_id` (`store_id`),
  KEY `payment_code` (`payment_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_payment
-- ----------------------------
INSERT INTO `y9_payment` VALUES ('1', '2', 'alipay', '支付宝', '', 'a:5:{s:14:\"alipay_account\";s:26:\"Transient_1988@foxmail.com\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:14:\"alipay_service\";s:21:\"trade_create_by_buyer\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `y9_payment` VALUES ('2', '1', 'alipay', '支付宝', '', 'a:5:{s:14:\"alipay_account\";s:14:\"1227456@qq.com\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:14:\"alipay_service\";s:21:\"trade_create_by_buyer\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `y9_payment` VALUES ('3', '1', 'cod', '货到付款', '', '', '0', '1', '0');

-- ----------------------------
-- Table structure for `y9_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `y9_privilege`;
CREATE TABLE `y9_privilege` (
  `priv_code` varchar(20) NOT NULL DEFAULT '',
  `priv_name` varchar(60) NOT NULL DEFAULT '',
  `parent_code` varchar(20) DEFAULT NULL,
  `owner` varchar(10) NOT NULL DEFAULT 'mall',
  PRIMARY KEY (`priv_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `y9_recommend`;
CREATE TABLE `y9_recommend` (
  `recom_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recom_name` varchar(100) NOT NULL DEFAULT '',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`recom_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_recommend
-- ----------------------------
INSERT INTO `y9_recommend` VALUES ('1', '销量最高', '0');

-- ----------------------------
-- Table structure for `y9_recommended_goods`
-- ----------------------------
DROP TABLE IF EXISTS `y9_recommended_goods`;
CREATE TABLE `y9_recommended_goods` (
  `recom_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`recom_id`,`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_recommended_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_region`
-- ----------------------------
DROP TABLE IF EXISTS `y9_region`;
CREATE TABLE `y9_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `region_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_region
-- ----------------------------
INSERT INTO `y9_region` VALUES ('3', '中国', '0', '255');

-- ----------------------------
-- Table structure for `y9_scategory`
-- ----------------------------
DROP TABLE IF EXISTS `y9_scategory`;
CREATE TABLE `y9_scategory` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`cate_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_scategory
-- ----------------------------
INSERT INTO `y9_scategory` VALUES ('1', '官方店', '0', '255');

-- ----------------------------
-- Table structure for `y9_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `y9_sessions`;
CREATE TABLE `y9_sessions` (
  `sesskey` char(32) NOT NULL DEFAULT '',
  `expiry` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `adminid` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `data` char(255) NOT NULL DEFAULT '',
  `is_overflow` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_sessions
-- ----------------------------
INSERT INTO `y9_sessions` VALUES ('d9cfd46db1fbc18a0e0c13188da10f57', '1413518159', '0', '0', '120.39.65.192', '', '0');
INSERT INTO `y9_sessions` VALUES ('7d6b29e3c95b7a9b525d8845fff8e996', '1413517703', '0', '0', '121.207.164.30', '', '0');
INSERT INTO `y9_sessions` VALUES ('b83713c265a91dce94cd4205bc14f715', '1413517652', '0', '0', '121.207.164.30', '', '0');
INSERT INTO `y9_sessions` VALUES ('59a4478067cee6898b3b8e6f8fb4da07', '1413556330', '0', '0', '183.136.190.40', '', '0');
INSERT INTO `y9_sessions` VALUES ('349d68202639eddde4451d2527a68596', '1413577360', '0', '0', '110.80.15.50', '', '0');
INSERT INTO `y9_sessions` VALUES ('e7d914616248fb059e7faeb02e5c1bce', '1413577369', '0', '0', '220.181.132.215', '', '0');
INSERT INTO `y9_sessions` VALUES ('9f85e08fd3716a21f3e1d1eaf5c4715f', '1413577382', '0', '0', '101.199.112.51', '', '0');
INSERT INTO `y9_sessions` VALUES ('261bf0062e202ee13946fd6559177b55', '1413582229', '0', '0', '220.181.132.215', '', '0');
INSERT INTO `y9_sessions` VALUES ('aab55a6f783900b34fd94d2b816e34e2', '1413582247', '0', '0', '106.120.160.119', '', '0');
INSERT INTO `y9_sessions` VALUES ('13639e834ce01016f81f82df7d3b1738', '1413582298', '0', '0', '101.199.112.53', '', '0');
INSERT INTO `y9_sessions` VALUES ('f3c1c3c303129eb3545fed026d1ca671', '1413584837', '0', '0', '180.153.201.212', '', '0');
INSERT INTO `y9_sessions` VALUES ('e229958e580d3356ab0b2cd85d90ef25', '1413586558', '0', '0', '180.153.201.64', '', '0');
INSERT INTO `y9_sessions` VALUES ('2cc5f6c782f211b72bc70133efb0565a', '1413585064', '0', '0', '121.207.164.30', '', '0');
INSERT INTO `y9_sessions` VALUES ('20d39dbdcb2874e1f6b354551ee40bd3', '1413587633', '0', '0', '163.177.69.37', '', '0');
INSERT INTO `y9_sessions` VALUES ('26e947919ab8534e92b1ad223891ba7c', '1413587633', '0', '0', '14.17.18.152', '', '0');
INSERT INTO `y9_sessions` VALUES ('ebd06d2ab9a8b96a7a62b1febaf90c73', '1413587633', '0', '0', '163.177.69.37', '', '0');
INSERT INTO `y9_sessions` VALUES ('1107bc58a787e2e2151e62488d77718f', '1413586944', '0', '0', '180.153.201.64', '', '0');
INSERT INTO `y9_sessions` VALUES ('bf1758066e27b15629dd7eb5e58b96fe', '1413587633', '0', '0', '14.17.18.152', '', '0');
INSERT INTO `y9_sessions` VALUES ('5ffd951ff16a21890a97e2a4ef3ff3f1', '1413518002', '0', '0', '180.153.206.29', '', '0');

-- ----------------------------
-- Table structure for `y9_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `y9_sessions_data`;
CREATE TABLE `y9_sessions_data` (
  `sesskey` varchar(32) NOT NULL DEFAULT '',
  `expiry` int(11) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_sessions_data
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_sgrade`
-- ----------------------------
DROP TABLE IF EXISTS `y9_sgrade`;
CREATE TABLE `y9_sgrade` (
  `grade_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(60) NOT NULL DEFAULT '',
  `goods_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `space_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `skin_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `charge` varchar(100) NOT NULL DEFAULT '',
  `need_confirm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `functions` varchar(255) DEFAULT NULL,
  `skins` text NOT NULL,
  `sort_order` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`grade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_sgrade
-- ----------------------------
INSERT INTO `y9_sgrade` VALUES ('1', '系统默认', '5', '2', '2', '100元/年', '0', '测试用户请选择“默认等级”，可以立即开通。', null, 'default|style3,default|default', '255');
INSERT INTO `y9_sgrade` VALUES ('2', '官方店', '0', '0', '0', '', '1', '', 'editor_multimedia,coupon,groupbuy', '', '255');

-- ----------------------------
-- Table structure for `y9_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `y9_shipping`;
CREATE TABLE `y9_shipping` (
  `shipping_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_name` varchar(100) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) DEFAULT NULL,
  `first_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `step_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cod_regions` text,
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`shipping_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_shipping
-- ----------------------------
INSERT INTO `y9_shipping` VALUES ('1', '2', '顺丰', '', '1.00', '0.00', null, '1', '255');
INSERT INTO `y9_shipping` VALUES ('2', '1', '自提', '', '0.00', '0.00', null, '1', '255');
INSERT INTO `y9_shipping` VALUES ('3', '1', '物流', '', '0.00', '0.00', 'a:1:{i:3;s:6:\"中国\";}', '1', '255');
INSERT INTO `y9_shipping` VALUES ('4', '1', '存放至私人酒窖', '', '0.00', '0.00', null, '1', '255');

-- ----------------------------
-- Table structure for `y9_store`
-- ----------------------------
DROP TABLE IF EXISTS `y9_store`;
CREATE TABLE `y9_store` (
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_name` varchar(100) NOT NULL DEFAULT '',
  `owner_name` varchar(60) NOT NULL DEFAULT '',
  `owner_card` varchar(60) NOT NULL DEFAULT '',
  `region_id` int(10) unsigned DEFAULT NULL,
  `region_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `sgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `apply_remark` varchar(255) NOT NULL DEFAULT '',
  `credit_value` int(10) NOT NULL DEFAULT '0',
  `praise_rate` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `domain` varchar(60) DEFAULT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `close_reason` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned DEFAULT NULL,
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `certification` varchar(255) DEFAULT NULL,
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recommended` tinyint(4) NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `store_banner` varchar(255) DEFAULT NULL,
  `store_logo` varchar(255) DEFAULT NULL,
  `description` text,
  `image_1` varchar(255) NOT NULL DEFAULT '',
  `image_2` varchar(255) NOT NULL DEFAULT '',
  `image_3` varchar(255) NOT NULL DEFAULT '',
  `im_qq` varchar(60) NOT NULL DEFAULT '',
  `im_ww` varchar(60) NOT NULL DEFAULT '',
  `im_msn` varchar(60) NOT NULL DEFAULT '',
  `enable_groupbuy` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_radar` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`store_id`),
  KEY `store_name` (`store_name`),
  KEY `owner_name` (`owner_name`),
  KEY `region_id` (`region_id`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_store
-- ----------------------------
INSERT INTO `y9_store` VALUES ('2', '测试1的店铺', '测试1', '350426198808300017', '1', '中国', '', '', '', '1', '', '0', '0.00', '', '1', '', '1412473748', '0', '', '2', '0', '', null, null, null, '', '', '', '', '', '', '0', '1');
INSERT INTO `y9_store` VALUES ('1', '优酒库', '优酒库', '', '1', '中国', '', '', '15880219179', '2', '', '3', '100.00', '', '1', '', '1412474115', '0', 'autonym,material', '1', '1', 'default|style3', 'data/files/store_1/other/store_banner.jpg', null, '', '', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `y9_uploaded_file`
-- ----------------------------
DROP TABLE IF EXISTS `y9_uploaded_file`;
CREATE TABLE `y9_uploaded_file` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `file_type` varchar(60) NOT NULL DEFAULT '',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `file_path` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `belong` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_uploaded_file
-- ----------------------------
INSERT INTO `y9_uploaded_file` VALUES ('19', '1', 'image/png', '923121', 'wine2_label.png', 'data/files/store_1/goods_65/201410121724256127.png', '1413077065', '2', '52');
INSERT INTO `y9_uploaded_file` VALUES ('20', '1', 'image/png', '233755', 'wine2.png', 'data/files/store_1/goods_72/201410121724328042.png', '1413077072', '2', '52');
INSERT INTO `y9_uploaded_file` VALUES ('83', '1', 'image/png', '47099', '金色美人鱼干红2007.png', 'data/files/store_1/goods_119/201410130228395391.png', '1413109719', '2', '48');
INSERT INTO `y9_uploaded_file` VALUES ('72', '1', 'image/png', '30737', '克鲁诺西拉珍藏干红葡萄酒.png', 'data/files/store_1/goods_160/201410121922406641.png', '1413084160', '2', '57');
INSERT INTO `y9_uploaded_file` VALUES ('71', '1', 'image/png', '34258', '克鲁诺长相思珍藏干白葡萄酒.png', 'data/files/store_1/goods_95/201410121921352776.png', '1413084095', '2', '58');
INSERT INTO `y9_uploaded_file` VALUES ('9', '1', 'image/png', '170666', 'wine14.png', 'data/files/store_1/goods_180/201410061859403909.png', '1412564380', '2', '6');
INSERT INTO `y9_uploaded_file` VALUES ('10', '1', 'image/jpeg', '54772', 'wine14_label.jpg', 'data/files/store_1/goods_181/201410061859415669.jpg', '1412564381', '2', '6');
INSERT INTO `y9_uploaded_file` VALUES ('54', '1', 'image/png', '182779', '如福庄园埃塔玛珍藏干红葡萄酒.png', 'data/files/store_1/goods_163/201410121826035747.png', '1413080763', '2', '38');
INSERT INTO `y9_uploaded_file` VALUES ('53', '1', 'image/jpeg', '27229', '1.jpg', 'data/files/store_1/goods_111/201410121825115783.jpg', '1413080711', '2', '87');
INSERT INTO `y9_uploaded_file` VALUES ('61', '1', 'image/jpeg', '24741', '未标题-1.jpg', 'data/files/store_1/goods_90/201410121834505768.jpg', '1413081290', '2', '83');
INSERT INTO `y9_uploaded_file` VALUES ('17', '1', 'image/png', '233755', 'wine2.png', 'data/files/store_1/goods_9/201410121653297135.png', '1413075209', '2', '53');
INSERT INTO `y9_uploaded_file` VALUES ('18', '1', 'image/png', '923121', 'wine2_label.png', 'data/files/store_1/goods_172/201410121656121117.png', '1413075372', '2', '53');
INSERT INTO `y9_uploaded_file` VALUES ('21', '1', 'image/png', '656340', '梅洛莎娜庄园至尊干红葡萄酒酒标.png', 'data/files/store_1/goods_136/201410121728565719.png', '1413077336', '2', '94');
INSERT INTO `y9_uploaded_file` VALUES ('22', '1', 'image/png', '213516', '梅洛莎娜庄园至尊干红葡萄酒金标.png', 'data/files/store_1/goods_144/201410121729046034.png', '1413077344', '2', '94');
INSERT INTO `y9_uploaded_file` VALUES ('23', '1', 'image/jpeg', '24692', '1.jpg', 'data/files/store_1/goods_90/201410121734501512.jpg', '1413077690', '2', '86');
INSERT INTO `y9_uploaded_file` VALUES ('24', '1', 'image/jpeg', '41961', '2.jpg', 'data/files/store_1/goods_91/201410121734518487.jpg', '1413077691', '2', '86');
INSERT INTO `y9_uploaded_file` VALUES ('25', '1', 'image/jpeg', '43170', '3.jpg', 'data/files/store_1/goods_91/201410121734516831.jpg', '1413077691', '2', '86');
INSERT INTO `y9_uploaded_file` VALUES ('26', '1', 'image/png', '188631', '奥特洛酒庄干红葡萄酒.png', 'data/files/store_1/goods_61/201410121737413071.png', '1413077861', '2', '16');
INSERT INTO `y9_uploaded_file` VALUES ('28', '1', 'image/jpeg', '24869', '1.jpg', 'data/files/store_1/goods_12/201410121740121476.jpg', '1413078012', '2', '84');
INSERT INTO `y9_uploaded_file` VALUES ('29', '1', 'image/jpeg', '39671', '2.jpg', 'data/files/store_1/goods_14/201410121740142672.jpg', '1413078014', '2', '84');
INSERT INTO `y9_uploaded_file` VALUES ('30', '1', 'image/jpeg', '42763', '3.jpg', 'data/files/store_1/goods_14/201410121740141442.jpg', '1413078014', '2', '84');
INSERT INTO `y9_uploaded_file` VALUES ('31', '1', 'image/jpeg', '40065', '1.jpg', 'data/files/store_1/goods_136/201410121745368096.jpg', '1413078336', '2', '71');
INSERT INTO `y9_uploaded_file` VALUES ('80', '1', 'image/jpeg', '23841', '未标题-2.jpg', 'data/files/store_1/goods_180/201410122333006736.jpg', '1413099180', '2', '71');
INSERT INTO `y9_uploaded_file` VALUES ('33', '1', 'image/png', '475217', '奥特洛酒庄干红葡萄酒酒标.png', 'data/files/store_1/goods_28/201410121753482068.png', '1413078828', '2', '16');
INSERT INTO `y9_uploaded_file` VALUES ('34', '1', 'image/jpeg', '27284', '1.jpg', 'data/files/store_1/goods_35/201410121753555893.jpg', '1413078835', '2', '75');
INSERT INTO `y9_uploaded_file` VALUES ('35', '1', 'image/jpeg', '27962', '1.jpg', 'data/files/store_1/goods_4/201410121756449586.jpg', '1413079004', '2', '78');
INSERT INTO `y9_uploaded_file` VALUES ('36', '1', 'image/png', '927810', '埃斯塔卡18个月酒标.png', 'data/files/store_1/goods_80/201410121758005041.png', '1413079080', '2', '37');
INSERT INTO `y9_uploaded_file` VALUES ('37', '1', 'image/png', '129209', '埃斯塔卡18个月瓶身.png', 'data/files/store_1/goods_81/201410121758017641.png', '1413079081', '2', '37');
INSERT INTO `y9_uploaded_file` VALUES ('38', '1', 'image/png', '927810', '埃斯塔卡18个月酒标.png', 'data/files/store_1/goods_151/201410121759119494.png', '1413079151', '2', '33');
INSERT INTO `y9_uploaded_file` VALUES ('39', '1', 'image/png', '129209', '埃斯塔卡18个月瓶身.png', 'data/files/store_1/goods_151/201410121759116188.png', '1413079151', '2', '33');
INSERT INTO `y9_uploaded_file` VALUES ('40', '1', 'image/jpeg', '25127', '1.jpg', 'data/files/store_1/goods_191/201410121759518007.jpg', '1413079191', '2', '88');
INSERT INTO `y9_uploaded_file` VALUES ('41', '1', 'image/png', '207377', '宝诺.png', 'data/files/store_1/goods_163/201410121802432032.png', '1413079363', '2', '17');
INSERT INTO `y9_uploaded_file` VALUES ('42', '1', 'image/jpeg', '24495', '1.jpg', 'data/files/store_1/goods_163/201410121802432054.jpg', '1413079363', '2', '60');
INSERT INTO `y9_uploaded_file` VALUES ('43', '1', 'image/png', '635173', '宝诺瓶身.png', 'data/files/store_1/goods_164/201410121802441468.png', '1413079364', '2', '17');
INSERT INTO `y9_uploaded_file` VALUES ('44', '1', 'image/png', '177579', '克鲁诺佳美娜.png', 'data/files/store_1/goods_153/201410121805538025.png', '1413079553', '2', '43');
INSERT INTO `y9_uploaded_file` VALUES ('45', '1', 'image/png', '614656', '克鲁诺佳美娜酒标.png', 'data/files/store_1/goods_162/201410121806021681.png', '1413079562', '2', '43');
INSERT INTO `y9_uploaded_file` VALUES ('47', '1', 'image/png', '494518', '蓝色葡萄牙帕米拉干红酒标.png', 'data/files/store_1/goods_37/201410121807172266.png', '1413079637', '2', '93');
INSERT INTO `y9_uploaded_file` VALUES ('48', '1', 'image/png', '154307', '蓝色葡萄牙特茹干红葡萄酒.png', 'data/files/store_1/goods_47/201410121810472946.png', '1413079847', '2', '56');
INSERT INTO `y9_uploaded_file` VALUES ('49', '1', 'image/png', '478111', '蓝色葡萄牙特茹干红葡萄酒酒标.png', 'data/files/store_1/goods_52/201410121810522508.png', '1413079852', '2', '56');
INSERT INTO `y9_uploaded_file` VALUES ('50', '1', 'image/png', '138911', '雪库瓦干红葡萄酒.png', 'data/files/store_1/goods_146/201410121822266193.png', '1413080546', '2', '35');
INSERT INTO `y9_uploaded_file` VALUES ('51', '1', 'image/png', '387131', '雪库瓦干红葡萄酒酒标.png', 'data/files/store_1/goods_148/201410121822283024.png', '1413080548', '2', '35');
INSERT INTO `y9_uploaded_file` VALUES ('52', '1', 'image/jpeg', '27229', '1.jpg', 'data/files/store_1/goods_48/201410121824083635.jpg', '1413080648', '2', '59');
INSERT INTO `y9_uploaded_file` VALUES ('55', '1', 'image/png', '525585', '如福庄园埃塔玛珍藏干红葡萄酒酒标.png', 'data/files/store_1/goods_164/201410121826046474.png', '1413080764', '2', '38');
INSERT INTO `y9_uploaded_file` VALUES ('56', '1', 'image/jpeg', '27148', '未标题-1.jpg', 'data/files/store_1/goods_45/201410121830457791.jpg', '1413081045', '2', '45');
INSERT INTO `y9_uploaded_file` VALUES ('57', '1', 'image/jpeg', '27148', '未标题-1.jpg', 'data/files/store_1/goods_122/201410121832024708.jpg', '1413081122', '2', '90');
INSERT INTO `y9_uploaded_file` VALUES ('58', '1', 'image/jpeg', '27148', '未标题-1.jpg', 'data/files/store_1/goods_135/201410121832155828.jpg', '1413081135', '2', '89');
INSERT INTO `y9_uploaded_file` VALUES ('59', '1', 'image/png', '326735', '美悦1945白兰地 .png', 'data/files/store_1/goods_40/201410121834002725.png', '1413081240', '2', '77');
INSERT INTO `y9_uploaded_file` VALUES ('60', '1', 'image/png', '930864', '美悦1945白兰地 酒标.png', 'data/files/store_1/goods_41/201410121834018846.png', '1413081241', '2', '77');
INSERT INTO `y9_uploaded_file` VALUES ('62', '1', 'image/png', '374942', '美悦XO白兰地.png', 'data/files/store_1/goods_91/201410121834519784.png', '1413081291', '2', '76');
INSERT INTO `y9_uploaded_file` VALUES ('63', '1', 'image/png', '729413', '美悦XO白兰地酒标.png', 'data/files/store_1/goods_91/201410121834515904.png', '1413081291', '2', '76');
INSERT INTO `y9_uploaded_file` VALUES ('64', '1', 'image/jpeg', '24508', '未标题-1.jpg', 'data/files/store_1/goods_18/201410121836585167.jpg', '1413081418', '2', '85');
INSERT INTO `y9_uploaded_file` VALUES ('65', '1', 'image/jpeg', '24827', '未标题-1.jpg', 'data/files/store_1/goods_105/201410121838258682.jpg', '1413081505', '2', '92');
INSERT INTO `y9_uploaded_file` VALUES ('66', '1', 'image/png', '31773', '201211131628216216.png', 'data/files/store_1/goods_151/201410121842314552.png', '1413081751', '2', '81');
INSERT INTO `y9_uploaded_file` VALUES ('67', '1', 'image/png', '52822', '20140311163409898.png', 'data/files/store_1/goods_56/201410121844169142.png', '1413081856', '2', '80');
INSERT INTO `y9_uploaded_file` VALUES ('68', '1', 'image/jpeg', '27001', '未标题-1.jpg', 'data/files/store_1/goods_13/201410121846531493.jpg', '1413082013', '2', '79');
INSERT INTO `y9_uploaded_file` VALUES ('69', '1', 'image/png', '31802', '201211131627236236.png', 'data/files/store_1/goods_99/201410121848193939.png', '1413082099', '2', '73');
INSERT INTO `y9_uploaded_file` VALUES ('70', '1', 'image/png', '30175', '201211131629421421.png', 'data/files/store_1/goods_160/201410121849206608.png', '1413082160', '2', '70');
INSERT INTO `y9_uploaded_file` VALUES ('73', '1', 'image/png', '31579', '克鲁诺梅洛珍藏干红葡萄酒.png', 'data/files/store_1/goods_21/201410121923419464.png', '1413084221', '2', '54');
INSERT INTO `y9_uploaded_file` VALUES ('74', '1', 'image/png', '31659', '克鲁诺佳美娜珍藏干红葡萄酒.png', 'data/files/store_1/goods_78/201410121924385265.png', '1413084278', '2', '51');
INSERT INTO `y9_uploaded_file` VALUES ('75', '1', 'image/png', '33439', '克鲁诺赤霞珠珍藏干红葡萄酒.png', 'data/files/store_1/goods_129/201410121925295151.png', '1413084329', '2', '50');
INSERT INTO `y9_uploaded_file` VALUES ('76', '1', 'image/png', '38084', '克鲁诺莎当妮干白葡萄酒.png', 'data/files/store_1/goods_169/201410121926093071.png', '1413084369', '2', '49');
INSERT INTO `y9_uploaded_file` VALUES ('77', '1', 'image/png', '33887', '克鲁诺西拉干红葡萄酒.png', 'data/files/store_1/goods_4/201410121926446803.png', '1413084404', '2', '47');
INSERT INTO `y9_uploaded_file` VALUES ('78', '1', 'image/png', '65865', 'QQ截图20141012194919.png', 'data/files/store_1/goods_5/201410121950056692.png', '1413085805', '2', '65');
INSERT INTO `y9_uploaded_file` VALUES ('79', '1', 'image/jpeg', '24253', '未标题-2.jpg', 'data/files/store_1/goods_29/201410122330296703.jpg', '1413099029', '2', '68');
INSERT INTO `y9_uploaded_file` VALUES ('81', '1', 'image/jpeg', '18985', 'e1.jpg', 'data/files/store_1/goods_142/201410130215428248.jpg', '1413108942', '2', '93');
INSERT INTO `y9_uploaded_file` VALUES ('84', '1', 'image/png', '46910', '金色美人鱼干红2006.png', 'data/files/store_1/goods_177/201410130229379100.png', '1413109777', '2', '46');
INSERT INTO `y9_uploaded_file` VALUES ('85', '1', 'image/png', '44453', '美人鱼正牌干红2008.png', 'data/files/store_1/goods_60/201410130231003572.png', '1413109860', '2', '25');
INSERT INTO `y9_uploaded_file` VALUES ('86', '1', 'image/png', '48209', '美人鱼副牌干红2008.png', 'data/files/store_1/goods_156/201410130232369505.png', '1413109956', '2', '39');
INSERT INTO `y9_uploaded_file` VALUES ('87', '1', 'image/png', '47733', '美人鱼副牌干红2006.png', 'data/files/store_1/goods_19/201410130233396741.png', '1413110019', '2', '31');
INSERT INTO `y9_uploaded_file` VALUES ('88', '1', 'image/png', '48338', '美人鱼副牌干红2007.png', 'data/files/store_1/goods_92/201410130234527593.png', '1413110092', '2', '36');
INSERT INTO `y9_uploaded_file` VALUES ('89', '1', 'image/png', '44400', '美人鱼正牌干红2007.png', 'data/files/store_1/goods_49/201410130237299435.png', '1413110249', '2', '8');

-- ----------------------------
-- Table structure for `y9_user_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `y9_user_coupon`;
CREATE TABLE `y9_user_coupon` (
  `user_id` int(10) unsigned NOT NULL,
  `coupon_sn` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`,`coupon_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_user_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `y9_user_priv`
-- ----------------------------
DROP TABLE IF EXISTS `y9_user_priv`;
CREATE TABLE `y9_user_priv` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `privs` text NOT NULL,
  PRIMARY KEY (`user_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of y9_user_priv
-- ----------------------------
INSERT INTO `y9_user_priv` VALUES ('1', '0', 'all');
INSERT INTO `y9_user_priv` VALUES ('2', '2', 'all');
INSERT INTO `y9_user_priv` VALUES ('1', '1', 'all');
