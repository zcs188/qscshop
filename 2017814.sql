/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.5.53 : Database - qscmobilier
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qscmobilier` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `qscmobilier`;

/*Table structure for table `admin_accesslog` */

DROP TABLE IF EXISTS `admin_accesslog`;

CREATE TABLE `admin_accesslog` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '系统ID',
  `handleContent` varchar(256) COLLATE utf8_bin DEFAULT '' COMMENT '操作内容  如：XX对XXX进行了（查询，修改，添加，删除等等）',
  `configKey` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '配置键(就是进入该方法的路径)',
  `userId` int(11) DEFAULT '0' COMMENT '创建人（操作人）',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `clientIpAndName` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '当前操作机器的ip地址和名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统用户日志操作表字段详情';

/*Data for the table `admin_accesslog` */

insert  into `admin_accesslog`(`id`,`handleContent`,`configKey`,`userId`,`createTime`,`clientIpAndName`) values 
('0011fedba02a465c9826f2d11ac862fc','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:15:33','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('001e3ccae2e54e4c9710dd1ce5e61653','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 10:34:33','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('00368b1705784a03b4744c01d781ed78','admin-添加供应商结算：5d42b3d0fa1745e48e16d4a5b87dc5d7','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 13:57:38','IP:127.0.0.1;机名:PC201508311633'),
('003fa7aa1602408fba973ffc5b6744d2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:33:17','IP:127.0.0.1;机名:PC201508311633'),
('005364b13ddd4bb5b06d012d5a344637','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:46:40','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0066770e3ade4940b220b1cb025d9cb3','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:34:17','IP:127.0.0.1;机名:PC201508311633'),
('007ff207fddb4a0ebf1a66a48f98b6d8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 15:39:41','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0097fab9f3a14153bb6e3aae8b015ee1','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 15:27:13','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('00a67bde1bc74d9bbfda4340daf14dc4','添加商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-06-30 19:26:56','IP:127.0.0.1;机名:PC201508311633'),
('00c902378073432b9c3e5ec08da9cf91','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 11:12:54','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('00d38c258fcc46c296d6c3879411dab7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 15:40:46','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('012a8255006e4e65a0aef1a1da33201c','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-14 15:50:11','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('013fac3622de41de872c8f5f15036907','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 10:04:59','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('01601f3681ec4b09b970b38917a250a1','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 10:59:05','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('0181156596474865ae94ad81d5eaee77','登录后台系统','/pub/user/adlogin.do',1,'2017-07-24 18:17:01','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('01a01064d89a487ba9d8f5ea496b4066','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 18:15:25','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('01a583bb6ea54ec899852e829b994aea','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 15:20:29','IP:127.0.0.1;机名:PC201508311633'),
('01ab582994294f0c8689298f7e673fb6','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 11:09:59','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('01f84743bb464ce39c556504e00959a5','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 15:47:52','IP:127.0.0.1;机名:PC201508311633'),
('02026ed0d0334f5783fec73d7f4fd196','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:41:04','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('020ce54b4a4e4b8499de3bce0391866a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:26:40','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('021d367bbda44f8a807e0e574935aec2','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:34:33','IP:127.0.0.1;机名:PC201508311633'),
('023a80a45adf49858f2ff89b75c30b6a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:32:20','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('027d718f66884a219aa836142e40ace6','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:10:54','IP:127.0.0.1;机名:PC201508311633'),
('02a20f674800426fb2707e4e1ca9eb24','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:19:35','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('02c0c4628a304c82b47118ce5c9067b8','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:31:01','IP:127.0.0.1;机名:PC201508311633'),
('02f2d5bfcfe54a188e274d656513c0df','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:29:42','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('02f48b0e84004cefbc5c00db364f733c','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 10:00:10','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0315eeb3911c4fa8b0517dfd5a0fffb5','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-07 18:18:49','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0322d83e1de64ba0ba77ee0f89b27d93','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 16:09:04','IP:127.0.0.1;机名:PC201508311633'),
('036a2cb6ce594f7dbb85f04a3ad84abe','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:21:57','IP:127.0.0.1;机名:PC201508311633'),
('0383da908e624241a2102dd375a2e68f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:56:34','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('03cbf018d8c5411bb9a4925d78ebc9f2','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:12:13','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('03cee1e152fb4962be0c00a33558c5f7','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 12:00:18','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('03e14456d4a34671a705d887898229e2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 10:45:42','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('03e8fc3915894a48b99cfb6bd4ddc17e','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 15:40:32','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('03f88d379ba14e40b1d72e6ce2be85c2','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 15:21:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('040a8ac89cda4f3986402e95da0a2637','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 09:05:12','IP:127.0.0.1;机名:PC201508311633'),
('040d51abf6bb430896a8519cbd13ae63','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 17:57:16','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('040eacdb41c141c09be0260f8a8b76c8','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 18:09:34','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('041b092d68c24e189a3db380a5f5cda6','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 19:20:06','IP:127.0.0.1;机名:PC201508311633'),
('0425f3c032d94526a6c80054de95daf8','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 15:45:23','IP:127.0.0.1;机名:PC201508311633'),
('042d7ebb3c364428a04c969594507d86','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:52:23','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('042e4e8a5e614065a06a820ef82777b4','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-22 18:29:38','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('042f5abe129840d3b022c0241e170b11','添加优惠卷','/admin/ticket_info/insertOk.do',1,'2017-08-02 15:09:53','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('04601c7a31af413dac941ac5294c78e8','admin-修改供应商结算：26fbd7d9641b429d95981434ffda242b','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-22 14:07:51','IP:127.0.0.1;机名:PC201508311633'),
('0465f3d9a4ce40c2b1470354d77fee92','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-21 14:39:43','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('046aa9df356643dbb673306397acaf03','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:57:12','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0474acccd53b438eac89564951fe76ea','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:49:38','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('048026fec8984de092ab3cf30dca11ae','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 15:35:53','IP:127.0.0.1;机名:IF-20150627QENP'),
('04886504d90e4a8cabe41881d7da1fb1','修改订单信息订单编号(主键)：8907f047d40742c4b89283cc0a71345f','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-03 17:44:00','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('04ccdad2cc494f3fadf2da6f441777cd','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 17:33:15','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('04d15c163c71401fa722163d9d87e063','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:50:48','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('04e363ae5a30483a92f1f9ec6d4ef922','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 17:13:08','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('0501c5e55a8b4e42a07598a3ded8d3c1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 18:03:27','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('0515b7594ea14ce4baf4e2115e93b5d6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 10:18:38','IP:127.0.0.1;机名:PC201508311633'),
('053b2554d0c14680a332adaecd068c8c','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-17 15:44:07','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('054be2349f0d410392426775f0f7d609','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:50:43','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('05babcd332564e48a295821c60ecafb7','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-30 19:40:44','IP:127.0.0.1;机名:PC201508311633'),
('05dbd7bd49de41009605eaaabb2e9bc7','邮费信息添加','/admin/GoodsMeubleCost/addInfo.do',1,'2017-05-27 10:30:14','IP:127.0.0.1;机名:oruke-PC'),
('061e9d44b5844f7ba6962b6f4a5a2c31','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:28:20','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('062a4c6f158e4a4183a0e2280053892d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:37:15','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('064952fc8b6a4d57b6bc6f06a9ced43c','登录后台系统','/pub/user/adlogin.do',1,'2017-07-28 10:32:43','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('065c8e5678de4405bfb951cbf564245a','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:32:18','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('06612b596d32431184fd84a016ddb4c9','登录后台系统','/pub/user/adlogin.do',1,'2017-07-23 16:58:35','IP:183.228.23.95;机名:iZmemcvx3hm4a3Z'),
('067242bf01b64d7aa4f86ad5056ab3b7','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:11:11','IP:127.0.0.1;机名:PC201508311633'),
('067abd72cfa040ba9b334fdc89d090f5','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-08 11:54:41','IP:127.0.0.1;机名:PC201508311633'),
('06baf0490e7c4b4c8bca2f47fdaa3e59','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:45:28','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('070364ea4324445f8b819af42e1ca8c7','修改订单信息订单编号(主键)：79041839208c4f5c9024418e2d6d2db5','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:35:08','IP:127.0.0.1;机名:PC201508311633'),
('07504d0a588e44a89966f5b1f8a541f6','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-22 18:32:26','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('079e926383424d798c9eb591972cf470','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 11:15:39','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('07d5b87a7b744c56a40daab257a72ae6','登录后台系统','/pub/user/adlogin.do',1,'2017-07-11 14:44:07','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('07dacb374b1c47ae99079e661f05fd4f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 14:21:16','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('07e10ce8c35c4070922871246176d42f','修改派单信息ID=3e0c4af71cdb42a190128ef46229dcb8','/admin/InstallerListeEstimer/update.do',1,'2017-08-04 15:13:44','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('07e88c31a82b4093a71e3d6f50d44144','查询用户列表','/admin/user/adqu.do',1,'2017-07-23 17:00:15','IP:183.228.23.95;机名:iZmemcvx3hm4a3Z'),
('07f4a3ad64564b49981a8b49e2cd6771','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 15:19:46','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('07fb70f1a05a4901b2300b3f58e7834a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 17:42:35','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('0809e1bf2e5e4a2c9ac69c0f1677407a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 17:04:42','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('08191b912f0246bb91914ba7a47c53ef','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 19:47:32','IP:127.0.0.1;机名:PC201508311633'),
('08378d7862314244adf7ce778ff10037','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-18 11:35:44','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('08382bbdd0f04a2385dedd68a225292e','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-28 10:15:09','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('085a528c753746d58814bb2ee1d76072','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-06-27 16:33:54','IP:127.0.0.1;机名:PC201508311633'),
('085e4302b1404bdfb14de017e679e967','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:58:44','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0869ae4627944cef8039c7a6afb93d3d','厂商添加','/admin/userGoodsMeuble/addMeubleManufacturer.do',1,'2017-07-14 14:49:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('08967f088b1149fdb63531b5d9ece715','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 14:56:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('08ae2f590c0a4dfaa2e5cba5c61f170e','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 17:06:21','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('08b9d0b923fa4b22a5207ef1f2cf6463','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-14 11:59:54','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('08ba8689f5b84ad89d88aff86c58ff4a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 10:45:29','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('093b92f20a0e4d2ba60f70f8ad1fa043','添加系统配置','/admin/syscon/in.do',1,'2017-08-08 09:52:40','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('095d82b801ef49efbe4b1ded3684a858','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 12:02:21','IP:127.0.0.1;机名:PC201508311633'),
('096559980ce844a499f50c6156e24524','登录后台系统','/pub/user/adlogin.do',1,'2017-08-07 14:21:57','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('09729c259b9a471ba98a72829a4123b4','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:12:24','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('097c5b3b780b467885792d272df778cc','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 11:58:20','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('097de55467854a03a14485d2b656aab1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 09:52:10','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('099c9863dc2743139cfed0c994fcb344','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-19 15:08:16','IP:127.0.0.1;机名:PC201508311633'),
('09a0fbb8fd7f49e7b4739c0b89a83fdf','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:42:33','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('09ace678d25442e293d4cc095e08c253','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-01 11:47:57','IP:127.0.0.1;机名:PC201508311633'),
('0a21adcbcbfc4faba95f29e95532f732','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-23 16:35:36','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('0a26848eb7fa43ffa0898cf4af0eda76','查询模块分页','/admin/mod/qu.do',1,'2017-07-20 10:23:49','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0a2cb223ae31412dae261fb1fed1bbcc','修改订单信息订单编号(主键)：79041839208c4f5c9024418e2d6d2db5','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 14:25:58','IP:127.0.0.1;机名:PC201508311633'),
('0a2f80ac3936488f9048cef49fc7552f','查询用户列表','/qscMobilier_Back/admin/user/adqu.do',1,'2017-06-22 13:39:29','IP:127.0.0.1;机名:PC201508311633'),
('0a373d1d23e5422c83deb519f8bae36a','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-13 13:58:54','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('0a568f3743fa4c7eb8088e67a9afb859','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-29 09:00:54','IP:127.0.0.1;机名:PC201508311633'),
('0a6487115f8d489a83e231c55282486b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:10:18','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0a6c63b8360d49f2b3ac9f2079e06791','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:38:56','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('0a73ac5d0bd54fb8a74b485f23bf15ae','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:32:16','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0a8dbf449c934a338444d6d32dd344f4','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:28:46','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('0aa5c21b81dd4308acd13082650a32d9','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 15:31:09','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('0ae4ffc5dec74f068eea13a321ff6f50','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 10:46:58','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('0af4fbaa9c7d4b38bbee15f15787eed6','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-30 19:10:49','IP:127.0.0.1;机名:PC201508311633'),
('0b0f2efbf38145ff90b581d5cc431f8d','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 16:56:45','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('0b11e640f37848d4ab9eb9e83a99e5b3','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:23:08','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0b6aeb9b53344a31ac90e655eee4f278','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 18:40:27','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('0b8c222dd71845498096e78ca18502ea','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:25:14','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('0bb02ebc088f42fa931c2b27e0e01fb5','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-05-31 09:17:09','IP:127.0.0.1;机名:PC201508311633'),
('0bbc8a834a274e70b9478537129e715e','修改订单信息》》订单编号(主键)：31952af50ee44710915561183a056ce0','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-23 14:30:31','IP:127.0.0.1;机名:PC201508311633'),
('0bc1058d0bbb40b8bec06c1a1b728364','重置用户密码','/admin/user/adreset.do',6,'2017-07-25 14:40:13','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('0bdafe26f86243e9a3cbfef1edee61d2','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 10:11:59','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0bebfe53687c4d198119551c0c2bdbb5','admin-添加供应商结算：3e6a68aa551449d5b9066cf8913837b0','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:06:54','IP:127.0.0.1;机名:PC201508311633'),
('0bfcf723a29e482ea67f851975216177','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 15:52:25','IP:127.0.0.1;机名:PC201508311633'),
('0c1924f222d148a78024583d547c19b6','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-28 18:30:48','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('0c5ad16fb7ff4c419bf08a69bdf437c7','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:55','IP:127.0.0.1;机名:PC201508311633'),
('0c5b6c214384465499cfde10010c868e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 11:01:06','IP:127.0.0.1;机名:PC201508311633'),
('0c68382851b54d138bbb2cf133c48e2e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-22 18:31:49','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('0c702f22fabd412b8ec73617205d620e','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 17:45:43','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0cb504f431244cf78173eb7b54c2ff37','admin-取消供应商结算：67c0f54ee05c4fe3a70f7548257fbffd','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 16:56:14','IP:127.0.0.1;机名:PC201508311633'),
('0cdc8b3ea6d740949a204a8d8c54ae0f','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:11:43','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0cef43a6d5d243d59066d1155063f993','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:13:32','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('0cf4c43cc865498ca747a8454c0b23f1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:05:06','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('0d0cbc0b435143818eb34041f20bab78','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:08:07','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0d268bc1575c4cbea3e510785693444a','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:45:26','IP:127.0.0.1;机名:PC201508311633'),
('0d40a968d4eb4637856480740fa61fe8','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 09:52:38','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0d53e582d9bf4567871985a880f8bcb6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 18:53:35','IP:127.0.0.1;机名:PC201508311633'),
('0d81de02689043a8b1f5afa2f4482ffb','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 14:22:03','IP:127.0.0.1;机名:IF-20150627QENP'),
('0d96e5987b6d4cfeb2de1f9789073b7d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 09:51:56','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0d993de79e2749b0a87ca9ece5b5ddcc','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 10:54:35','IP:127.0.0.1;机名:PC201508311633'),
('0da808fd14f14f9dbab5422f36f0f800','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 12:02:24','IP:127.0.0.1;机名:PC201508311633'),
('0dbbc242d91645bb9b4bb666153370bb','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 10:37:27','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('0dccc0ab2eca4b57bd4f94d7d4d445c3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 17:34:00','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0e3ea7cb890948e7bead6daf35d7bf2d','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 11:52:55','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('0e46fe6e7cc946d9ab2594936347a8ae','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 10:46:14','IP:127.0.0.1;机名:PC201508311633'),
('0e4fce49d2714dcb9bfa6ebd31d01b0b','添加商品','/qscMobilier_Back/admin/userGoodsMeuble/addMeuble.do',1,'2017-06-30 19:26:18','IP:127.0.0.1;机名:PC201508311633'),
('0e674ba80c5a47ce81aaa1a614e5793b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 09:42:57','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('0e67c37a51844545b20181ba57839627','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:53:50','IP:127.0.0.1;机名:PC201508311633'),
('0e83f49732ac4d0a88798d76034f7492','登录后台系统','/pub/user/adlogin.do',1,'2017-07-27 18:46:02','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('0ea0b6c0cced4fdcaffd043355021f38','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 15:33:04','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('0ec7a262c0e04377bd9d9778f0cbebd9','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:19:28','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('0efbbbcebe644c2ebf799ee35828e311','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:01:18','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0f08d54e28d440e8807ab4b27ba01079','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:15:42','IP:127.0.0.1;机名:PC201508311633'),
('0f16236ec4224fd8916aee9dc7ad3f3c','admin-修改供应商结算：a32150072fd04ed7aeeb31bea623ae8d','/admin/settle/supplier/etideInfo.do',1,'2017-08-11 17:31:57','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('0f204bd0a81546ce9316001fd9b0d418','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 15:28:34','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('0f24c4120b5449518986376e1bd2d610','添加商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-06-09 10:19:55','IP:127.0.0.1;机名:PC201508311633'),
('0f28761fe37b4149bd437a3d56c35b69','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:43:19','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0f36afb3566f4865a40d81dc018c6295','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 14:37:54','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('0f55a766db7c45828dced75e7daebd32','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:57:48','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0f5e2710f8424e39b98e7a515f907333','添加系统配置','/admin/syscon/in.do',1,'2017-08-08 09:52:34','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('0f6ac6d8aa664681abb204e1e841dccf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 09:22:14','IP:127.0.0.1;机名:PC201508311633'),
('0f89d872796a4b31afbc0c9c95288160','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 18:03:12','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('0fe04c917dda4564b671f5740612061a','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 18:01:22','IP:127.0.0.1;机名:PC201508311633'),
('0fea21bd30e04815a69d032d254f98af','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 09:52:20','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('100130fe8aac477c824d967287bf2157','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 11:33:49','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('100837df55b24e98a95770496e9df5c7','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 17:33:35','IP:127.0.0.1;机名:PC201508311633'),
('1017129de03642ceb4cad6deafe5f075','修改活动规则(我的推广)说明（抽奖）','/admin/textevlues/editOk.do',1,'2017-08-10 18:01:04','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('102230904194408a853cc2df33bb2d93','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:35:15','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('1032ac885c4f4d2a9b61f6b0f43f5792','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:28:28','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('1083c0dbf74041558455cae15668aac2','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:11:25','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('1084cad9a670480ba0f2eca0b827d47f','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 10:19:49','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('109c7dc76564494db026bd897827266b','登录后台系统','/pub/user/adlogin.do',1,'2017-07-15 10:49:22','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('10aa44ac5bb84dde83ad566611014a50','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 11:48:18','IP:127.0.0.1;机名:IF-20150627QENP'),
('10c892074e3a4b60b1c2f32a3410026a','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 16:03:34','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('110684f4234b4daa85b6182a188cafff','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 13:43:10','IP:127.0.0.1;机名:PC201508311633'),
('113b750f9417407ca23aa6c7a55e5290','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 12:02:13','IP:127.0.0.1;机名:PC201508311633'),
('114c85fb2d5846c28e84d82ef4045c3b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:17:04','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('1188314756804925a2fc5ea8729db9fd','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 14:59:20','IP:127.0.0.1;机名:IF-20150627QENP'),
('11964c566d7145bebfe578121103ddb4','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:33:44','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('11a1ad9874bb47ceb55b2447a7ef7bc7','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-08 11:53:25','IP:127.0.0.1;机名:PC201508311633'),
('11b958c7c611451880c8fd90deee5733','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-23 10:56:35','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('11dab30d585d4573b68231db683858c6','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:53:37','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('11daeccfc84341c2a257c0b2a34d953e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:17:57','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('11e0c49aebc64f8d9b120712c5a7e6ad','admin-修改供应商结算：e15a1019cd6e43498d2196b4ae1f7d94','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:50:16','IP:127.0.0.1;机名:PC201508311633'),
('11f7e3c7190b496ca1dc794072d09fb6','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:17:31','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('1213789d87ac4bb1928033fce0f20629','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:21:27','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('122dee7a4fa1432dac25cd4ce8595944','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-21 17:35:46','IP:127.0.0.1;机名:PC201508311633'),
('1266dd7c3ebf469d854535ea9221a05d','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:15:07','IP:127.0.0.1;机名:PC201508311633'),
('1272e82394514f218cbd3070cf6e0861','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 14:24:44','IP:127.0.0.1;机名:PC201508311633'),
('12aa7938f4274494a759be20b4493898','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:16:35','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('12eecd739168407d9fe09b6517b2a105','修改订单信息》》订单编号(主键)：138d87bb5ef9418b87ffc4db52f33ba6','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-23 16:06:29','IP:127.0.0.1;机名:PC201508311633'),
('1313bea6324f455ba0cc44f24b1121e9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 15:57:49','IP:127.0.0.1;机名:PC201508311633'),
('131a522cd58a489198ab551e1fec1a70','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:27:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1340ceb85e334100a8287b016ff96e3e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 10:34:11','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('135cd76d67c142908ebcb4f1dec105f2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 09:51:28','IP:127.0.0.1;机名:PC201508311633'),
('137118f57d4b45158dd06d9e2dd00b10','修改订单信息订单编号(主键)：79041839208c4f5c9024418e2d6d2db5','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:34:58','IP:127.0.0.1;机名:PC201508311633'),
('13b40725a9d04b2b92213d20444ecb58','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 09:28:38','IP:127.0.0.1;机名:PC201508311633'),
('13c15195ac164a7ea40cc4d61dec338d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:07:38','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('13ca0f0061ba461e9600048d945589e4','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:53:50','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('13dbbc3f01924c4b821367f6992db98f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 10:55:40','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('14362dcc5c104559a6b0fd4a4ac39dd0','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 15:44:53','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('143b84674b1b4fafac1e3fae2c669d33','登录后台系统','/pub/user/adlogin.do',1,'2017-07-18 16:32:56','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('14550fe6f376471ba1698125efbde7b2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 14:08:24','IP:127.0.0.1;机名:PC201508311633'),
('14671ea2e1424b4a844ad629fa4ce312','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 11:51:26','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('14808e67e0ad41b393d44faf5c65b27e','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 12:02:48','IP:127.0.0.1;机名:PC201508311633'),
('148eaec2a70349b9a85eb5cea63ebee8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:04:37','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('14a2ba7628274921993d2cf20094de35','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 17:07:30','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('14bfb49bc15d4e709dc9436e054f26ec','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 17:36:22','IP:127.0.0.1;机名:PC201508311633'),
('14f66885d23e4e3b83074a4b83098614','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:54:25','IP:127.0.0.1;机名:PC201508311633'),
('154a13271cf64b6489e1c0f0a2bd308b','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-14 15:27:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('159529fea00741e79209de3a3bef96c2','修改订单信息》》订单编号(主键)：24be69de367e4f6e8ff0306edf6c4a8f','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-28 15:42:21','IP:127.0.0.1;机名:PC201508311633'),
('15a670e2dc8e4c10b0b831948e91f08a','登录后台系统','/pub/user/adlogin.do',1,'2017-08-09 09:00:12','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('15adf349711241cc931d36ff64951316','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 14:30:04','IP:127.0.0.1;机名:PC201508311633'),
('15aff5a197c34761ac2cb4a1fd191f38','修改订单信息订单编号(主键)：7383af17769f468dabc03130f380742a','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-07-08 17:14:21','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('15c511c46b794c09985b742f2bdab45a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 15:44:42','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('15ee307f62884de4a61801870f723892','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 18:26:26','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('15f8ce49a8914f43a4a295d0e2daf905','创建微信菜单-实际菜单','/qscMobilier_Back/admin/weixin/foundMenu.do',1,'2017-06-27 17:47:09','IP:127.0.0.1;机名:PC201508311633'),
('16036962766b43089bcea19d49cd81fa','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 15:35:16','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('16335c7f3c2646aeb7db6e6a603d8096','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 10:14:06','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('163f5c3d31ba4f9bb2209da9c7757646','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 16:04:37','IP:127.0.0.1;机名:PC201508311633'),
('165dd730d09a4132983caf7ffd809985','更新系统配置','/admin/syscon/up.do',1,'2017-08-07 19:01:56','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('169410e0b0154f00b39c241331b62587','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:34:30','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('169aa5ddbd75490da699c6dfb0a2d5fa','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:36:35','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('16d0eef803ae4a66b060d1c6e2d95d30','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 14:00:20','IP:127.0.0.1;机名:PC201508311633'),
('16e0db8ab7fe4f66a6934131d5c1df18','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-05-27 15:51:16','IP:127.0.0.1;机名:PC201508311633'),
('16ee57af79604355a83a6c54f7f7ec83','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:11:43','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('16f546af649442fa9fce900cfd1a446a','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 09:51:44','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('17073d3f9abe4240816acb91a59669e3','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-07-18 17:39:36','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1738cd0ea2504838b3731b87414d98c0','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 09:56:09','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1748a127539947f18e4a0aa31b7eb2bb','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:09:37','IP:127.0.0.1;机名:PC201508311633'),
('176537ba898a46f9be1a089f872d3440','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-20 11:11:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1770274a52d44789b17aa8520ed3274d','登录后台系统','/pub/user/adlogin.do',1,'2017-07-17 16:15:07','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('177c39c218984e74b9c780fe3e640c49','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:23:20','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('178ce9ad1d5e4b4f993501339da32a83','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 16:11:38','IP:127.0.0.1;机名:PC201508311633'),
('178d67958e2043f99751a576a44e64e9','修改订单信息订单编号(主键)：accb04f0e26d4009b511958c27ff00fc','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:20:19','IP:127.0.0.1;机名:oruke-PC'),
('17902f5d96b44d3c8f3d9e3e2da797a1','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:50','IP:127.0.0.1;机名:PC201508311633'),
('17a4206759cf4476acc464ee2e3908c1','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-04 13:57:08','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('17bb6473c9a144f8820dede00f6b62d7','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 10:39:48','IP:127.0.0.1;机名:PC201508311633'),
('182a7e65ac9041e282e2f00d3d6a4788','admin-添加供应商结算：7a21d57c77524322a216c2d295cc83f8','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:40:07','IP:127.0.0.1;机名:PC201508311633'),
('185be85c48fc42a6911092cc08c04d05','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 16:52:54','IP:127.0.0.1;机名:PC201508311633'),
('186342bc004a4e48a9bc7b362124ef0b','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 11:12:20','IP:127.0.0.1;机名:PC201508311633'),
('18784ab70f2d499aa5a9abdc1ac28611','修改订单信息订单编号(主键)：3655dd11d92a415e9b148412ec0206e3','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-28 15:43:21','IP:127.0.0.1;机名:PC201508311633'),
('1878a5c2510e427a88415ab4fcfeb35a','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-13 17:38:52','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('187fa877a9ad4e93a9ac501cbd0df0b2','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 10:50:06','IP:127.0.0.1;机名:PC201508311633'),
('188c2984c6ad47f095eb00a9b66aac20','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-02 15:04:54','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('18a35c02811b4506b457fe367fbab167','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-12 11:46:04','IP:127.0.0.1;机名:PC201508311633'),
('18a465ab4b8a413da6490901240ff392','admin-取消供应商结算：e14daba57ad94bf29ba0bf966a6256da','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 17:11:39','IP:127.0.0.1;机名:PC201508311633'),
('18d3cf662ba347e4bd35aa3a6764250b','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 11:00:19','IP:127.0.0.1;机名:PC201508311633'),
('191e38c267e74654b30136e6088f4c17','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:43:48','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('192169739f7a44bb9ec2f0f3d0d6a554','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:03:53','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('1929e1b1265d46dbb99931953075372b','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-09 10:09:09','IP:127.0.0.1;机名:PC201508311633'),
('193ca1065a984d03abf92e71b0a01adf','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 22:46:29','IP:183.228.18.229;机名:iZmemcvx3hm4a3Z'),
('197e0cbb340d470faa38824971531c3d','查询用户列表','/admin/user/adqu.do',1,'2017-08-01 15:00:04','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1994d41eafdb428ca450a5a3ba65ebe1','登录后台系统','/pub/user/adlogin.do',1,'2017-07-25 14:36:44','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('199c4110e1b0458783ec3573aa319285','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-26 15:44:11','IP:127.0.0.1;机名:PC201508311633'),
('19a88c6d5b3d43c7afae5ea8b5f9e863','admin-添加供应商结算：26fbd7d9641b429d95981434ffda242b','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-09 09:25:23','IP:127.0.0.1;机名:PC201508311633'),
('1a10d67e2e714567b737bdaeab011dd8','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 15:20:47','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1a719a446a2a47a3862e3440c5153db3','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 09:33:23','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1a812f78059644fab0a4a0d66fd17476','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 11:10:18','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('1ab936c7a29b4ac2bd251920682f51ff','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:57:40','IP:127.0.0.1;机名:PC201508311633'),
('1b23acc4eab6408fbb17b5d66ddc2320','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 11:46:12','IP:127.0.0.1;机名:PC201508311633'),
('1b2c8b3908a44964abc3b2965833e178','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 16:01:39','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('1b8e4bb957424813b6ec57436f93e6e9','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 13:46:42','IP:127.0.0.1;机名:PC201508311633'),
('1ba8154a58014638830dfd7bc83d8363','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:13:38','IP:127.0.0.1;机名:PC201508311633'),
('1bd716dfafdf4fd4992215432290bbc2','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:54:40','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('1bdebb885fde464a8122871ed527edd4','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 15:44:42','IP:127.0.0.1;机名:PC201508311633'),
('1be1dc19d6434d39b3b896ffa05c6cea','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 14:39:44','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('1c15bc24dc334d438ed63da5be8db7af','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 14:39:57','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('1c22c655520f4511987de448dafdeb2e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:10:28','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1c2d9396eeaa41b58f1b91800b9112c0','查询模块分页','/admin/mod/qu.do',1,'2017-07-27 18:18:49','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1c41fac0ae824ad49b54b25cc387e9c1','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:31:07','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('1c4c18a8192f44cbbe8d2cec5568616a','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 15:59:40','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1c7028fd135448c2a25cedd8311f32ae','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:56:51','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('1c75f9fdb4c74a0fb9cfbc7e8f1461dc','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-20 11:11:14','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1c7f7d3702374b77b0846fcca94a023d','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 09:54:20','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('1c8664117d5c4237825c99495877a7f1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 14:05:08','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1c8f5d7a59dc4e19aee073b2f6d625ee','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 09:03:35','IP:127.0.0.1;机名:PC201508311633'),
('1cd5b6e688cf4a11abfc1b8dea9402b3','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:10:14','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('1cd84f5f10e24c6b92e20f508b16936b','查询模块分页','/admin/mod/qu.do',1,'2017-08-11 16:08:54','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('1d13880aec474bb3ba2dc209362bd617','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 12:00:50','IP:127.0.0.1;机名:PC201508311633'),
('1d37f1ab63f94139b6d5ea386d375a5e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 16:45:22','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1d72804065d44fd8b4e772d7384104c6','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 17:06:44','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1db31ea43b024aaab659161679568fd8','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-11 14:56:32','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('1e1b2571f39048648281d2886a80843b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 15:35:24','IP:127.0.0.1;机名:PC201508311633'),
('1e1c456be05d4064af291baa606b9fdf','添加优惠卷','/admin/ticket_info/insertOk.do',1,'2017-08-02 15:10:49','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1e2d287cbe2142558d5153550a9287af','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 14:07:15','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('1e3639182cc34f5dbe15c390d64c2432','角色授权','/admin/role/inpo.do',1,'2017-07-25 14:36:54','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1e39315cc6b94cfaa46765237b00ca70','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 16:36:25','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('1e420919119e426383f168ec013b362e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 16:05:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1e43f318708043b3988131ff4691c961','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 16:42:40','IP:127.0.0.1;机名:PC201508311633'),
('1e477aea24bb4f1686202bdbbe1bd436','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-01 11:04:10','IP:127.0.0.1;机名:PC201508311633'),
('1e682aeb8f174aa893a6a93774730b6a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:53:32','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('1e7bbb1644d446b2a817ccebf7214f54','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-05-27 16:40:24','IP:127.0.0.1;机名:PC201508311633'),
('1e966ad0d04140af9366d31396b73de5','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:21:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1ef2ba0d60924a7ca7d0a88db7207707','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:24:47','IP:127.0.0.1;机名:PC201508311633'),
('1f12b1ffac994caca5055e6106ab2a10','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:32:02','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('1f1e49c9fa2d47fa969bb300b606b56f','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 17:06:30','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('1f3466a5822845bfb2218193f180897d','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 15:52:57','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('1f347f03e25b4bfc825e2cb2f9501a86','修改比例信息ID=1','/admin/ordrestatut/upOk.do',1,'2017-08-01 14:52:32','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1f52d467aaad4f88863fb014d26b8c40','退货申请信息修改','/qscMobilier_Back/admin/UserMeubleOrder/updateReturnInfo.do',1,'2017-05-31 17:52:32','IP:127.0.0.1;机名:PC201508311633'),
('1f5c79cbb3064153bac7e1d6cedef980','操作发送短消息','/qscMobilier_Back/admin/phonenoter/addSendOk.do',1,'2017-06-27 16:08:54','IP:127.0.0.1;机名:IF-20150627QENP'),
('1f66a4c4542e453d8a6db51963271de0','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:16:45','IP:127.0.0.1;机名:PC201508311633'),
('1f74edd6e341462f8cd9faeb01c16f9a','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-29 15:13:04','IP:127.0.0.1;机名:PC201508311633'),
('1f800eb00ab7482a987dacab9d58c854','登录后台系统','/pub/user/adlogin.do',1,'2017-07-24 10:20:35','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('1fa1868aaba34416a4e6d86a3ac76c1f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 17:12:46','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('1fa60c76a990450b9fbba1963d698841','admin-添加供应商结算：65c2feca9081451297ba460379baf1ca','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:08:36','IP:127.0.0.1;机名:PC201508311633'),
('1fcaeb7207874b8c949d25bd59d742fe','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-22 18:33:03','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('1fef29fe8df7497d97bf7925946bf89e','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:47:44','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('1ff28ff416094175a701bb92c9bb5607','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-23 16:34:07','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('1ff4b5e4a7d24901a1ac84cc0e26c303','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-22 18:31:13','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('1ffb0159b8b74a3aaf86f2a74596397f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:30:56','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('1ffe1bd901f5482aa078e518b57b2a9e','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-05-27 16:39:32','IP:127.0.0.1;机名:PC201508311633'),
('20104b0c284a40ed86f3001242f80703','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-05 11:35:02','IP:127.0.0.1;机名:PC201508311633'),
('20252242615b461fa6f87732f6506c5c','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 14:23:45','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('2060c795a8014d8493944a85a7e91216','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-21 17:25:58','IP:127.0.0.1;机名:PC201508311633'),
('20634df868e54bd7b4095cc4a515954c','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 13:47:39','IP:127.0.0.1;机名:PC201508311633'),
('206f5d8ef798451f86fa3d50b63ec412','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:02','IP:127.0.0.1;机名:PC201508311633'),
('2073f3a7741a4d8aa9035f01f23493c2','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-18 09:45:10','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('207fc86260fb4045b43b1076eb30f9fa','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 10:56:29','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('208ef20093ba48a4b3397c97e18d8a0f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 10:12:46','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('20b25d25e737461c8996d6caa02fd58e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 09:36:51','IP:127.0.0.1;机名:PC201508311633'),
('20c1f9f1365a44e592596c903b776893','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 09:42:51','IP:127.0.0.1;机名:PC201508311633'),
('20d9a531676048cdacc2cc2b93f85026','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 14:22:59','IP:127.0.0.1;机名:IF-20150627QENP'),
('20dc9d9006704967967b4b7c268600f0','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 14:20:54','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('2119717fdae84043adf6c9d6f8a43b87','删除本地微信菜单','/admin/weixin/deleteMenuid.do',1,'2017-07-11 14:54:59','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('21313788268745b2a0d48f28b828811e','查询用户列表','/admin/user/adqu.do',1,'2017-07-13 10:30:13','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('213ea8472c5b46638d15cc2f41b8a9b2','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-18 17:51:17','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('216a520fffae4920ac2f74a71d8699f1','修改订单信息订单编号(主键)：ec62bdc9eb694f83b00bcca8b1290be2','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 14:29:50','IP:127.0.0.1;机名:PC201508311633'),
('216d32d97bac48589ad0c8306371a2ef','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 10:44:36','IP:127.0.0.1;机名:PC201508311633'),
('2178868465714ece984738e169d451c0','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:14:03','IP:127.0.0.1;机名:PC201508311633'),
('218b8ab4db1647288802943abb1b9ea9','修改优惠卷','/qscMobilier_Back/admin/ticket_info/upOk.do',1,'2017-06-09 16:58:17','IP:127.0.0.1;机名:PC201508311633'),
('21bdfb64fb9f41b4bd2c00f4e3866adb','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:10:46','IP:127.0.0.1;机名:PC201508311633'),
('21c13d8fe1e240599c8a691ce33f9c4e','登录后台系统','/pub/user/adlogin.do',1,'2017-07-31 09:26:14','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('21dc752523ec4027a8d7d32703cfd076','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 11:11:56','IP:127.0.0.1;机名:PC201508311633'),
('21e1b61409c74f73aab7419e8ef57422','登录后台系统','/pub/user/adlogin.do',1,'2017-07-15 11:38:06','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('21f38ae627654a45bbfc89a0d0fa40a9','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-13 17:37:59','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('2228d8b23242440c936e670e502934a1','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 17:24:20','IP:127.0.0.1;机名:PC201508311633'),
('22329b139f574b6a90bcddc85abb5514','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:40:15','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('2234e9249bf64c3fa2bfb6df11b423b4','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-07-14 18:06:30','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('225b5e715aad4dfb90365e12ec00b41d','修改比例信息ID=6','/admin/ordrestatut/upOk.do',1,'2017-08-01 14:51:44','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('22720d5188494d73a449e8b994f542e5','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 11:21:37','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('22b25e37f72f4dc5931cea93f8104255','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-23 11:29:47','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('22d9d81d14ec48a18014434632f7f8bb','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 13:46:14','IP:127.0.0.1;机名:IF-20150627QENP'),
('22e5d7dce6334890914a980736baaa12','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:53:51','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('22f0810e7bce4d41ba402e47a8b0196b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 16:31:48','IP:127.0.0.1;机名:PC201508311633'),
('2303703e83a74deb97f509368698ec0b','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 15:50:55','IP:127.0.0.1;机名:PC201508311633'),
('2338a392a40e44d7a38dbd312a0a6d65','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-31 09:50:17','IP:127.0.0.1;机名:PC201508311633'),
('236995843c214190a2eee9bdaa782759','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-17 10:45:10','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('236cc709fa224731bd05af7261aaac1f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 17:04:09','IP:127.0.0.1;机名:PC201508311633'),
('2387d71ef0624982abea1437504ae7fd','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:28:13','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('23a0012e10304014b36b7ba5f0751c8c','登录后台系统','/pub/user/adlogin.do',6,'2017-07-25 14:38:36','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('23afa8baee9c43338c87226eef9ae50b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 15:35:13','IP:127.0.0.1;机名:IF-20150627QENP'),
('23c54833d531471c878e77fd1f873a35','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 15:33:34','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('23ce18b5258a4921ae94f7beec7bc4a1','创建微信菜单-实际菜单','/qscMobilier_Back/admin/weixin/foundMenu.do',1,'2017-06-27 17:47:10','IP:127.0.0.1;机名:PC201508311633'),
('241e4d90ca514d6dbd91c121a2b1bdcb','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:59:16','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('242068b3fd194b96ae5c1f3359fb3934','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 16:35:15','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('242769c941ed46a2b7a7b72f3c37af0d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 18:20:02','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('2445b33c0d87447dbcc6547706b3d971','修改banner广告信息','/qscMobilier_Back/admin/banner/editInfoOk.do',1,'2017-06-14 14:13:12','IP:127.0.0.1;机名:PC201508311633'),
('2463739ad95047508f50b41c41b78b2b','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 15:01:03','IP:127.0.0.1;机名:PC201508311633'),
('248ef4a0aa0949b389a6f77df5c1ff47','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-22 18:32:05','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('2494a5f1b58b4da3ab72f0124c7482ea','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:09:32','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('24acab285bc4473381c44540c530186c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:41:19','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('24afdcd65dc54ff1b7f628b042e2a276','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 19:51:10','IP:127.0.0.1;机名:PC201508311633'),
('24bd37e9aac14010ad36dafd361bf8f5','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-14 11:57:35','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('24cc654daf7a417a91a91d48e205ecfe','查询用户列表','/admin/user/adqu.do',1,'2017-08-09 15:49:24','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('24f960d482204684875b6e498b043641','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:10:54','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('254741cfddf04bdca1294aef22bdbadd','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:22:15','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('255249797fe44577bf85d1e3b174cc64','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 09:14:55','IP:127.0.0.1;机名:PC201508311633'),
('255af574007b469698796382ad50a9c2','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-25 14:03:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('256f484493364a9cb1013de8f17d486e','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 09:12:27','IP:127.0.0.1;机名:PC201508311633'),
('25834e70539249e69a48b48c41f0fd00','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 19:05:27','IP:127.0.0.1;机名:PC201508311633'),
('25cddfd3713348ab945d569e293edec5','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 11:52:44','IP:127.0.0.1;机名:PC201508311633'),
('25f29aeef2e64982a24a4d01eefb3c74','登录后台系统','/pub/user/adlogin.do',1,'2017-07-28 14:53:38','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('261c4227869244e1b6616aa8a36c8c56','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 16:06:06','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('262f5d993af9413ab286a6f8c75ccfce','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:07:16','IP:127.0.0.1;机名:PC201508311633'),
('263927c4cedd453e93ab346b3f941fc7','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 17:34:36','IP:127.0.0.1;机名:IF-20150627QENP'),
('263fd4a481344d369baa526a2df485d4','登录后台系统','/pub/user/adlogin.do',1,'2017-08-11 14:04:18','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('265e81afd4c6402eb8cf352de6236989','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 13:36:56','IP:127.0.0.1;机名:IF-20150627QENP'),
('268ddb0e290d4b36abd287e7292ccb95','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-30 19:09:59','IP:127.0.0.1;机名:PC201508311633'),
('269cb958dbd3415099734673c9594a1e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:28:03','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('26a1ab2624a248448079319cacc5be31','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 16:42:27','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('26a7bf79434d45f7af41d08e991daa44','登录后台系统','/pub/user/adlogin.do',6,'2017-07-20 11:12:27','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('26a8ec92875c416a906abc9d72a3b781','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 16:14:50','IP:127.0.0.1;机名:PC201508311633'),
('26ac037a1042449f9fe0c0382a5784cf','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 10:12:33','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('26b08f2d9f9147e58af5249d5e599c9d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:23:04','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('26b1af1f2fab492889ad6bb1bce7dfbd','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 17:52:07','IP:127.0.0.1;机名:PC201508311633'),
('26bf778c17ff425c8f4edf728a76a530','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-25 10:51:57','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('270a25374c1c41cba95b47a2a84c8ed7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:59:12','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('27440e85b7274e7995b2546dcfa60a45','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-25 17:29:35','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('27790724d7854aa7882a427de3e8336b','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:11:10','IP:127.0.0.1;机名:PC201508311633'),
('279bf92615284436a8ec455164164014','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 17:12:18','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('27d439b0cd8f43769fe8595768e73c99','查询模块分页','/admin/mod/qu.do',1,'2017-07-19 14:12:14','IP:183.228.21.159;机名:iZmemcvx3hm4a3Z'),
('27dd521aabd14952a4ab0dcccf7ea3a8','条件删除日志成功','/admin/accesslog/detj.do',1,'2017-05-25 10:14:30','IP:127.0.0.1;机名:IF-20150627QENP'),
('27fcd7cc59bc4db7811f377991583a9f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 09:05:23','IP:127.0.0.1;机名:PC201508311633'),
('286589cdcd164be4a77d93f911042cb3','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:18:55','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('2879f895a1fb476b94ef48ad16275622','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:56:04','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('287a95aa334a4bcf81b3a91536c02210','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 10:42:08','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('28aa0cb7d78542ec9107b3d9b88a46f4','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 19:34:26','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('28aadedde7734765934b773cc915a9d7','admin-修改供应商结算：7a21d57c77524322a216c2d295cc83f8','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:40:15','IP:127.0.0.1;机名:PC201508311633'),
('28b3d14ee47146bb9e7e8a7731c52d05','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 10:48:32','IP:127.0.0.1;机名:PC201508311633'),
('28cd6688da394573a8e373b7f00e0b90','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 17:48:59','IP:127.0.0.1;机名:PC201508311633'),
('28fb41f4016b4b3faf58601bbc856011','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:05:08','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('2913bc9f4fb84dfa81297abc27fb9bb5','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-29 17:48:51','IP:127.0.0.1;机名:PC201508311633'),
('292ab24b2f404e0e912e6c1d2c1bc819','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-18 15:43:51','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('293c779fcf394b5e8b9d833617d1960c','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 17:33:13','IP:127.0.0.1;机名:PC201508311633'),
('2942d0468b5d41bb9c4a21063e6c6844','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:39:47','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('294823f96d5742b1a5608c7b708db798','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:49:10','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('295587c5176e48eea461959b6f5fc958','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-17 11:36:34','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('2971986222a04a50b9ad5feb83a9d9fe','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 19:53:00','IP:127.0.0.1;机名:PC201508311633'),
('299668aa1b8b4413bad65cc41aeaabac','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-26 15:47:18','IP:127.0.0.1;机名:PC201508311633'),
('29a428bf50924a888b2328f341d34e1b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 10:00:20','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('29ec5dc3077f44199c5fe3a2919deb65','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:56','IP:127.0.0.1;机名:PC201508311633'),
('29f7d721864a4e92aa84977fb22ac20a','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:31:29','IP:127.0.0.1;机名:PC201508311633'),
('2a01bc6400ff404e81b0792b40afd2e9','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 15:13:39','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('2a205babdcf54ad2b7e41710a4016177','修改活动规则(我的推广)说明（抽奖）','/admin/textevlues/editOk.do',1,'2017-08-10 17:58:36','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('2a349268ad5048b2bbb82d28a656aab8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:39:22','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('2a42c4f9611646149c5465044955e9e5','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 10:26:16','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('2a548af2e25c44acbf97c6c7ae9428b1','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 11:45:14','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('2a7f143598fb429c80ce02f1aaf344f3','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-24 15:26:37','IP:127.0.0.1;机名:PC201508311633'),
('2a8e788fe8394b83802f97a8a4429034','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:11:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('2abae9d7cfc94b0998e242468deb9ef1','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 10:10:37','IP:127.0.0.1;机名:PC201508311633'),
('2ae6959bd2ab4afcaf29d3e0c96abb2f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:14:45','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('2b055691d1d04f21b9a40052c08024c0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 17:42:22','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('2bf5b57473734daab378b788decf2862','admin-修改供应商结算：8d390e04f4b14afebe9062e3ff6e76f7','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-30 16:56:30','IP:127.0.0.1;机名:PC201508311633'),
('2bfc93bff8ad404eb0ec83d973022cd8','登录后台系统','/pub/user/adlogin.do',1,'2017-07-15 11:32:04','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('2c1d1f6b3f0b417c9a333d64416e30f0','查询用户列表','/admin/user/adqu.do',1,'2017-07-14 14:22:36','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('2cf418782f964eeb8670b37e57c17838','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 11:46:50','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('2d0dd09dacae4e01a19fbf5cdda8245e','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-05-27 14:12:29','IP:127.0.0.1;机名:PC201508311633'),
('2d14768a12cd422c93e0d9326604f248','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:14:20','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('2d29000577ea4bb5b565167662fdbdfc','admin-添加供应商结算：7fd553a7095a4744b90d3b3c709d46f8','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:10:52','IP:127.0.0.1;机名:PC201508311633'),
('2d510b9111ca47d69de185999a979873','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 11:06:47','IP:127.0.0.1;机名:PC201508311633'),
('2d5b204a43df4dc398e8c732db22a0d8','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 15:24:00','IP:127.0.0.1;机名:PC201508311633'),
('2d5d3216e69a431abeb45330a4734276','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:04:53','IP:127.0.0.1;机名:PC201508311633'),
('2d5f43d0479c40f6ac303a1e98f28915','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:10:54','IP:127.0.0.1;机名:PC201508311633'),
('2d76cb100e5841b598adc20aa7c922a2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 15:41:27','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('2d7ca6f8392b4ded9d135c6d03cc14e8','登录后台系统','/pub/user/adlogin.do',1,'2017-07-04 10:49:26','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('2d7cbbd6df6a41578f267b934b65b506','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 09:50:51','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('2dad88af207142ff9932f4ca476e2bfe','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 11:34:11','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('2daf8a17e1a248c39b33bae12e0a1e90','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:33:49','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('2db3f585dacb4607bc9f9b1616e82737','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:59:21','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('2de122e684ef4acc9d1d63ee3ded6ff3','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:27:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('2def735f04ca4f2db36a8d3a282471bf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 15:19:11','IP:127.0.0.1;机名:PC201508311633'),
('2e13b4e2f5a84f2ca5dc8a2a26b5a395','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 16:39:02','IP:127.0.0.1;机名:PC201508311633'),
('2e7e78afc4434884b96a862a104dc9e5','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 09:37:59','IP:127.0.0.1;机名:PC201508311633'),
('2e852f8fe8b547cea3040cea21f9988a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:09:49','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('2ea003601c9a452da71a697cdfa0d723','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 09:33:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('2ea8cf1cdf104a459f0771ab83059bf6','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 19:19:42','IP:127.0.0.1;机名:PC201508311633'),
('2ec14bc6ba484834b42f7618aa435f61','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:51:40','IP:127.0.0.1;机名:PC201508311633'),
('2eca3a36fc88424d80bd93397c72c408','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 17:05:17','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('2f12b2155ebc435ea1915dea64f96025','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 13:38:15','IP:127.0.0.1;机名:PC201508311633'),
('2f53a248593a44a7a3b2089355a7627e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 11:50:39','IP:127.0.0.1;机名:PC201508311633'),
('2f6c8956edd940808078900d72dfc700','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:33:37','IP:127.0.0.1;机名:PC201508311633'),
('2fa01b70201d4696ba8f7ffd11a06f28','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-14 15:01:46','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('2fbf4b398e3e4140a4d1803139538a75','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 15:45:05','IP:127.0.0.1;机名:PC201508311633'),
('2fd2fd5af1874da4ae8174fa17c2dc5e','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:42','IP:127.0.0.1;机名:PC201508311633'),
('2fe477e7f2914dcab4043f02b0229485','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-24 10:11:54','IP:127.0.0.1;机名:PC201508311633'),
('301b52a35e574dc990bfc3dc33eff520','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 11:44:10','IP:127.0.0.1;机名:PC201508311633'),
('302876879a6f4570b7f77f1067dbc912','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-05-27 16:40:06','IP:127.0.0.1;机名:PC201508311633'),
('3036990cf08b4068bce7f63b8948f3f2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 15:50:57','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('305ef7a18d1b47338166395d79d77036','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:17:19','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('3080980531dd4effa8d8a2325f70c53c','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-29 17:50:59','IP:127.0.0.1;机名:PC201508311633'),
('308ab4d162414fdfad89c02417672c09','查询用户列表','/admin/user/adqu.do',6,'2017-08-01 15:06:34','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('308f84b56c164ec2b2e04852104aea86','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-17 11:39:17','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('30ba0a3ea5d94e91bd9fb0a265d209a2','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:48:11','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('30d069df03114a1cab06828c2fdbbeac','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-23 16:10:40','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('30d2ae9097af4c51b64e1c85c6b4ed13','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 16:44:12','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('30e88d1e02214814847dfdc503e6642a','admin-修改供应商结算：652324caf4c343be9dedc1556271dd1e','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:13:29','IP:127.0.0.1;机名:PC201508311633'),
('30ec94a2913e4fac835012d8b1c52cae','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 11:32:35','IP:127.0.0.1;机名:PC201508311633'),
('310bf62a5d154e9fa0b58032165df539','重置用户密码','/admin/user/adreset.do',1,'2017-07-20 11:14:05','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('314984c55e084cb494fa5eacb10f580b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 15:41:42','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('31688819dd9b4783aa91fb7f4effb469','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:12:05','IP:127.0.0.1;机名:PC201508311633'),
('317ec89996e442eda89d81b0e71561a4','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-13 13:54:53','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('31a3ddafaa2344779ba6db6812ae8405','登录后台系统','/pub/user/adlogin.do',1,'2017-08-11 09:00:07','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('31a7788b2f8e494aaef68627cd984abd','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 15:06:36','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('31cb4206214e44e290184efa60231aa7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 18:18:00','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('31cb8b104b294c609d06582d44ab570c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:09:39','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('31e9b82da9de4d88a16800b4015fe36a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-17 10:51:59','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('31f524b3f17543a8a268c70f2c92a114','修改会员账户状态','/qscMobilier_Back/admin/account/state.do',1,'2017-06-22 13:48:36','IP:127.0.0.1;机名:PC201508311633'),
('320be2bc456e4acaa4f5b742b6bdbecb','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-05-27 15:47:13','IP:127.0.0.1;机名:PC201508311633'),
('324ef196d44e4c57ab0bb7c257c7f3c7','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 11:33:15','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('32526c2cd63547cebd4eff1c71fae445','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 16:31:22','IP:127.0.0.1;机名:PC201508311633'),
('327667ed3f6e4f40831ce57be0534e61','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 16:53:29','IP:127.0.0.1;机名:IF-20150627QENP'),
('3281905045b34ad6a2374825cfbc831d','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-18 15:46:50','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('328a20fb5c7649dbb794ba4bd2da9895','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 16:41:53','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3296a59d04404283bd8b4a3878b21885','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 11:21:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('329a3ceaa322434c911de2525bf21e5f','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 19:19:37','IP:127.0.0.1;机名:PC201508311633'),
('32b66942d27144929e6dc437cfbe1c64','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:19:41','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('32bbbe5fb56946a190afc988763b23f3','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-06 17:34:52','IP:127.0.0.1;机名:PC201508311633'),
('32cd6b935d78446aaf66e9b91280920d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:14:49','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('3326373a41404498825efe63199da117','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 18:16:59','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('33505b8575d641309a3395130b33138b','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:01:49','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('3373beee1f0c446687045145b0d7a4be','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 18:19:51','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('33870c66fe6f47a38d492b1805dec861','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 11:37:17','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('339be681b79f4cc295482a0be96fe1f0','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 11:54:42','IP:127.0.0.1;机名:PC201508311633'),
('33b56bfb208441ca8b4d37dc81602c7f','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 12:02:00','IP:127.0.0.1;机名:PC201508311633'),
('33b909d9eef34b63abe70ac673727cd1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:15:16','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('33d8eed32dea4876b23f28442ddeffb9','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:15:28','IP:127.0.0.1;机名:PC201508311633'),
('33e53e4bccad449ca280f6857e6871cd','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:11:16','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('33fc4a33f7e04fbdb9998d2bc23d6c8d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:03:23','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('33fd92ea60a5454f90442288ca88d649','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:20:12','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('34107dd43ecd448b8cbda76f286d6080','登录后台系统','/pub/user/adlogin.do',1,'2017-08-03 10:17:15','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('34178713983e441f9d0a66b6dd726a67','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-05-31 09:17:02','IP:127.0.0.1;机名:PC201508311633'),
('3424b2b4c1b74665a48e5a6bcbe65020','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:18:42','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('3424d72f1f0f4a538b6312e47db742fe','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-27 18:20:55','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('34a895fad89c4a53b08d86cb5380e0b4','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 09:31:20','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('34b8222ec2624413a4bea25dd9a74457','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:30:35','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('34cb3ddcf0bb46b8a039d90f768225a5','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 13:34:19','IP:127.0.0.1;机名:PC201508311633'),
('34dc3601ca7d47938a738d90c3400940','admin-修改供应商结算：1afbb22eab08454e999f17589b4394ca','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-22 14:07:56','IP:127.0.0.1;机名:PC201508311633'),
('353ea5993fa44c4bbeb6d1f3880b42a9','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 11:26:13','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('356314e46bba498b9247ecdf6912e818','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 10:47:34','IP:127.0.0.1;机名:PC201508311633'),
('3578a2a7bf514740b2d431e43485cb21','admin-取消供应商结算：5ea2b41b325c445385f384877b31aa2a','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 13:39:31','IP:127.0.0.1;机名:PC201508311633'),
('357cc65dcfb44f1a8eac93b5353119cd','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 18:35:54','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('35a63e07948f4496a9ba1ae3c79b8fc4','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 14:56:08','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('35bc5694249648758a9a9113553e4a63','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 16:56:00','IP:127.0.0.1;机名:PC201508311633'),
('35c05dd925bc40769765c3310d41484f','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:58:49','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('35c7e8d8c8fb481f9823404afeef3311','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 16:39:33','IP:127.0.0.1;机名:PC201508311633'),
('35d3ec6bfb1e4596b003af5abf615a2e','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:51:53','IP:127.0.0.1;机名:PC201508311633'),
('35d51595dccb4aa98b5d60ed8f3d151c','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 10:47:39','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('35fd52bcfb5d438587b94d04c56de609','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 15:21:41','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('36287d3c37ec4a99999ac0a535ff4c2e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:50:18','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('3646807b33b4411991c59f8455f541b9','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 10:05:59','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('3653cdc39dc94315bad8e971eeaa85ff','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 09:51:14','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('366c543d88114e47a07f2b0406ecbd7f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:13:56','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('36ad31359ff34e2f8c17db4fcbafdf27','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:30:54','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('36b02b1f861540d9b5ce2fcb25dff2d0','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 12:01:28','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('36c8a0b6444d4ca4bfc501f259f4b3f2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 16:58:00','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('36d3d8912c0a46e090c6e602d55e689b','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 10:52:30','IP:127.0.0.1;机名:PC201508311633'),
('36ddd66b045e44c6aa7e62fff73664e9','修改订单信息订单编号(主键)：fb68beb6eca24b9797f0e02b3ed61575','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 10:50:31','IP:127.0.0.1;机名:oruke-PC'),
('36eed9e805764008afb66d3871119d75','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 16:46:51','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('376675e48dfb418799ddd42ec018d7d8','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:52:56','IP:127.0.0.1;机名:PC201508311633'),
('377c726d82dc4e9bae31cd163c7f1071','登录后台系统','/pub/user/adlogin.do',1,'2017-05-25 10:24:57','IP:127.0.0.1;机名:IF-20150627QENP'),
('3784f2417d42478f8536245b75cd6d11','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-13 17:33:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('379634df8c7047388f07dd7e9c737f4e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 09:58:15','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('379697d0fc174315843fca53a7b0e1b9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:41:44','IP:127.0.0.1;机名:PC201508311633'),
('37a9f616cc644ebda919d705cff795d7','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:14:39','IP:127.0.0.1;机名:PC201508311633'),
('37aed5d6a420412285b0b477462df162','添加优惠卷','/admin/ticket_info/insertOk.do',1,'2017-08-02 15:09:23','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('37c37c1b12d546f9ab86680bb1556b7a','登录后台系统','/pub/user/adlogin.do',1,'2017-07-18 09:08:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('37e9f8b5b04446f5b2fdbf6f9400425a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:58:25','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3817bf7ee42c4007a8abda27a20d3189','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 17:31:23','IP:127.0.0.1;机名:PC201508311633'),
('38305b7e8bf5484ab08ab855c7fdd81b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 11:10:27','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('386fca1a11a3460094bc38f221b07b17','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:35:18','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('38834e5eb2cf4aa59a40853c4d90fdea','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:36:01','IP:127.0.0.1;机名:PC201508311633'),
('389038e8477547909ce320cf733748ae','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 17:01:38','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('38b4c52c15844fc3b1086bb01043d681','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 14:07:24','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('38d02494f26f49ea9951b6192c886956','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:32','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('38d4a4b324d249309f1bb40d0ea57d46','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-06 16:48:57','IP:127.0.0.1;机名:IF-20150627QENP'),
('38ddda1f1de34903a8db96fd2b1f7d7f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 19:12:12','IP:127.0.0.1;机名:PC201508311633'),
('38fa55cdefd5414fb82b1a6466881a89','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-24 15:54:14','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('38ff7eb1bbe84b77b848dc62dde7417e','admin-修改供应商结算：652324caf4c343be9dedc1556271dd1e','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:12:57','IP:127.0.0.1;机名:PC201508311633'),
('3929a858d92e4f3995b23bf7d962e31a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 16:56:29','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('393e8c0cf9a640c182455b5f40dd20cd','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:03:24','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('39481540df584e85933b99840a60f482','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 09:58:45','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3979079c58f9431db2dd711431948e20','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:23:51','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('3987c7fcc3f14bf1a5cbe5099e6f5c68','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 14:51:08','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('39bf64b28e74476bb96ac1b5bf04a7fa','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:28:56','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('39c1915233974a728be55f5821e3708c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 10:29:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('39cb9e45a8054ffebc4fad9052eef699','登录后台系统','/pub/user/adlogin.do',1,'2017-07-28 09:59:18','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('39f2f020e4a845a29720ea4d79fc4822','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 10:54:33','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3a17236564e04ad7a4166983c0e63a94','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 16:22:43','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('3a30d79e02ea4ecf86aa7a72a76e4969','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 16:37:47','IP:127.0.0.1;机名:PC201508311633'),
('3a3b0e205c4e423da749c26866a178ee','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-14 15:27:43','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('3a5be1c5043d40348a806ad99e684350','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:10:39','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3a7159d2781645bf810e141d90aa98d5','登录后台系统','/pub/user/adlogin.do',1,'2017-07-26 15:19:53','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3a7f551b944c413388b3d73dac386ef6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 16:43:28','IP:127.0.0.1;机名:PC201508311633'),
('3a88a08b59a94b0194bee1b266ac6948','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 09:11:12','IP:127.0.0.1;机名:PC201508311633'),
('3aab3baed7784a4aa0f6fa221bd8137e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 13:43:05','IP:127.0.0.1;机名:PC201508311633'),
('3ac674c5e5ad4c768d065a7edab16d13','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 17:09:59','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('3ac9238b1f1e4c61b2003eacf36c10a1','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 19:19:19','IP:127.0.0.1;机名:PC201508311633'),
('3af56c74cc7e4f70880a30557f99b54a','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-11 15:19:51','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('3b19369f5143481480bc765fd5ac9dd1','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 15:48:28','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('3b215ce30ca14d849a6c2c8d16cedbfc','查询模块分页','/admin/mod/qu.do',1,'2017-07-19 15:48:49','IP:183.228.21.159;机名:iZmemcvx3hm4a3Z'),
('3b21914d64aa4dc589ca0a5ba17d96d0','admin-添加供应商结算：31d02367619341a295bdf50a3eeedf96','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:20:57','IP:127.0.0.1;机名:PC201508311633'),
('3b3af9c78b804d55859186ef2b6a6a64','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 17:49:20','IP:127.0.0.1;机名:PC201508311633'),
('3b422c1b387848ab9fa3a31626350245','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 10:47:32','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3b478ca483ed4307b96af88c37ce6427','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:59:52','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('3b6d1bab28114288b04f8c44ef78053a','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:30:38','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('3bb2d7d996524274a310fe8dae84261e','登录后台系统','/pub/user/adlogin.do',1,'2017-07-13 10:29:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('3bb93a4abc324a449640e5d46995a1f4','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 09:33:34','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3bbd6eff7870453faa15da7a6a407894','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:52:33','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3bcf461d66ae4846a3ac6fb0c3adb25a','查询用户列表','/qscMobilier_Back/admin/user/adqu.do',1,'2017-06-28 14:46:09','IP:127.0.0.1;机名:PC201508311633'),
('3bfa997af10644eb97afba2c0f5170f4','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 16:56:44','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3c162484155a4dca9e0a6f03bb55b685','查询模块分页','/admin/mod/qu.do',1,'2017-07-20 10:30:56','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3c51e7a9ce0e4f849adbc66175d11e7b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-25 10:50:32','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3c5c5ed8e6d24a3a8028a1a8f9620f76','查询模块分页','/admin/mod/qu.do',1,'2017-07-13 10:29:56','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('3c625619856b4fdf9b35445cbc263a66','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:10:56','IP:127.0.0.1;机名:PC201508311633'),
('3c7e5475eb714c2086f9d0bed233f86c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:08:21','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('3c891d836c014f09b32f7dd03eb5c4c3','修改优惠卷','/qscMobilier_Back/admin/ticket_info/upOk.do',1,'2017-06-09 11:17:21','IP:127.0.0.1;机名:PC201508311633'),
('3ccfca7fcfc6459ea637afccb18fe741','查询模块分页','/admin/mod/qu.do',1,'2017-08-08 11:59:55','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('3ce1a9cb2e4f4a10a4ea67e2f3ca95e6','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-05-31 15:34:27','IP:127.0.0.1;机名:PC201508311633'),
('3cfe651a5f924df9a7d208d14dbbeee4','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 17:07:22','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3cff83c47c9c490985859235c10dea51','修改派单信息ID=ecee5482a7324ab18873e30bcc8f25a5','/qscMobilier_Back/admin/InstallerListeEstimer/update.do',1,'2017-06-30 09:52:00','IP:127.0.0.1;机名:PC201508311633'),
('3d05e48482a8407288eaf24f029b3ed1','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 15:39:31','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3d2b106cc0454452871b7e81482f19b6','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:17:45','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('3d343625ce1a4ef9ad975cf0f373e9c1','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 20:13:29','IP:127.0.0.1;机名:PC201508311633'),
('3d34f3011475485ea9c71596bce2a115','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:14:05','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3d41296465834135b9e1f5c553292f48','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 10:13:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3d501704411d427a8a54d053884501dd','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:53:33','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('3d86687c56b24f28a2cadd47de0d68ca','登录后台系统','/pub/user/adlogin.do',1,'2017-08-03 09:50:10','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('3d87e5dc640b466694e0066d6d51bf51','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-02 15:05:50','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3d8d3eefaa2e488888b01d4a28067b5e','修改普通会员注册协议','/admin/textevlues/editOk.do',1,'2017-08-04 17:14:01','IP:106.86.152.173;机名:iZmemcvx3hm4a3Z'),
('3dc69f9297064f9bb24d2f75144fd0e7','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 17:11:45','IP:127.0.0.1;机名:PC201508311633'),
('3e0e8e07465543ad88ab7ce68135aaac','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 16:48:51','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('3e2f8cea9e6144ecafd203ff7b0e5da1','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 14:23:13','IP:127.0.0.1;机名:PC201508311633'),
('3e423b1d6aa641c29ccb84657a20c670','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-06 16:49:25','IP:127.0.0.1;机名:IF-20150627QENP'),
('3e424c3d04304e07a9704ed625ef787b','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-01 09:29:26','IP:127.0.0.1;机名:PC201508311633'),
('3e4ef6f653bc4b1abb47d1f2dda30376','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 14:55:17','IP:127.0.0.1;机名:PC201508311633'),
('3e58d2577a904b649528a9fc0691094f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 14:19:46','IP:127.0.0.1;机名:IF-20150627QENP'),
('3e852c5d8f894b46a3a763506c1879e7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 18:26:47','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('3ea0e01cee7649a7ba80915be386ff32','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 09:48:32','IP:127.0.0.1;机名:PC201508311633'),
('3ed7e154f61049f3a567ac345422ac5b','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:26','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3eee09f7aa3e45a083da62bc9b0285ed','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:19:55','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3f30fc67f95e426fb30218ff7651b9c7','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:02:54','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('3f35d392532e45a6ac1a3b1cdba82161','添加商品分类','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleType.do',1,'2017-06-09 10:05:47','IP:127.0.0.1;机名:PC201508311633'),
('3f46e2aa58f54531a7be2f069066d2f8','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 15:55:10','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('3f54f5f72c7f473f80d99ba4bbbd13f9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:49:49','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('3f71520876c54fc3a8f24e8df1d577b1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:44:18','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('3f9ecfe61d104c2c91dfa67489e61e76','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:27:04','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('3fb0d4993b06490a87453af43f93dc52','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 09:20:26','IP:127.0.0.1;机名:PC201508311633'),
('3fb6055e6fa746638c03dcd9a417c11e','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:53:29','IP:127.0.0.1;机名:PC201508311633'),
('3fd9a304acb0426f9e5808bff263614d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 09:18:35','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('3fe4dd2c7c2a4a408108ec355dc36bf7','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-08 17:07:17','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('400c62c21e02429d8478bf0814614522','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 09:31:31','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4027c79402974f2889501dda183e141a','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-04 13:56:16','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('40e5bdf30c2f4bcdb74d5def1ef671c5','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:56:28','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('41069da041af412289750b473bdb0955','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-21 16:30:52','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('41170c22a58e48b8a00af8813b91bb94','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 11:12:38','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('41193886402f4b2799ccc8be35a80565','登录后台系统','/pub/user/adlogin.do',1,'2017-07-25 15:11:34','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('413851e338f7454f9efdd8ca4ccfe760','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 09:12:09','IP:127.0.0.1;机名:PC201508311633'),
('4146719e72ee4e238bd5d4e887595df8','登录后台系统','/pub/user/adlogin.do',1,'2017-08-11 10:42:27','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('418494e7b33d41b2a1e497752c60e7ec','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 09:20:17','IP:127.0.0.1;机名:PC201508311633'),
('419966b9699048b1bbfbe4f5e89efd95','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 10:08:39','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('419c677901d74af6aaca1e1115386021','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 11:22:05','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('41bd422b77e64681a198d368a4a7b819','修改订单信息订单编号(主键)：accb04f0e26d4009b511958c27ff00fc','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:20:11','IP:127.0.0.1;机名:oruke-PC'),
('41ca6dada0394091ab57f2d532b27c50','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-09 10:09:13','IP:127.0.0.1;机名:PC201508311633'),
('41ddf1619af44b3193bf83319c05f78f','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 19:43:48','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('41e928591c12404e916659ac8d731627','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:01:08','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('41f6e434f70c446b8b97d9f149681c90','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 14:44:16','IP:127.0.0.1;机名:IF-20150627QENP'),
('41f888a6957e4197a25f7a96d6f1d430','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-21 16:49:42','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('420f841906dc43fe8b7647ae82195b03','修改比例信息ID=4','/admin/ordrestatut/upOk.do',1,'2017-08-01 14:48:58','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('42686f6d9e504d6d889c5bb6981de94f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:28:51','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('42acc72685ff4db3bebd275c283f5381','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 17:52:16','IP:127.0.0.1;机名:PC201508311633'),
('42d6adb8083b446fb97ae51c6e3d04b8','登录后台系统','/pub/user/adlogin.do',1,'2017-07-13 17:30:57','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('42dababfaa0d4154a178ee9e3e175aa5','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:10:48','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('42fd0984204d450fab57a6cb3a254c9f','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 09:47:36','IP:127.0.0.1;机名:PC201508311633'),
('4330c91ace8940a6ac4d50db446e39a0','修改订单信息订单编号(主键)：fb68beb6eca24b9797f0e02b3ed61575','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:42:40','IP:127.0.0.1;机名:PC201508311633'),
('43471fc0537f49a9b1c75e6df5d6b431','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 13:57:08','IP:127.0.0.1;机名:PC201508311633'),
('434d14cc22ff4722b86736a8dd159799','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:07:07','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('434dcd680b954edba152f4d21c6c1fa2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 18:46:53','IP:127.0.0.1;机名:PC201508311633'),
('43500f621790422dac6e44612555042e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-21 14:49:31','IP:127.0.0.1;机名:PC201508311633'),
('4350e174b7794067bf8c6366bdce77a9','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 15:58:51','IP:127.0.0.1;机名:PC201508311633'),
('437d12d5477549b2a55e417bdcca58ef','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:00:26','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('43843d66fa8d466ca0ac53c688318c15','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 17:46:21','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4389f35508554184b7f3b5cc180d12bb','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:38:38','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('43a27efb3a0e4785a225d7a83b0c583b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 15:36:10','IP:127.0.0.1;机名:PC201508311633'),
('43b62f76d54043c68e732fea0bbf7fed','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:19:18','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('43e817d3c872480ab9477ee50b6cf13b','修改订单信息订单编号(主键)：ec62bdc9eb694f83b00bcca8b1290be2','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 14:30:13','IP:127.0.0.1;机名:PC201508311633'),
('43eceb8a67fa41cd9170cccaa0b07d62','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:08:31','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('44046e70f7f3452288bbcc590d5dabe1','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:13:23','IP:127.0.0.1;机名:PC201508311633'),
('440e3c7c1483496aa04bc1b22f0969a9','登录后台系统','/pub/user/adlogin.do',1,'2017-07-13 09:33:22','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('440ef8cd4aef423c8426c33ccde70814','登录后台系统','/pub/user/adlogin.do',1,'2017-07-21 14:26:17','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('444c1a42d6c646439786f33bcb4cc2cf','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:25:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4452296eaf5a4d4db50d0df9dc053693','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:46:26','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4453d0e133064dcb81370f2754459918','修改商品','/admin/userGoodsMeuble/goEditMeuble.do',1,'2017-08-11 16:24:24','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('44a2c4a540e24b6bbe66bffa527405ac','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:01:39','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('44b32f289e2e44dab72b563e9b99a193','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 12:05:40','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('44f2af603b0042ae96f9f9cd205a5da3','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 18:10:18','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('452af69ed2004cbd8b805cc32272f994','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 11:11:24','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('45307a4c85254a01966308eb4c1b2ea6','admin-添加供应商结算：683971a1d1e04b3bbb18de7d6c2dcf53','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:04:25','IP:127.0.0.1;机名:PC201508311633'),
('45376144b00449e48b4f4ad5274bb8ef','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 11:52:09','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('45753681b4bd4ab3841661390bf1b69e','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:32:50','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('458ef7a5c57a444aa53a0f7a50c43e15','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:12:24','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('45aa6a019e7f4f8eb7db52f52ba0ccb8','添加商品','/qscMobilier_Back/admin/userGoodsMeuble/addMeuble.do',1,'2017-06-09 16:50:03','IP:127.0.0.1;机名:PC201508311633'),
('45b29be7b6ae4b9288939d626cfd7bb9','修改模块','/admin/mod/up.do',1,'2017-07-08 17:05:29','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('45cc7359d97d452bb425b824b0e35f61','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:24:02','IP:127.0.0.1;机名:PC201508311633'),
('45fbcb8d3b8d43b0aec22177be167504','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:58:14','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('46050751a1a448379147e725c909c3a1','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 22:46:29','IP:183.228.18.229;机名:iZmemcvx3hm4a3Z'),
('4606e4b07e7945b9a4f49cdde55d0a36','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-18 17:45:45','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('461456c0875941c0b7a44c5f555e4d77','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 15:25:25','IP:127.0.0.1;机名:PC201508311633'),
('46159ce04117468399464707b8bcf290','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 15:48:45','IP:127.0.0.1;机名:PC201508311633'),
('464c5e38ebe44c09b0bd48283d5c8d22','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:48:23','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('46869694498d47278cb793e54bd9605f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 15:35:17','IP:127.0.0.1;机名:PC201508311633'),
('469331d90a434751a00684e817b439aa','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:10:47','IP:127.0.0.1;机名:PC201508311633'),
('46989273c6e448348da7d22058f5f939','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:33:36','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('46a989b5e6ae4a2dace496dcbbcccac5','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-05 11:42:31','IP:127.0.0.1;机名:PC201508311633'),
('46c36f7fc65c402ba6bb1856b18a6732','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:40:35','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('46d150dc592a49198ceccfc0975c1b7d','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 15:03:16','IP:127.0.0.1;机名:PC201508311633'),
('46db2470302946f39c4fd7faed114e8a','删除角色','/admin/role/de.do',1,'2017-07-20 10:54:53','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4700f6270355459bafdabb75bde0ec1f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:07:45','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4712320f52634a83804bff0d005b9d07','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 15:50:51','IP:127.0.0.1;机名:PC201508311633'),
('47778ebcf7bb4cae9abf12cde17c2e40','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 15:52:36','IP:127.0.0.1;机名:PC201508311633'),
('4785a2d81451430aaf235539d6a1821f','登录后台系统','/pub/user/adlogin.do',1,'2017-07-18 15:49:07','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4787faf3e20a4eb1b670f80c3a649ee4','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 16:41:02','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('479797e11bf1421d8487c14ff3f09402','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 18:10:04','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('47991a38d642471d9e06c7cae82bfb33','admin-取消供应商结算：c038bdf395b7438eb46535b964ed1ad1','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 13:41:17','IP:127.0.0.1;机名:PC201508311633'),
('479dca3513274f6daa2e2959ab50e4f3','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 18:26:37','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('47a35d229608416789cc82f51d223add','修改会员账户状态','/qscMobilier_Back/admin/account/state.do',1,'2017-06-28 11:41:28','IP:127.0.0.1;机名:PC201508311633'),
('47a9bda3a65e44d09466122419a67fce','修改货运操作指南','/admin/textevlues/editOk.do',1,'2017-08-08 19:48:40','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('47d4000d64ed4731a2daccb22439391f','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 18:51:33','IP:127.0.0.1;机名:PC201508311633'),
('47ea5cc0b0694421869039b1f0afe303','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-25 10:02:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('480fdebe61e74ea190a644faa4e4b043','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-23 17:33:04','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('48160dca3a014e37aa4db797bd370016','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 11:11:01','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('481dd9d0ebb542d4bc15781efc0bb1b1','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-29 13:56:20','IP:127.0.0.1;机名:PC201508311633'),
('4826ce29c8eb4c21b15d4e3f3164f218','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-27 18:20:43','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4840f33e436e451c9aff5c060dff8572','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 14:59:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('484c4b25ca344c2a933e3b7bfea22629','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 16:11:50','IP:127.0.0.1;机名:PC201508311633'),
('4857b5ab480443fba53a613d42b83709','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 11:08:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('487a328ee5cb4064b100d2a29f8b4792','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 15:31:06','IP:127.0.0.1;机名:PC201508311633'),
('48e8bbb4c407402fa5c613b79271a443','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 09:56:56','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('499948a4ab2a42bca8d1e2b291246435','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 17:46:25','IP:127.0.0.1;机名:PC201508311633'),
('499c1b4a022c4f0b8bdf651a9cba4ed2','查询用户列表','/qscMobilier_Back/admin/user/adqu.do',1,'2017-06-22 14:40:07','IP:127.0.0.1;机名:PC201508311633'),
('49e5a7fe2caf48ea9072cae4838e3eb9','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-14 15:29:04','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('4a04db10d1cb40cb9c65db6caf0cfaa1','修改订单信息订单编号(主键)：3655dd11d92a415e9b148412ec0206e3','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-28 16:19:50','IP:127.0.0.1;机名:PC201508311633'),
('4a19c11be9d043e1a5ce3d80bb32c4fe','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:59:06','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('4a5f5740226144358fbde324c89dc4ff','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:18:31','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4a93ca6b897f4115993ec2cb92812ceb','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 16:53:00','IP:127.0.0.1;机名:PC201508311633'),
('4aa18e1016884f648ae75d9a423b3450','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:40:08','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4af310fdced74782826ad4a1cdb48b17','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:15:35','IP:127.0.0.1;机名:PC201508311633'),
('4b048e8e78334134bf80ad744b94efdb','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:52:45','IP:127.0.0.1;机名:PC201508311633'),
('4b092e2992d74136b5a53d8f93758b11','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-23 11:55:24','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('4b0a1437177c4940ada5a98004c737ab','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:31:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4b1581a591c14c60bc067fad845c4e9d','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 10:55:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4b1937dcaf8a4a4cbb32fae3a032a96a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 10:46:00','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('4b1eb395fdc2436185851c638a6182e9','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:45:59','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4b23ff1ef78d418599ebe9519f377240','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 15:58:50','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('4b34a8a85e3042d3a24620a374d51cba','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:34:31','IP:127.0.0.1;机名:PC201508311633'),
('4b3a0dd455ad4351829a1cb5cf714b1d','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 10:48:59','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('4b41f7c1faa9418d8e41a4092a49c464','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 09:59:54','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4b652c5d427d405987d7c42d2c492057','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 15:19:35','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4b66e0c3a7384dd890f448070d8ed1b3','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 12:55:26','IP:127.0.0.1;机名:PC201508311633'),
('4baf36184ac04ba7acae3e3caab8ac45','修改订单信息订单编号(主键)：bbbe9e1fb07e4c89845f5a96042f2c61','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:28:46','IP:127.0.0.1;机名:oruke-PC'),
('4bd1a423a85d4136843a4f4e5dfa6cfc','admin-修改供应商结算：72eb353a6b114a23ba41284bfb31dfc0','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-30 16:54:32','IP:127.0.0.1;机名:PC201508311633'),
('4bdbdc178f1647ac87446209040c2309','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:32:37','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4bdce75babe347fea14a7a4dcd59e270','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 10:00:34','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4c02c9b42d9e4156bc4619f439fc389d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 16:05:42','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4c0bab19224046aa8b42cdba315171e3','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:34:33','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4c1d29baf5dd4633bbbc3fb706d1a61d','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-07-03 10:55:00','IP:127.0.0.1;机名:PC201508311633'),
('4c2c900952b04f0ebe1f694a2ea29f35','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:48:54','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('4c3388fd646d48869c23de73693f5f6c','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 14:37:06','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4c5dc766a21d478fad553a654bab3b59','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:47:39','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4c882281cddb4d55b4f4083d0c991b1c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 11:01:18','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4cba74c60d9e41fcab1c15a3cadca1ec','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:29:42','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4ce27c1f18954d3ba7a9ef826caaacda','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-28 10:34:13','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4ce6b2a08ad94481ae0c347bad9f1484','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-25 10:51:36','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4d2c66f490bb4867aadf01da75037825','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:13:38','IP:127.0.0.1;机名:PC201508311633'),
('4dedc7ab536746eab9d762a6c5cbfc0b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 16:18:40','IP:127.0.0.1;机名:IF-20150627QENP'),
('4dfc2e0f630646c78ca010b2e11af1cc','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 12:01:04','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('4e05707bb1b349c5ac2a7a61c4a15b1e','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:15:23','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4e0d96054faa4ec8a2ce4808225bd49e','修改订单信息订单编号(主键)：88e428de1fcd4db28e5aa72279aea5e4','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-27 15:06:24','IP:127.0.0.1;机名:PC201508311633'),
('4e0df155f4144bfbaa15b84acc9804ee','修改订单信息订单编号(主键)：fb68beb6eca24b9797f0e02b3ed61575','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:42:37','IP:127.0.0.1;机名:PC201508311633'),
('4e32b7cdbc484457b23e15148635606c','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 13:47:55','IP:127.0.0.1;机名:PC201508311633'),
('4e492d60772d46e894ee2a8de4e7a51c','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-14 11:46:11','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('4e49c9c9e243433aabda71f1a7b75c30','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 18:56:11','IP:127.0.0.1;机名:PC201508311633'),
('4e4bb634ba8d4a6f8ea9cbec7b4f996a','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-18 10:02:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4e74b08653574214a6d76f098ca929da','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 19:04:03','IP:127.0.0.1;机名:PC201508311633'),
('4ea06bd2e0334090961fe4bb72174182','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 16:28:01','IP:127.0.0.1;机名:PC201508311633'),
('4ea5410621ae4c91a9cce1f11c063067','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 14:24:04','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4ed829faf89e4070ad68b1e34edfbb65','操作发送短消息','/qscMobilier_Back/admin/phonenoter/addSendOk.do',1,'2017-06-27 16:07:10','IP:127.0.0.1;机名:IF-20150627QENP'),
('4eee7054e5e7433189cc592e1ece1fc7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 17:05:50','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('4ef82cd7e9e54a409dbcc805b40fb8cf','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:52:28','IP:127.0.0.1;机名:PC201508311633'),
('4eff4712fbaf471b827cccc72b56fc8e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 16:52:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('4f122170712f42789906cafb8d9484ad','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4f21785f801548a0923e8fe6b4945f00','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:20:38','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4f25904cd8234f949392c8eb96ce026d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:14:55','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('4f49e93c7475420f954f01abaad1b574','登录后台系统','/pub/user/adlogin.do',1,'2017-08-07 09:13:28','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4f54cf17f0f24967b25e8e3e62e1d527','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:30:36','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('4f94611763e9497899e1e06a373e9dd5','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 15:09:12','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('4fd3b549b19f47f0a2ec8aca821e8bd8','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 09:56:38','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('4ff2d783b2c645e39b2d7f6de9da6874','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 17:58:53','IP:127.0.0.1;机名:PC201508311633'),
('4ff97b2b9de7402aaa99ba087aedcdf6','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 18:54:37','IP:127.0.0.1;机名:PC201508311633'),
('50006283d30e4eada1b700f8b31e16f5','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 16:52:45','IP:127.0.0.1;机名:PC201508311633'),
('501062fbf4424840a3bd1d1f48fc27b8','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:08:03','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('501437ac1ee0427c9373dd3d2442df9a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:24:07','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('5018329880a54d31b8d6f28c96dd70e4','修改订单信息订单编号(主键)：fb68beb6eca24b9797f0e02b3ed61575','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 10:50:08','IP:127.0.0.1;机名:oruke-PC'),
('5051c2fb428443e7a2547a37b4d07e53','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:18:33','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('50836fcaa9a5416d845d945bb0fd08fb','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 14:56:20','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('508bd555047d449f8ac133b6dcce7a17','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 14:38:08','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('50c259e46591428ab916a05da6231312','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 14:26:25','IP:127.0.0.1;机名:PC201508311633'),
('50ce47a0dbc24dbb8669b35588decd2d','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:56:42','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('50f5ee587f0b4abfb9337c572533f3d3','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 11:12:05','IP:127.0.0.1;机名:PC201508311633'),
('510b0f8221b5460b933216e8cc7dd6b9','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 15:19:40','IP:127.0.0.1;机名:PC201508311633'),
('511d7f98f5b04444bccda54af0131b05','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 16:49:54','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('512aa2738d754feaa35fccfbef9d535f','添加商品分类','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleType.do',1,'2017-06-09 10:06:42','IP:127.0.0.1;机名:PC201508311633'),
('5132c05176c54978ab88933797bf4cbb','登录后台系统','/pub/user/adlogin.do',1,'2017-07-15 10:30:16','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('51340a344d45448596a8bb01425f7475','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:39:25','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('51372151635a44bf9add7d19ab4c03e4','添加积分商品','/admin/point/addGoodInfo.do',1,'2017-08-11 15:50:37','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('5139c10818124e7994886e045dcde5c0','修改优惠卷','/admin/ticket_info/upOk.do',1,'2017-08-02 16:44:02','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('5189c005826a415e929726d7e97c4236','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:13:26','IP:127.0.0.1;机名:PC201508311633'),
('518ab42a34b14e24b029e84c93524561','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:15:38','IP:127.0.0.1;机名:PC201508311633'),
('5195e14210e949dfaf4d8f71262c941c','登录后台系统','/pub/user/adlogin.do',1,'2017-07-27 14:00:08','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('51d1a182c4a04de1a79a62eb582ec876','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:11:05','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('51e0f1ec419249e58d83018b642e68b8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:22:04','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('52025bb451a74296a9c20f46dd58e9f9','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-08 11:53:48','IP:127.0.0.1;机名:PC201508311633'),
('5222869d779b4931aaa452486a165d49','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:49:06','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('522d5c3155ac4e128ece1d61527bd5e1','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-18 09:59:28','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('524ceff06f6e4579ac0ad0e6b20dc677','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:40:45','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('528941d9b8644ff0aae0031f67ce8779','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:20:23','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('5289cc84828e40b8b013d7f33473902c','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-21 18:10:32','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('52e9c1b603ec4159bd390297a5956a11','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 13:57:24','IP:127.0.0.1;机名:PC201508311633'),
('530a46d6121b4e608c2d8c5446cbb842','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 18:17:37','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('532d553288b342e1adb96af447d36652','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 10:45:50','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('533b398b4e8d4bfeae366d7e0140b37a','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 14:45:02','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5341f3ccb0f6413abd45f66b38450592','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:53:59','IP:127.0.0.1;机名:PC201508311633'),
('535d124bf8e8423080efeb8da9dc417e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 15:14:44','IP:127.0.0.1;机名:PC201508311633'),
('537a737a02884f8cbba808f453192bb5','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:05:46','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('53896daefc444fd58f1a91659c979dca','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 17:43:07','IP:127.0.0.1;机名:PC201508311633'),
('539b12e40775430d9637076b111249de','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 14:03:48','IP:127.0.0.1;机名:PC201508311633'),
('53a9a24e790747519c21ed0a750f6aa1','查询用户列表','/admin/user/adqu.do',1,'2017-07-14 14:22:42','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('53ae2dcba93d4712b29d23119fb73eac','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:14:13','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('53ef8ad299ae4aceb9c10ecfa0ccf729','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:10:28','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('53fc46a953c644f594d30a738c8a06da','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 12:55:24','IP:127.0.0.1;机名:PC201508311633'),
('54453561f03341fd9c18e22b230dd35d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:34:34','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('544751a3abd1491591d45cc84d60b107','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 12:05:22','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('54a04c83252945d495037a479f351a94','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:39:06','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('54b2e1342e9545cb8d979ee1a3f31d6a','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 18:25:59','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('54ef05356622453687916f450156e973','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-07 18:17:54','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('5504b12945794fcea6d87420ae541b8b','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 11:12:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('55216c5d83164652a7bce41a70d37ad5','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:14:44','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('55622f83b33346e8a81af9958486fb66','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-26 15:47:16','IP:127.0.0.1;机名:PC201508311633'),
('55881ac017884d0ab180c0885285d7a3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 10:12:09','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('558fc574b0734db0a371bb6576528410','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-01 09:29:22','IP:127.0.0.1;机名:PC201508311633'),
('55de08db7776411ab2ec3a266b891794','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 11:09:36','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('55e83fecf1ff4078ada306fd4d14afb0','登录后台系统','/pub/user/adlogin.do',1,'2017-08-09 09:06:53','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('55eb2031aa9446fa8d253451511b70fa','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-28 14:54:28','IP:127.0.0.1;机名:PC201508311633'),
('55f283db7af4449eba60705da0f06002','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 14:23:36','IP:127.0.0.1;机名:PC201508311633'),
('560cc5b6a35f451e97b4a20d0c5ff675','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 12:02:04','IP:127.0.0.1;机名:PC201508311633'),
('560ee0e6cc494e00b107b66b828ee739','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-29 17:51:02','IP:127.0.0.1;机名:PC201508311633'),
('56229769ebce4e23bdf320f7bc397e84','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:55:18','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('56429bd0e1ec46469425ef6e6f480618','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:36:36','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('56512f29448740499ef9451d58d95547','退货申请信息修改','/qscMobilier_Back/admin/UserMeubleOrder/updateReturnInfo.do',1,'2017-06-01 16:18:13','IP:127.0.0.1;机名:PC201508311633'),
('5663ceecebed4327a1bd03a53d8477f1','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-04 14:53:52','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('567e323798f24c2aa02c81e64a7cf2a9','修改订单信息订单编号(主键)：accb04f0e26d4009b511958c27ff00fc','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:20:22','IP:127.0.0.1;机名:oruke-PC'),
('56858a90862a47fb9df8516d2f7a13d9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-21 17:23:14','IP:127.0.0.1;机名:PC201508311633'),
('56986f4859394dc5afec732e57118a9b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 14:04:11','IP:127.0.0.1;机名:PC201508311633'),
('56a8151ddb18487499faf0050bb6c0b8','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 15:18:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('56cada65f5854bc0a1d6c52b0a731107','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:08:09','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('56ee5fd4d8204dacb5302021b58aad26','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 16:56:55','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('57167d74ff47493fa6f6fe40b5a74613','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-06-28 14:55:07','IP:127.0.0.1;机名:PC201508311633'),
('57389265bbb6447484cb87fef162612b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 17:57:26','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('57c3414a5bf9401dbb157a0fd0d2e517','查询用户列表','/admin/user/adqu.do',1,'2017-08-11 16:09:01','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('57e5ba7580814558b06338ece012630d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 10:34:23','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('57eba51d66e44583b29cc825a811860f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 09:01:11','IP:127.0.0.1;机名:PC201508311633'),
('57eef41b7dc5401bbd55318b9757a136','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:16:09','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5848df1c5f7545b9951dfcd6800a8427','登录后台系统','/pub/user/adlogin.do',6,'2017-07-20 11:17:26','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('584e4b8593c0477ea8bc4c32e3aeeb67','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-23 10:54:45','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('5883346ec14348159ea8db0b71043d70','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:10:47','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('588f3f65552e4d348cc399b36a963464','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 17:46:11','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('589123f972664f04a6f069eb15bea821','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:33:51','IP:127.0.0.1;机名:PC201508311633'),
('589c754db47a42f18e7bd90fd242820b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:04:41','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('58a2fd83295748e29078365249231efe','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:19:28','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('58c8cd81b7fe46bb9d3a1a04f730aebd','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-23 11:27:41','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('591012384e794284b3c57134e06e5fe8','删除模块','/qscMobilier_Back/admin/mod/de.do',1,'2017-05-27 14:13:41','IP:127.0.0.1;机名:PC201508311633'),
('593b510602174316b2d0724545a07fd8','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:18:22','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('596546e6eb4540e0a6b2ef6056fd3e5c','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:35:08','IP:127.0.0.1;机名:PC201508311633'),
('599546a9215c44e197166b4dd242ff06','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:30:41','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('59a324bcd98e496d92a1ae11e3ba8a05','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:09:55','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('59ab9777d1284dbc9d3f5b7b6afcbc49','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 18:42:00','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('59c308dcd71b41a9bf574392d0048ad3','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 11:34:45','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('59c783f6479648b6a9a2ff04756323d0','修改订单信息订单编号(主键)：88e428de1fcd4db28e5aa72279aea5e4','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-27 15:06:00','IP:127.0.0.1;机名:PC201508311633'),
('59ca78f8294a40c9b29761306a9d2692','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:58:14','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('59d1a789ae24429d9b1f1b0445547a48','admin-取消供应商结算：7fd553a7095a4744b90d3b3c709d46f8','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-08 14:18:22','IP:127.0.0.1;机名:PC201508311633'),
('59d3499659b84163b87e9956081f752d','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 18:12:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('59dcdff241944ebdb6e2cc91638319b1','登录后台系统','/pub/user/adlogin.do',1,'2017-07-08 16:41:36','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('59fc452b80df4413baaba639531b4a20','登录后台系统','/pub/user/adlogin.do',1,'2017-05-27 10:28:45','IP:127.0.0.1;机名:oruke-PC'),
('5a5868a0078c42f8b0675ff452f03043','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-26 15:11:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5a831e5fba3d47a8b213457afcc793c9','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 18:07:47','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('5aa67446193e43329ae4169d3f06c192','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:10:34','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5ab776780b0249c48f5118ebd14b184c','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-01 13:44:14','IP:127.0.0.1;机名:PC201508311633'),
('5aebbbca4ab04d629dffc76b1a0ab6c5','登录后台系统','/pub/user/adlogin.do',1,'2017-08-03 10:41:55','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('5b01b0c6034f408aacdcd7b7da2f6cd8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:35:44','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('5b0e6fcb1f3745aca5f29cca59050e7f','登录后台系统','/pub/user/adlogin.do',1,'2017-07-15 11:23:48','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('5b27846b407a405f882fbaef0af1d9d3','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 16:07:10','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('5b3d70391e474ee0892d2d523294c568','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:54:22','IP:127.0.0.1;机名:PC201508311633'),
('5b4e9d7c23dc4b0e9447a1560e3afbcd','创建微信菜单-实际菜单','/qscMobilier_Back/admin/weixin/foundMenu.do',1,'2017-06-27 17:47:11','IP:127.0.0.1;机名:PC201508311633'),
('5b8771a69735482c8e047c38b3083868','登录后台系统','/pub/user/adlogin.do',1,'2017-08-07 09:43:35','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('5bca0ee12cb1420e992a1cf4a19a876b','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:53:28','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('5beadc0434e542359d6ed6e9a5a7e229','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:54:43','IP:127.0.0.1;机名:PC201508311633'),
('5bfdb02658b7461cbb97d1d7b9657419','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:12:56','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('5c18294d81594de69ef6cecbad870d15','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 11:11:22','IP:127.0.0.1;机名:PC201508311633'),
('5c19ef6976d74f9995f8074f90118ac1','修改活动规则(销售额度)说明（抽奖）','/admin/textevlues/editOk.do',1,'2017-08-10 17:59:49','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('5c1b5a4cd5f547d6b3a708a4ab0e175f','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-05-27 14:12:04','IP:127.0.0.1;机名:PC201508311633'),
('5c237bb2b0274b03aa3f08bfd3a36d00','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 14:38:16','IP:127.0.0.1;机名:PC201508311633'),
('5c2c80e7cbe44eb9837edce019d20ab3','登录后台系统','/pub/user/adlogin.do',1,'2017-08-04 09:02:32','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('5c36e20ecb9f410983d6376f228c2dee','登录后台系统','/pub/user/adlogin.do',1,'2017-07-17 10:41:13','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('5c3fd406c0c0452f9b25a6280692c544','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 18:03:40','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('5c47934ee9204a79926b40c899069fa9','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 16:33:21','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('5c508b0b8ef1474785b7758c03bbe384','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:51:04','IP:127.0.0.1;机名:PC201508311633'),
('5c75a8dfe9fb4c00b3dd388102ddc5fd','admin-修改供应商结算：72eb353a6b114a23ba41284bfb31dfc0','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-30 16:54:22','IP:127.0.0.1;机名:PC201508311633'),
('5c9d8cf4164f4e93a9e7192b855c4675','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 17:46:35','IP:127.0.0.1;机名:PC201508311633'),
('5ca6a203ee1e4c1eaed3c2f57fd09bf1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 17:06:00','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('5cd64eb2e8ef4aa4acdd6c03be109419','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-26 14:51:43','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5cd9e320fd42479d919bd0372f1ad35f','admin-添加供应商结算：e15a1019cd6e43498d2196b4ae1f7d94','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:39:54','IP:127.0.0.1;机名:PC201508311633'),
('5ce1c5a5639e403e9b34196a2dffa9ab','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:35:37','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('5cebb1bcee154510aa74cb314ebbab4f','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-21 10:24:31','IP:127.0.0.1;机名:PC201508311633'),
('5d1685f3fdac4da69180f2277ab22afc','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 10:50:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5d259c6991294b53a677040c9561f8d9','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 16:33:12','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('5d2fc75635394ec5b5ee898fbca927c9','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 17:10:17','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('5d767ff1f56a4a28938fdfedad87f376','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:18:38','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5d7926325e834b7498db59014213ec54','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 18:56:11','IP:127.0.0.1;机名:PC201508311633'),
('5d87d3cb46744e60b522ba04b7037b61','登录后台系统','/pub/user/adlogin.do',1,'2017-07-13 09:32:22','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('5e049084775a48a2a551485833303230','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 18:12:51','IP:127.0.0.1;机名:PC201508311633'),
('5e32a7a2912649fdbc1c14fa654037e5','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-06-22 19:20:26','IP:127.0.0.1;机名:PC201508311633'),
('5e4633cabddd47fbbf0d52367c990f15','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:30:11','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('5e476a899151428c83445cee6dfe039e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 16:38:49','IP:127.0.0.1;机名:PC201508311633'),
('5e6cd1db147c437eb9daf1807b933e17','更新系统配置','/admin/syscon/up.do',1,'2017-08-07 19:01:29','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('5ed08aead18b47b087cda8c4a1c98926','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 19:24:56','IP:127.0.0.1;机名:PC201508311633'),
('5f198add665b4a1889326e9d929c54fa','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:27:28','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('5f1bafd9c7d34f0f8cbef853e4312f59','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:35:47','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('5f31a1c6b4b7471691afa9134158f811','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:49:58','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('5f4a007132d741df832b1e4ee865b8b5','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-03 16:01:06','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('5f50f8dfac524317944e9793a2232b05','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 18:56:11','IP:127.0.0.1;机名:PC201508311633'),
('5f5b809ec0704eb08ac4f52103eea053','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:37:45','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('5f6c4103ce594fb8b7f65f727af392f4','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-22 18:33:59','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('5f8a3eea96e84202a1ee4ca47e27986e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:49:41','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('5f8f3d96a8d64c97a9f4a2a850219dbe','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:07:56','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('5fb69de25a8843b6a79fb86a7c731687','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 15:57:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5fb9eccb82bb4b23883c16c41527cc2d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 10:00:08','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5fe7f9a239284f11896b037d4d89d96c','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-28 14:54:26','IP:127.0.0.1;机名:PC201508311633'),
('5ff0cf0017404249ad6c7da70cc8d5f2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 18:03:53','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('5ffcb8cef34d45988cf186bb7ccdd592','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 09:59:07','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('5ffd842ef350407d93c36108bc22cc2b','admin-修改供应商结算：652324caf4c343be9dedc1556271dd1e','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:13:06','IP:127.0.0.1;机名:PC201508311633'),
('600064eb81c44be9b14d4cbe3cf83999','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:05:16','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('600c059a3dd6439ca7e8d128615a8752','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:25:03','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('603766fd75f14357bfd12f63380603a7','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 14:16:53','IP:127.0.0.1;机名:PC201508311633'),
('607d53cfab1841258a1c33279d772d38','修改优惠卷','/qscMobilier_Back/admin/ticket_info/upOk.do',1,'2017-06-09 11:17:36','IP:127.0.0.1;机名:PC201508311633'),
('6088844d58884243833b5aeb26d16f71','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 13:35:41','IP:127.0.0.1;机名:PC201508311633'),
('60bc54418fc1436981dcf3a98932d39b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:40:56','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('60bd4829f6854040a4769d3c14198cc0','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 16:32:20','IP:127.0.0.1;机名:PC201508311633'),
('60cb2c7e393749b3ad5c5550cdd56f3d','修改订单信息订单编号(主键)：bbbe9e1fb07e4c89845f5a96042f2c61','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:28:52','IP:127.0.0.1;机名:oruke-PC'),
('60d0ecd923c1410f935f846e0d54b1c5','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:19:49','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('60d3d0e8632641c08b303ff2742eb610','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-13 17:36:32','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('60e6287939244c84893af9d7b868e8df','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:21:33','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('60efb3511f7c453d9e4ced9d52c45a4f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 12:01:44','IP:127.0.0.1;机名:PC201508311633'),
('611af12a8d554ccfb39298e896f873f7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 16:05:52','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('616c520376ca4100a7457423aee82f2a','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-05-27 14:13:35','IP:127.0.0.1;机名:PC201508311633'),
('61757e914f1a4b3980cce4180ef3e0ac','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 12:02:30','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('6188bbe17bba4fe08b97c7e613dca2be','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 16:29:25','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('61c9cd45cbef4cb1baaae84b5187dbdd','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-21 15:34:03','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('61e6960e5eab452db60dd3ef0f63cfb0','登录后台系统','/pub/user/adlogin.do',6,'2017-07-23 17:00:40','IP:183.228.23.95;机名:iZmemcvx3hm4a3Z'),
('61e9c6f55c88455eb3dd19b85c43d868','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 15:08:58','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('6203864eeb574cdd831e8ed903e15478','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:34:36','IP:127.0.0.1;机名:PC201508311633'),
('622a4fd19cd14991b038b72e4543b8b4','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-06 19:26:01','IP:127.0.0.1;机名:PC201508311633'),
('6241aeb92d424afbb8992416a0cbcea8','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:38:57','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('62603394d8b943ac95cbde10e0797f31','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 18:52:16','IP:127.0.0.1;机名:PC201508311633'),
('62a4480664e5440d937d76ddc7c37c9e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 17:46:32','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('62c5d2ce8c3642c19f488fb2adb26134','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:07:37','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('62f30939ed444c2681fbd2f9a3f83fe3','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-23 16:34:49','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('631ce83bd3ee43d899d0bb94686a09a3','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:34:04','IP:127.0.0.1;机名:PC201508311633'),
('6346b77be4be48909960f26432fa352d','修改货运服务流程','/admin/textevlues/editOk.do',1,'2017-08-04 18:10:44','IP:106.86.152.173;机名:iZmemcvx3hm4a3Z'),
('634e667ba50949959ea56e59cc4c81de','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 11:29:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('6352cda61d704baea0442de2e1b13162','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:09:36','IP:127.0.0.1;机名:PC201508311633'),
('635fa2e8e8674f54bc018e647967aa27','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-25 14:06:53','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('63659c4ec07f4c068167beda8a3e5b8e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:51:52','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('636e4422a98f46149cb94344170a50d8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-07 18:20:42','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('63859ed5920847df81c22e902c8447de','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-07 18:29:48','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('63b0b8cb14bb4fd084ea1eebf070601c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:40:32','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('63c3b774a0ee41959d8955ffa121994b','修改派单信息ID=8638e902ff9540a0bf658505cfd32084','/admin/InstallerListeEstimer/update.do',1,'2017-08-03 17:01:32','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('63ca5ed9ac93487aa45e1065db45c503','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:09:25','IP:127.0.0.1;机名:PC201508311633'),
('63f9ac0443964bff9b1356fd83b67d3d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 14:21:28','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('6412b50235fe40ddb29ca63d4b549e94','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:08:17','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('641406583be747a2965c3140e0d607ee','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:44:44','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('641a40cc60a5460e9ced41f98a98e355','登录后台系统','/pub/user/adlogin.do',1,'2017-06-03 10:03:54','IP:127.0.0.1;机名:oruke-PC'),
('641ff8dbab884ac8926a2167e9cf658b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 11:34:02','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('6428d4bd11bd4613b8d54e3517eb6cf2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 18:17:51','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('64bfbdceae3d4463adb69e81be285f35','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-04 13:56:32','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('64e9c4b6ad63433589e1f14797125219','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 14:13:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('64eb25755bfb4b2b8a9c54e1d25617da','登录后台系统','/pub/user/adlogin.do',1,'2017-08-10 14:43:03','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('6506af4cec1d4992bbddd7c386871182','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:09:43','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('65255d06ca14450c97b7f8836423c6c7','查询用户列表','/qscMobilier_Back/admin/user/adqu.do',1,'2017-07-03 09:47:00','IP:127.0.0.1;机名:PC201508311633'),
('65291d8958a7457094068d82448265a7','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 13:54:49','IP:127.0.0.1;机名:PC201508311633'),
('65307b5f2e814b8083b5a815845366a4','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:43:24','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('656a62f8bbf14502ac6a4d6fda00b0af','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 09:47:12','IP:127.0.0.1;机名:PC201508311633'),
('6594015420fc47de9751f1c5b91ceacf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 16:08:39','IP:127.0.0.1;机名:IF-20150627QENP'),
('65baa46a1e1747419ae76c7a87820938','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-31 09:50:20','IP:127.0.0.1;机名:PC201508311633'),
('65c9d778070f4162a05e8598bef8a22c','登录后台系统','/pub/user/adlogin.do',1,'2017-07-31 15:02:25','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('65f2acfcdd84433594702cbfa9ad648c','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-23 16:33:57','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('662098adb1db4a598bf01e5204584f76','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:08:19','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('6620c66c06ff4c0db10704b2f978e2c7','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:24:28','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('66314a8947664704af8af933e1338592','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 18:56:24','IP:127.0.0.1;机名:PC201508311633'),
('6641c6f6db3543c28ac2b60c3a36cd89','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 14:40:13','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('665d31cf5d734938b51782ab8c541030','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 09:37:02','IP:127.0.0.1;机名:PC201508311633'),
('667f48f74c374fe9940487d656de93dd','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:29:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('668ccb5388044e36997a685c3540ac7b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 16:49:01','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('66ff7fc8bd4b4b56b999774790b12cb7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 10:28:12','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('670dd5aca09542e1812e8c461ff1e6ef','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 14:19:09','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('676d5bbe963f44f893f41affa873953d','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 10:43:03','IP:127.0.0.1;机名:PC201508311633'),
('6774dfae23aa4ce9afe1b2f0de373c79','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 16:58:19','IP:127.0.0.1;机名:PC201508311633'),
('6778e8a101b54a2c83bfd32952b680bc','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:13:29','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('67867f9b7038439e9f46722e3e1adb7d','修改活动规则(推荐排名)说明（抽奖）','/admin/textevlues/editOk.do',1,'2017-08-10 18:00:58','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('678ab9edb2074b11bbaf5c08c61ec63a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:43:56','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('67c5f0442f3d47b88b9f54f5bb20cc3f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:54:03','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('67f21b42a962431a9f29d1cb0f0227d3','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:23:20','IP:127.0.0.1;机名:PC201508311633'),
('680428cb5ac84be09e2b53d2e3042687','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:40:07','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('68156afd24e64240a621b84b559dcee2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 18:40:35','IP:127.0.0.1;机名:PC201508311633'),
('68202314e6f44b9faa11aeaccb1eb497','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:33:23','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('682a8930e00646638950b47f46fad53d','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 17:48:06','IP:127.0.0.1;机名:PC201508311633'),
('68504fff374a443ebe110976fa1024e1','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('6882215b3fa5494289b0e482ca87a67b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 10:45:39','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('689dd8d7737a44b48df5bd42993567fd','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:18:02','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('68b0803416164bb297e5b0acb19f4b12','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:36:17','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('68c274ed931b4496b5526e1a91840788','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-13 17:35:48','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('68d57ec49f734a0abd9023dc6de580f8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-17 14:41:59','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('6903b92516ee48e4bf98686c8e9dad7c','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-23 16:11:56','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('69352ab435d2473d82c63f3c35596bac','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 16:34:11','IP:127.0.0.1;机名:iZmemcvx3hm4a3Z'),
('69412f6984be462399138e684d945329','查询模块分页','/admin/mod/qu.do',1,'2017-07-18 16:33:04','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('69931a7540c64ed89a5619c65b0644d6','修改订单信息订单编号(主键)：7e3d5a452a5f4be3a723a53148741b4a','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-06 17:31:07','IP:127.0.0.1;机名:PC201508311633'),
('69c62a7790ec4da38cbcfacbf34be527','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-17 14:41:35','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('69eea5f9478541b9aa22edc04974994a','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 15:47:59','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('69f25506617c4ee3ab7160757f1742aa','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 09:48:31','IP:127.0.0.1;机名:PC201508311633'),
('6a09c49d264043da9461e54cc060c812','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:22:44','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('6a0ebaf05abd4274b28f98be484c47bd','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:18:36','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('6a22412bf87e490091e5d1d95e70abe7','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-06 19:01:46','IP:127.0.0.1;机名:PC201508311633'),
('6a3008f9c6f843198a1e68183ee068a7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 17:12:57','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('6a3a72a34693472a84da7b007b6137fb','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:31:56','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('6a55c81e31964ab19c2497c4568aad0a','查询用户列表','/admin/user/adqu.do',1,'2017-08-08 11:59:57','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('6a8276d2f0704082add150e5ae230047','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 16:35:17','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('6a94e887ce564420aa39bcd98ec37e9b','退货申请信息修改','/qscMobilier_Back/admin/UserMeubleOrder/updateReturnInfo.do',1,'2017-06-01 16:14:41','IP:127.0.0.1;机名:PC201508311633'),
('6aa2821a63194a638824218519d9ffef','登录后台系统','/pub/user/adlogin.do',1,'2017-07-26 09:17:35','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('6ada571fb9f540a3a4a7bb8a5d5160e0','修改派单信息ID=a67956b6ecfa40f68d7d9e90a20d7db0','/qscMobilier_Back/admin/InstallerListeEstimer/update.do',1,'2017-06-27 16:25:29','IP:127.0.0.1;机名:PC201508311633'),
('6b0fcd5a4d4d48dfade0b46b895cea0c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:38:51','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('6b1c586c9d89456a88da6ece7c9b8f7b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:43:04','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('6b4e74cd8a2f41459346152166f7386a','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 11:30:36','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('6b6fba6671e84fd3ad7183e5904e1146','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 14:22:30','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('6b94ae4a7502456caa655a2f7b987642','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:53:14','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('6bb665a1c7ad497b8885471d74c57135','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 16:35:11','IP:127.0.0.1;机名:PC201508311633'),
('6bd241a221724535beb43b9464456d23','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 14:47:11','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('6bfd33574b7a4a7a896bacbf533fd210','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-31 09:50:11','IP:127.0.0.1;机名:PC201508311633'),
('6c009495d44f488293f9197b2ac5cda4','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:57:27','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('6c18b6b95f534a08bda9815363f178ee','登录后台系统','/pub/user/adlogin.do',1,'2017-07-25 09:17:11','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('6c1e0527137740c8b3315c53a6d6e8af','登录后台系统','/pub/user/adlogin.do',1,'2017-08-11 09:26:10','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('6c29668a822542e0a02304039a099504','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-27 15:29:19','IP:127.0.0.1;机名:IF-20150627QENP'),
('6c3067faecb04349aeed86fae60c9954','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-21 19:44:14','IP:127.0.0.1;机名:PC201508311633'),
('6c327be3f0974829a8402a055813b712','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:54:37','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('6c6a3ed123e441c19d697c5f2d4b215c','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:22:19','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('6c6f9ab374784785ba882a99c64d9389','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:58:26','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('6c8c6d2fc6e6496cbe286c5c831edda5','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-14 11:46:00','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('6cb251a2194f4ecaaae82bc6930cac59','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 11:01:02','IP:127.0.0.1;机名:PC201508311633'),
('6ce7d69616f04889bfba06e80bd0a56c','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:10:30','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('6cf4afd4035b48aaa8fcf5f1caca7658','登录后台系统','/pub/user/adlogin.do',1,'2017-08-03 09:28:38','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('6d1f9e2c45a7481e83d61a8fc3fe316a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-17 11:38:54','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('6d2ffd4f7a4b4d049d68274127311b71','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 16:52:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('6d418b515c5e454997a8a4c1849dfafb','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:18:07','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('6d5a1a4c89194d5a8cd101ce02f66555','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 14:46:58','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('6d69f3469c414b9bad92a2f715f6c5fa','admin-修改供应商结算：b052d60d09f34312b2dc66744ba80ecb','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-30 17:08:07','IP:127.0.0.1;机名:PC201508311633'),
('6d70d3ad2bc2424bbc7774ab4563c5b5','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:31:37','IP:127.0.0.1;机名:PC201508311633'),
('6d871f23adf84008beed587e03c64cb5','修改订单信息订单编号(主键)：7383af17769f468dabc03130f380742a','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-07-08 17:14:24','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('6ddad96a77f54f12ace1c7602ac16440','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 18:26:57','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('6ddb01a28a1a46f39b8c890f52adeeda','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 13:51:29','IP:127.0.0.1;机名:PC201508311633'),
('6ddf8898a1284a5b99fbfc5c5162b4bc','修改会员账户状态','/qscMobilier_Back/admin/account/state.do',1,'2017-06-28 11:41:53','IP:127.0.0.1;机名:PC201508311633'),
('6de1a1057c2644638bab9fca44b446db','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:58:45','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('6df1ab15b7d94354b0a822e2ac2c92d1','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-21 11:12:25','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('6df7eeeedd384f99baf44558ad5e840c','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 14:52:30','IP:127.0.0.1;机名:PC201508311633'),
('6e199b690ca540e3ac41afdddd9c3f7f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 16:35:55','IP:127.0.0.1;机名:PC201508311633'),
('6e376d97ef9b4c63982f4f8e44efe318','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-17 15:44:13','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('6e4c00c179d64e05a1b397999e7df24f','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:48:38','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('6e5caf10371c447b8562422553868e57','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:10:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('6e6bab53636d48e1a9231a976f4cda4c','添加商品分类','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleType.do',1,'2017-06-09 10:07:39','IP:127.0.0.1;机名:PC201508311633'),
('6e8d6ef649b64279ba7c5305c7e74246','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 19:22:16','IP:127.0.0.1;机名:PC201508311633'),
('6e926c59883b46cb9a82d47f152fcfa7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:56:25','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('6f3b14b789f4436c87a23a328e8a2603','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:58:35','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('6f49691d72d34ba2b07889695e3b99b9','删除模块','/qscMobilier_Back/admin/mod/de.do',1,'2017-06-28 14:54:41','IP:127.0.0.1;机名:PC201508311633'),
('6f90f43101834f919db90081059185f1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:16:04','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('6fc21428ae384b77abc3e1fe8b4b9020','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:02:26','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('701f328b9a554907bd228b8a61af2e96','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 16:17:53','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('70278cfb5750428084a39a7ef2912ed5','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:51:13','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('702c2862398a4ccd9ebe3f90af18fec3','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-05-27 15:51:26','IP:127.0.0.1;机名:PC201508311633'),
('703fa75dd3d84d8aa0fb09900e8dc96c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:14:34','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('705b0427caa14cdcae717526dd4bbf2f','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 09:02:06','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('706050c22d234066aa590e0ae010f586','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:01:29','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7067ba6107284bab98001143c573523e','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 11:01:11','IP:127.0.0.1;机名:PC201508311633'),
('70994d34402748cbbb8ee1d896b02d07','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:14:21','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('70b7fd829fc7417e9ce29f9262944bbc','删除本地微信菜单','/admin/weixin/deleteMenuid.do',1,'2017-07-11 14:54:52','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('70bae32ef99e4094bed0b2ae8173ba17','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-06-27 16:34:11','IP:127.0.0.1;机名:PC201508311633'),
('70d1ffb0b05e4f64a0f0a1805e55c083','修改订单信息》》订单编号(主键)：02aecef0010a42b69c11b69e6c0c316b','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-27 15:06:14','IP:127.0.0.1;机名:PC201508311633'),
('70f3064018234ed384da47ace98a52e2','admin-修改供应商结算：4de7fc221e1e4b91baf7735bb16b063e','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-07-03 16:07:43','IP:127.0.0.1;机名:PC201508311633'),
('70f99b9991904f5791e0d394e1fae17f','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:48:00','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7106ec3ea21d4cd18cb0d494a36400f2','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-23 11:55:35','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('7144851b4fe9486ea782953d5658f446','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:19:22','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('719f08502d3c4aeeb0075552d5f2429c','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 11:57:24','IP:127.0.0.1;机名:PC201508311633'),
('71a0fd8d9a464ce0a12254d2db5e63af','登录后台系统','/pub/user/adlogin.do',1,'2017-07-23 17:02:47','IP:183.228.23.95;机名:iZmemcvx3hm4a3Z'),
('71ac3415270e40b49e6d9ed12fe3e631','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 15:48:27','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('71b8ea1cbe4643a087760561a4e45089','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 17:28:40','IP:127.0.0.1;机名:PC201508311633'),
('71ccfa30fb2241f6b3686495e3de83c0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-17 10:50:51','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('71f3d43f1c4943da8ec377e82c52f7f2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-21 19:43:51','IP:127.0.0.1;机名:PC201508311633'),
('720715d042cc4d6d960df1857f64fa5b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 15:08:47','IP:127.0.0.1;机名:PC201508311633'),
('720c6ac119884ac794ffa0fe17160fdd','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 10:48:19','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('7217ad7106384effbd4ef8b4a02d4cdf','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 10:28:26','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('72313fdf6ad840ec9b096549b698ca3a','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:11:40','IP:127.0.0.1;机名:PC201508311633'),
('7231d97a30f442d08b92d82d50bcc4c0','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:48:44','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7246a0f473ea44f98e3ddc4a327361c5','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 16:33:54','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('7248849a44464e2681e540e974fe83a3','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 16:00:35','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('7250fb9bba2d419caa5c1b8f7b1addd8','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-01 13:44:26','IP:127.0.0.1;机名:PC201508311633'),
('72599aefb34741e1b299508d440b8989','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-18 09:26:07','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('72639972f51848f1a949642fd7fd3fb3','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-25 14:04:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7279034d7671454591c1a9b29afd4892','查询用户列表','/admin/user/adqu.do',1,'2017-07-27 18:38:43','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('728ca58119d7425ab36e050374cbc17d','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-20 11:12:04','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('72aae35412124df7b047ad218344e1ab','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:41','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('72ad4110cf494434abb236432a7684b9','登录后台系统','/pub/user/adlogin.do',1,'2017-08-10 11:10:29','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('72aea5706fb242849ec4954de411a260','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:32:49','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('72b0c1c2336743ae82761062e18aa9ed','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 10:08:30','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('72d0b7fb1d5a4cb2bbdfdd5e24411a54','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 16:26:02','IP:127.0.0.1;机名:PC201508311633'),
('72edfe972ee6414d93390e333f4fae26','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-23 17:32:53','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('7311aea2960e4f00873cb4553b2e5d51','登录后台系统','/pub/user/adlogin.do',1,'2017-05-27 12:04:41','IP:127.0.0.1;机名:oruke-PC'),
('7337b73f5b5441acaf0654859412822e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 10:12:23','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7396263550dc4bcebe19e9f8486abe37','admin-添加供应商结算：652324caf4c343be9dedc1556271dd1e','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:06:13','IP:127.0.0.1;机名:PC201508311633'),
('73e05e01ed594afe8b7a7dfbcb3049f9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 11:22:00','IP:127.0.0.1;机名:PC201508311633'),
('73f1a2ee67a442888483a62c10811b44','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 12:58:47','IP:127.0.0.1;机名:PC201508311633'),
('73f6a7ef001f4e71a39e6e583e2146f7','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-10 11:22:18','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('73f8fc0e9cdc4126a387d09dfbaa2967','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 10:22:10','IP:127.0.0.1;机名:PC201508311633'),
('73ff7c7fe3fc4f48b7a3febdadc64c53','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 15:19:35','IP:127.0.0.1;机名:PC201508311633'),
('7411adeef33f4c1dbede970726065e4d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 10:55:49','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('7438f99cd4aa4f849321a1705b7a0376','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-13 17:32:17','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('743bf934a47e479ebc8747fd307c927c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 16:52:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('749465d2648843b78f6cd9c6da101093','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 10:04:47','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('7499b9a62c474b45838ce26fa534837b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:19:59','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('74a3760e5902489193f8d79f25f682f6','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:02:05','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('74ce088e161245d7805bb232dab183df','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:53:45','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('74d409a865a74cd98819a035adc76c84','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 15:41:36','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('74e2be16486448aebefc5015f9673304','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:47:31','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('74ed4a8f27a3417785328c2680ef3c94','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 11:59:51','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('74f541ad7b4c4083a8d1923859381fc0','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 22:46:29','IP:183.228.18.229;机名:iZmemcvx3hm4a3Z'),
('751b07953c3042b191bd507ba1bd09f6','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 11:11:40','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('752c827389494d79b476303b3bdf9af0','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:54:26','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('752d74557aa34f02a439b4d056f939c8','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 10:11:14','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7531d9cb3e7e4780bf58e5a1c6fe2ccf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 18:56:11','IP:127.0.0.1;机名:PC201508311633'),
('755075a3075f47bbb51276ae61c87855','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 15:45:06','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('757c813a069d4da6bfdc0c7d0bf4511a','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 15:50:53','IP:127.0.0.1;机名:PC201508311633'),
('759b47ce67e14c828debf25241aea7fd','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 14:21:24','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('75dbc5da3313451ca3ae104510acb8ff','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 16:59:15','IP:127.0.0.1;机名:PC201508311633'),
('75ea2107529e4c9e8469d99ddf8322a3','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 11:07:31','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('75eae62110a74bb28cbf01bb3653489e','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-31 19:05:40','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('75fab37ac6be4204bc42adeb72c99b54','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-21 10:27:23','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('7602aab207ce4137b112729cf4a5c6ab','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:28:48','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('76204c27958d4fa299bb33892f006084','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 10:29:47','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7628e0b865504af9ab189af8fe83151a','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-13 13:55:58','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('76313a570ae3485a9ddb8d2a8e200776','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-04 15:53:56','IP:106.86.152.173;机名:iZmemcvx3hm4a3Z'),
('7636e499e2824c249b7e5b24bfb6c8b7','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:30:39','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7653eeb8b8444a81adda9f8e0c7a275e','admin-修改供应商结算：baabf9ead0e34fd4bd621bc42de04775','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-07-03 16:08:48','IP:127.0.0.1;机名:PC201508311633'),
('766ad7099bc74e908d88361bbaa1cd4d','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-24 11:39:06','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('76a33ad7f4e348b681df555f4f46b0f5','修改订单信息订单编号(主键)：bbbe9e1fb07e4c89845f5a96042f2c61','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:28:49','IP:127.0.0.1;机名:oruke-PC'),
('76aeea2c94ed4f0490631bd8748eb0bb','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 12:01:56','IP:127.0.0.1;机名:PC201508311633'),
('76d038d2d2d14adc92be4f8c06e88407','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 14:58:49','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('76f9b85939a04f239384ecdbdcd845a3','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:51:20','IP:127.0.0.1;机名:PC201508311633'),
('7709daba732545c3be1ca3297ee46817','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:24:15','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('7716b3526276413d9b865db5c027f616','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:47:48','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7741ae3e89e64ab2bbf34c492abcc6f6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 14:18:34','IP:127.0.0.1;机名:PC201508311633'),
('774c8398b8a04146905b94c6179682f3','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 11:03:50','IP:127.0.0.1;机名:PC201508311633'),
('775c21d415fe43188ca0460028fd8e6d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:54:44','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('776ade2437344c7f925ad44320b8d06d','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-30 19:10:01','IP:127.0.0.1;机名:PC201508311633'),
('779c42711d114de3a4c3f02f89764a8a','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-17 15:40:52','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('77a30a3af6374d3eb9c3d8c2c35db140','修改订单信息订单编号(主键)：3655dd11d92a415e9b148412ec0206e3','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-28 16:31:22','IP:127.0.0.1;机名:PC201508311633'),
('77abfa8846814d28a05a505f808d1d1a','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 15:51:36','IP:127.0.0.1;机名:PC201508311633'),
('77ac6098941646ffa76191e1afb7eda1','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-13 13:56:15','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('77cc3f9465e24f2d8f387c3e723c4165','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-08-07 18:44:52','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('782c1de0b5cd42c0bb8f3c8f8b378a90','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:55:49','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('787ef26fc36746bfbdacb8e587955201','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 16:17:39','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7891bbd3e75d4f41b128990693587ca5','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-04 13:56:53','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('789b70aaa28343ef9d71b5b4f2ee56c8','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 16:56:29','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('7908f90b7b79487d8e8e49eb01dd9adc','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 09:02:23','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('790f13c3a9614f13a8b6feebb90f9f0d','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:31:21','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('793585733526446283aba9e4a9c87332','添加商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-06-09 16:51:53','IP:127.0.0.1;机名:PC201508311633'),
('7959e7707b8140f1bb1c345905d592b4','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:32:46','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('797243b455b2458fb64a4ba63570148b','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:01:17','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7983b4b441ec44dcb5aa7b2e489ec422','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:49:00','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('799f8036b2bb464cb762798772e0b15b','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:42:21','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('79b57b181d0648d7bd2e78e41ca614be','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:12:17','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('79b8d8a10ef44b65bf38d76b893bb392','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:18:09','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('79cf810b58fd4bd681b9d1880b81d144','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-09 10:10:20','IP:127.0.0.1;机名:PC201508311633'),
('7a1b93b9a5ff4decac7b7600dbdabdc4','查询用户列表','/qscMobilier_Back/admin/user/adqu.do',1,'2017-06-28 14:47:30','IP:127.0.0.1;机名:PC201508311633'),
('7a371743e69c4d399b420e856109be4f','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 15:51:08','IP:127.0.0.1;机名:PC201508311633'),
('7a51357893e3446a8f1d09feed18ef01','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 14:10:35','IP:127.0.0.1;机名:PC201508311633'),
('7a6d3a126e2c4c06a873a7cf92d3bc8b','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 15:01:31','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7a6ee699254e41ce90d07721e2a8de00','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 14:00:29','IP:127.0.0.1;机名:PC201508311633'),
('7a90196435724444a4fb11cc9a684c0c','登录后台系统','/pub/user/adlogin.do',1,'2017-07-28 11:17:30','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7a96092714a442809633676bb75e6e42','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 19:47:04','IP:127.0.0.1;机名:PC201508311633'),
('7a98a074ebdd4555b3847ef964e7718b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:42:32','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7aa4fe01ec1940eca4df2f75e9b1439e','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 15:14:24','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('7adee7c2b32c4899b2afa2af5e42ed81','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 15:54:43','IP:127.0.0.1;机名:PC201508311633'),
('7af258d4f0c14e3cb9b7965650112c13','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:02:12','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7af25b725f4c4ab99483debe91a73aca','登录后台系统','/pub/user/adlogin.do',1,'2017-05-26 10:16:08','IP:127.0.0.1;机名:oruke-PC'),
('7aff14cbac2744fa8c3f48533ab16d5b','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:54:41','IP:127.0.0.1;机名:PC201508311633'),
('7b031e607aab4d9aafbdb1abd5e289e7','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 17:45:04','IP:127.0.0.1;机名:PC201508311633'),
('7b1f509a09ff4dc88c99f4b7b68cb131','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-21 17:13:20','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('7b34bd123cbd47aea80e532f029d380c','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 16:00:29','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7b3da2a1ece24db28bf940b6758c2349','修改比例信息ID=2','/admin/ordrestatut/upOk.do',1,'2017-08-01 14:53:07','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7b3ed3a028eb4bf984e4017fadfda053','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 13:53:35','IP:127.0.0.1;机名:PC201508311633'),
('7b3fc1c225a8421299757e11e6712ac9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 11:34:34','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7b4b166da4114f42a37493767a01ebc9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:56:14','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('7b87862b1ae94ce293fb5ed3e8620bc8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-23 11:27:51','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('7ba7e2cec2534f5c86606e7cd3ac8010','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 14:23:55','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7bd8dd6b777d4cda8e23655baa9531be','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:18:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7be69aab149a4542b65f4bfae981a338','添加商品','/qscMobilier_Back/admin/userGoodsMeuble/addMeuble.do',1,'2017-06-22 20:12:47','IP:127.0.0.1;机名:PC201508311633'),
('7c1362bb134d45dd933418fb1dbe95d5','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 15:32:42','IP:127.0.0.1;机名:PC201508311633'),
('7c2a3df55f95426cbaa2fc12f609fe21','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:58:26','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('7c2c286785214301898bb09eb3e90d52','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-23 17:09:32','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('7c2c3691190f42c489495f826d549d30','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-05 11:42:08','IP:127.0.0.1;机名:PC201508311633'),
('7c57f7b6ae5a410aae121ee56d8e0eef','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-21 17:38:13','IP:127.0.0.1;机名:PC201508311633'),
('7c697a6a7bd0485c9364b9a88fd7406b','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 17:00:58','IP:127.0.0.1;机名:PC201508311633'),
('7c6aa0915ad1477ebdb46c0da584329e','角色授权','/admin/role/inpo.do',1,'2017-07-25 14:38:17','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7c6c8d09b8b14ee9aab809f128027bfa','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 16:29:55','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('7cd09de997c74891bcb9d67757e70bdb','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 16:00:05','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7cda31b9dde345528125ca8dabd93226','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 15:30:59','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('7ce46ab433ad4b74967a886f3489000d','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 14:57:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7cfacc623d45423d9ca367132f911ac5','修改派单信息ID=8db5d22dfd284687b3d2b8c7713b7af4','/admin/InstallerListeEstimer/update.do',1,'2017-08-04 16:04:42','IP:106.86.152.173;机名:iZmemcvx3hm4a3Z'),
('7d1de65f34e74822a33fe22a9a3de7da','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 15:44:27','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7d30870df5ca4bf2b2aa9cc25cc38269','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 14:38:07','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7d7ae92120d74e8ea66a702a9bd97840','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 11:34:56','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('7d85da9c8b21475ab90c4f6e8efe3edb','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-03 14:45:02','IP:127.0.0.1;机名:IF-20150627QENP'),
('7daef96cd9e94cfda46efe81b01681cf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 16:18:55','IP:127.0.0.1;机名:PC201508311633'),
('7de32a32437749cda021210fb65a5dd6','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 18:55:56','IP:127.0.0.1;机名:PC201508311633'),
('7de3d5a67f42483b8ffeba262d9a2266','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:43:23','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7dfd828dbabb4ff49b9a81486672017d','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 11:41:48','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7e060224ccf4491bafead1eb728861bc','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 11:00:33','IP:127.0.0.1;机名:PC201508311633'),
('7e4c4d63cf994d87ba289160474c2e03','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 15:54:33','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('7e5474ca30a54c19a2b29e5b8be71447','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 16:02:28','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('7e5999bd57c244e3bbdaa8cbc0409f75','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-20 16:45:12','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7e821769253c46bcb8b95a67ed6464a3','admin-取消供应商结算：456200773c044c93a619e4b62bc4cbc1','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 17:12:10','IP:127.0.0.1;机名:PC201508311633'),
('7e9914085e204742ab9c43dfb7546bb2','修改订单信息》》订单编号(主键)：5653727159b047a5aa009f21479be646','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-06 17:30:57','IP:127.0.0.1;机名:PC201508311633'),
('7e9d9a8369b947089b325e1f8026b582','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:18:56','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7eb3e9e03ce24bcaa67da86a3caccf44','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:48:55','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7ebc60fa07ca483892cecafa08063a92','登录后台系统','/pub/user/adlogin.do',6,'2017-08-01 15:05:04','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7eefe5d0e3aa4454920891465a7d3325','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 14:39:32','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('7efff3b1af0840829605b9f002b6bb3f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 15:21:16','IP:127.0.0.1;机名:PC201508311633'),
('7f117f0bd89341ec9be362b8f9fdb5a9','修改派单信息ID=a67956b6ecfa40f68d7d9e90a20d7db0','/admin/InstallerListeEstimer/update.do',1,'2017-07-04 11:18:20','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('7f2fbe5b646f4a858fc0e9f2f9ed7184','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 09:14:57','IP:127.0.0.1;机名:PC201508311633'),
('7f3727eda47a437ea75a4a5ebfbf7542','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 10:58:41','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('7f4511c5f9f7468aac37ec2b2e9346c8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:20:09','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('7f9a2fb836484b0cb504de320cd6c24c','admin-修改供应商结算：3e6a68aa551449d5b9066cf8913837b0','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:16:41','IP:127.0.0.1;机名:PC201508311633'),
('7fab7c72d00944abb28ee2cedb98fbfe','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:49:13','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7fb235ff8eb1408a89035ac420798ddc','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:23:08','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('7fcfe4284de0495bb512a0010e6f9e63','登录后台系统','/pub/user/adlogin.do',1,'2017-07-21 09:08:46','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('7fd2dd73ae23492ab02ac18c1aee1add','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 14:29:44','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('7fdbe4dc88da4969bff0fcff857f8085','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 16:09:59','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('7fef3628cae24da68e79fe2ef26b7215','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-17 12:04:08','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('7ffbebe389be476b94d6ff4f0dda7414','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 11:04:48','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('8020c931a9ab4ad0af73e13c0cd6defe','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-05 13:40:27','IP:127.0.0.1;机名:PC201508311633'),
('8025b1c85ce4469aafb005cfed2f2dde','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 10:49:40','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('8027c4a35bae40729488c01b4b75264a','登录后台系统','/pub/user/adlogin.do',1,'2017-07-17 09:44:26','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('8029d81e541f41098ae439d3b3e85e47','登录后台系统','/pub/user/adlogin.do',1,'2017-07-28 11:50:57','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('802d86cd1fc54265a74d405d4cc2c153','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:49:24','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('80435cba15e54d36a06a2f305743c873','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 10:24:14','IP:127.0.0.1;机名:PC201508311633'),
('80477953300340e9a8e569f8b3847e26','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:12:10','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('806e80ca43d0494e98ae83560a326e63','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:16:40','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('80755eb9e8194a3ea00ca05c5cb08682','修改订单信息订单编号(主键)：fb68beb6eca24b9797f0e02b3ed61575','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 10:50:12','IP:127.0.0.1;机名:oruke-PC'),
('807fe5d507844b91b9e3f1752e6c51f3','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:09:35','IP:127.0.0.1;机名:PC201508311633'),
('80829136f0f54ca2af99d0d27494800e','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-14 18:05:37','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('8092ebea33914651969732f81ab7e083','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 17:07:48','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('8093e0a11fb54407b3e40c2c7996a764','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:07:25','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('809d8f409d3845b08aa3128a425c4565','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:30:34','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('80a1d793443f4d93a7c117e089b13632','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-22 18:31:28','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('80ae0be5e7cc4077beecbf9578c71641','登录后台系统','/pub/user/adlogin.do',1,'2017-07-18 10:21:24','IP:183.228.21.159;机名:iZmemcvx3hm4a3Z'),
('80ca4df4079a4c9d9e6854e251a6c6d4','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 09:38:23','IP:127.0.0.1;机名:PC201508311633'),
('80d55d5227ad48eeaf1c3579eda80deb','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 09:14:47','IP:127.0.0.1;机名:PC201508311633'),
('8127176e72f84e1dbaa74e16d57b301a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 18:07:41','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('8136ab8f066d4cc1ad64630eb4a5cf05','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 10:46:01','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8150a75520204c09978d3088b8a96fff','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 10:58:50','IP:127.0.0.1;机名:PC201508311633'),
('815a3f167f72447e975d6806853194f3','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:15:30','IP:127.0.0.1;机名:PC201508311633'),
('81a92585d01e41fbbe2889971e63af97','修改订单信息订单编号(主键)：79041839208c4f5c9024418e2d6d2db5','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:34:54','IP:127.0.0.1;机名:PC201508311633'),
('81c824b198d2452591937d9dbfc2bac7','登录后台系统','/pub/user/adlogin.do',1,'2017-08-07 18:08:24','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('81d09a0f86364f689c987e481a8dfac8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:54:44','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('81d38766f6b147638d20f6a47d46b9ed','登录后台系统','/pub/user/adlogin.do',1,'2017-07-19 14:11:08','IP:183.228.21.159;机名:iZmemcvx3hm4a3Z'),
('81fd0a1452954d67bf775c38dd6c6bf0','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:10:03','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('82059dd0f8ac4c568eef26de8a9b7706','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:16:38','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('8219f308b39e4839a9f55dba48e28794','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 14:05:36','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('822d953ab8994d49baa9792154f9272a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:18:20','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('824c4c30eac9432dafc93f55281b3b48','修改订单信息订单编号(主键)：3655dd11d92a415e9b148412ec0206e3','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-28 16:19:59','IP:127.0.0.1;机名:PC201508311633'),
('825950f2e24e4aa8a22b91e404b5cc5a','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 09:48:29','IP:127.0.0.1;机名:PC201508311633'),
('827193ef637a459c87ff842101f39c06','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-30 19:37:51','IP:127.0.0.1;机名:PC201508311633'),
('82c932632d8b4540b1cc1fe74422ce53','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 16:23:41','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('82dd354776264635bed279b399416f1c','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-07-03 17:01:21','IP:127.0.0.1;机名:PC201508311633'),
('82f780c86f514e7995c35daac14e8ea4','登录后台系统','/pub/user/adlogin.do',1,'2017-07-27 18:18:31','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('830bcee24ebc485cb3cde0364c587ef9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-26 15:47:48','IP:127.0.0.1;机名:PC201508311633'),
('8312bca2f8314538b1949930a1d966ca','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-13 17:37:55','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('835dd14baffa4db484481492df356ff2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 14:24:05','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8368b2d6848d4cef8880815416153a8d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 15:20:12','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('837d46b7012a4addbd6704c286a9d27c','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 09:28:05','IP:127.0.0.1;机名:PC201508311633'),
('8385c19d79d34a9f980c138515cbc119','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 11:51:45','IP:127.0.0.1;机名:PC201508311633'),
('83a95399c2a64e53abb8818b598a2ccc','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:21:20','IP:127.0.0.1;机名:PC201508311633'),
('83bbaed8ad904a57bfeb064644356d9f','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 16:40:07','IP:127.0.0.1;机名:PC201508311633'),
('83c6af3218724915905ac2549b238713','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:52:12','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('83d09ecc08dc4412aa8f544c2ea8c961','删除模块','/qscMobilier_Back/admin/mod/de.do',1,'2017-06-28 14:54:39','IP:127.0.0.1;机名:PC201508311633'),
('83fcbeba9b9e4e0ab0aeeba6fe6fa56d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 09:52:41','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8405fda639f8471fab562ec2c6d989b3','登录后台系统','/pub/user/adlogin.do',1,'2017-08-03 10:21:00','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('843712529bb946d99027a32d8a806f72','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 16:50:03','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('844218f0bfc044fb9c67c55e665e6aa5','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 19:50:44','IP:127.0.0.1;机名:PC201508311633'),
('846c2b0c898543fb941b4c64fe50b640','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:34:19','IP:127.0.0.1;机名:PC201508311633'),
('8471bc61c60a42e9b1a069d8ac9b0bd7','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 13:55:58','IP:127.0.0.1;机名:PC201508311633'),
('847dee97d257421991382d9bd732f356','查询模块分页','/admin/mod/qu.do',1,'2017-07-19 15:47:56','IP:183.228.21.159;机名:iZmemcvx3hm4a3Z'),
('848474feaeb944149526ed37e935efc2','操作发送短消息','/admin/phonenoter/addSendOk.do',1,'2017-08-11 17:54:50','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('84e7b1975e694d598dbdb691f510568a','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-29 13:56:24','IP:127.0.0.1;机名:PC201508311633'),
('85052d7e702948e39fa697dba787d897','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 16:31:32','IP:127.0.0.1;机名:PC201508311633'),
('85446af32b4043f2ac3b2536bd574c6e','修改优惠卷','/qscMobilier_Back/admin/ticket_info/upOk.do',1,'2017-06-09 11:17:47','IP:127.0.0.1;机名:PC201508311633'),
('8573af69a89040aeb09673d93430e377','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:16:03','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('8585278d2d624069b2a3806986fd3359','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 09:47:29','IP:127.0.0.1;机名:PC201508311633'),
('858ed4ed8b1e436a8963667b715aeec9','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-08-07 09:49:03','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('8595ed32a3174908aec78bb64a231f26','修改安装服务流程','/admin/textevlues/editOk.do',1,'2017-08-04 17:59:48','IP:106.86.152.173;机名:iZmemcvx3hm4a3Z'),
('859b4b17c9164b6f8dc23e6597296eb4','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 11:55:03','IP:127.0.0.1;机名:PC201508311633'),
('85a139dc7f574b06851e6b2ef2a21d02','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-08 11:55:02','IP:127.0.0.1;机名:PC201508311633'),
('85e423f5036644b19e969b60dae2b5c8','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 13:07:50','IP:127.0.0.1;机名:PC201508311633'),
('85eedad998334fbf8a53010027e390c3','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 11:08:53','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('86556bdc3e364ceb9725fa3574fbc088','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-07 18:29:49','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('8687d0ec12f64578a4b43dea610a8067','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:58:34','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('86b2ab92fced419ba4128938b30c93ac','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:35:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('86be924f38f049a58eb882762934428d','删除角色','/admin/role/de.do',1,'2017-07-20 10:54:59','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('86c9e964bca645898c3755fd9ed8e8d5','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 16:06:29','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('86de5111265344308e63878184c45501','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 15:19:41','IP:127.0.0.1;机名:PC201508311633'),
('86fa016305b44554aeb672e012546cdb','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 17:01:44','IP:127.0.0.1;机名:PC201508311633'),
('87021e251c7344eea77a6d8c8ad0aaab','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-23 11:57:26','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('8707c34108bb49feb419c00997222569','登录后台系统','/pub/user/adlogin.do',1,'2017-07-15 14:59:14','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('873fd30cf77a46e38f18d4b45c591dc6','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 16:06:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('87667db0537d4b8e8700b5e363e6f075','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:29:38','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('876bc1f0cee346e4b9faa593bde2cdec','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 16:37:38','IP:127.0.0.1;机名:PC201508311633'),
('87812015afe042ad9020a8ff31ca6c0b','登录后台系统','/pub/user/adlogin.do',1,'2017-07-31 19:01:22','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('87a5f058ee1541d5bcf087f4e2f10a09','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:06:41','IP:127.0.0.1;机名:PC201508311633'),
('87b3ef44d40141059c9c8ccfe55ddd96','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-07 18:18:36','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('87e401524dc543089feb2757bcf8cbe5','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-28 10:01:57','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('87f0c0c65deb4bc797a9d0d3cb0724a5','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:47:31','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('87fddd1696874c37a00e13fb60ab6d20','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 13:50:38','IP:127.0.0.1;机名:PC201508311633'),
('88051af7793b4644963b4313a5a994fc','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:16:26','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('880ebe0128c945eab9c1a6a2a763c77c','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:30:04','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('883234cbf239410392d0924ebc9d107f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 14:27:08','IP:127.0.0.1;机名:PC201508311633'),
('884185357b76471e89543e365fa36bf9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 12:04:37','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('88476e3caf09409c9f47b42b43d910d4','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-11 14:55:02','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('887eb34e82114e77b5cc273580ff6e36','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 17:35:32','IP:127.0.0.1;机名:PC201508311633'),
('8906d83454af4c00890307d9a2da251c','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-05-27 14:11:38','IP:127.0.0.1;机名:PC201508311633'),
('890cc1f8e84d411a9cba41e2e9ed720f','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 18:34:40','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('8949e327be4348a992e7e36281b629b1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 11:33:37','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8987cf5e0fcd4158b8bd08557eb400e0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:08:01','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('89966cad6e4e4fa9bbe4d9f7fdc51d88','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 14:09:10','IP:127.0.0.1;机名:PC201508311633'),
('899cacd8118943ab97095883b095f896','修改订单信息订单编号(主键)：e0934a4b5ec94c5f87932b0333187957','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 16:06:11','IP:127.0.0.1;机名:PC201508311633'),
('89b6d9d8f8f84df08a1489e1dee6fee5','角色授权','/admin/role/inpo.do',1,'2017-07-31 11:49:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('89ed528eff314ff7a35eea59c8f08717','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:52:42','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('89f75fbac8c34da1a0599efb271e38b9','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-05-31 15:38:46','IP:127.0.0.1;机名:PC201508311633'),
('89fc1f84820e45599ccc76e347ca6378','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-05-27 09:15:17','IP:127.0.0.1;机名:PC201508311633'),
('89fcdf4f62db475595ef2c4471f6cdf8','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-08-07 18:27:07','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('8a268303abf241ac877b89a2b2b1c5a2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 14:20:26','IP:127.0.0.1;机名:PC201508311633'),
('8a566b2c6361432792b7305a436bde4b','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-10 11:22:11','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('8ae64d9ee111479abba1afb45f521113','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 09:32:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8b29e23ea615477fbbb3d508f0e3c9dd','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 16:08:18','IP:127.0.0.1;机名:PC201508311633'),
('8b640affa0cb43da94b662d0f3817d65','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:31:26','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('8b721a2862474924a8b9042167f9f339','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 11:09:50','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('8b752af0ad7d4d56bfdc5d167f1498fc','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:22:56','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('8bae41691de64ce6b7681fcf11686263','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 16:49:21','IP:127.0.0.1;机名:PC201508311633'),
('8bbdf150284e4a5c89058debedac039e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:59:31','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('8bd69be07f3c426caf5506c7ddf0eff5','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 17:12:22','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('8bd6d5b094084eaaa51ebf8ae3229cde','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 15:52:25','IP:127.0.0.1;机名:PC201508311633'),
('8bdbc52ce6a0418eb545ec614f4722b7','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:51:31','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('8be5e5495bc3405db8d00cb3d9a718ec','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:31:26','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('8bee84b7ecc243b9b08f28fd81799851','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-03 15:52:22','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('8bfbc6a5d5db4d7fb78db5e566f7f00d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 15:50:28','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8c16728f8ab24b64beb4b0f7f0c0997f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 14:32:22','IP:127.0.0.1;机名:PC201508311633'),
('8c196890f1da462085b428d22e6063de','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 10:33:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('8c398ed7d1644853a5650a4928f25f81','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 10:42:58','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('8c3bf58c94024dfcbb42d0c3a2704eed','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 16:35:03','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('8c4f8c59a9c040edacd0a0c78095dece','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-26 11:27:33','IP:127.0.0.1;机名:PC201508311633'),
('8c5e39b7f0bd468dbe731bb0ef8a572b','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-25 11:22:57','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('8c794451a272414da24c636eb3cdff9e','修改订单信息订单编号(主键)：bbbe9e1fb07e4c89845f5a96042f2c61','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 14:54:46','IP:127.0.0.1;机名:PC201508311633'),
('8c807eab7f27459c9ac079a3af4ee05d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:44:10','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('8caf1bc9d5f147719d003d55f86409f5','添加商品','/qscMobilier_Back/admin/userGoodsMeuble/addMeuble.do',1,'2017-06-09 10:30:20','IP:127.0.0.1;机名:PC201508311633'),
('8cd6e9540b134d5faa36bc8747798a42','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:48:42','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('8d0422bb222f4a60a2c93fd9ea956664','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 11:53:29','IP:127.0.0.1;机名:PC201508311633'),
('8d728e4b31dc492780bb1719717ce31a','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 16:24:04','IP:127.0.0.1;机名:IF-20150627QENP'),
('8d7c303d34be4b63912233c142404e41','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-07-03 15:20:28','IP:127.0.0.1;机名:PC201508311633'),
('8d952bdab3cc409bbdb56504bee41b43','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-06 16:38:37','IP:127.0.0.1;机名:IF-20150627QENP'),
('8dc7a728de524141ab8b8b92b5fac5f1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:32:15','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('8e28c7242b644456adbafa0da866bf8d','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 16:52:30','IP:127.0.0.1;机名:PC201508311633'),
('8e39a59c84a845e48292380ee133a453','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-13 13:55:46','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('8e50fac4ea494a1b88f0f2661bb7404b','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-18 16:56:17','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8e54328b9a6a4029b842a3054380b64b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:34:58','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('8e9cb80d3f824999846c3e5814dd22fe','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:52:54','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8ecbbcd83d5a44928cbc4ad35eec6f3b','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-10 11:25:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('8ef73eda836f456e8dd8dcc493f67b80','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:34:12','IP:127.0.0.1;机名:PC201508311633'),
('8f183ea368c640d0aa173336ffa19871','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:59:42','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('8f3ebfb690f04bdcbeec3f02b07c2f0a','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 10:33:40','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('8fb35c0cd5204a1888c11028629d969b','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 18:23:21','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('8fcb7d6150b44e33947f81cbeb3e06d2','修改派单信息ID=1b030b2828d84506a76dc788816c15a4','/admin/InstallerListeEstimer/update.do',1,'2017-07-08 17:19:19','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('8fd81c4373e84ee489a7a78200da280a','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 17:42:39','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('8fdd0a809e9a454fbd451ea63e014e57','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 14:49:24','IP:127.0.0.1;机名:PC201508311633'),
('8fe9188c78e5450d93febed234b41084','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 14:33:19','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('904bbe03792c4599878be2d73064ad66','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-28 11:04:59','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('907fa3576b9e4ceb834e4ad7e9d9caf8','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 17:42:14','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('90a143c88ab4413bb867fbf34f3bd67e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:43:45','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('90a8f87636514243976169cc5116afcf','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-04 13:56:25','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('90ad65fff3404659bc261aab1df97d76','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 14:09:16','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('90ad6ea2d49649c7a67e6cb96d1618e1','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:59:37','IP:127.0.0.1;机名:PC201508311633'),
('90c86f800d7c464d821bbc8569418035','修改订单信息订单编号(主键)：bbbe9e1fb07e4c89845f5a96042f2c61','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:28:42','IP:127.0.0.1;机名:oruke-PC'),
('90d8f47b11b84d3b906ee472a235804e','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:50:21','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('90e3c123d61a4ebc8cd4863aa8fc75bb','修改订单信息订单编号(主键)：79041839208c4f5c9024418e2d6d2db5','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:35:02','IP:127.0.0.1;机名:PC201508311633'),
('90e7ec05f9624bc58953d525d5407f79','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-14 11:59:21','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('90eac631c0b84214be994f3781f7c432','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:34:33','IP:127.0.0.1;机名:PC201508311633'),
('911b778ecf0c4d34bf1b8773d0b41d38','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 15:20:34','IP:127.0.0.1;机名:PC201508311633'),
('9121c568cfac465e86de124397b04acd','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 12:08:20','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('914ea0bbd4a04efb8da9a6a179d2397f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:38:41','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('9157c13bb8ca4c0f972f8438e4166af7','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:57:48','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('915809ac5a4d4d9f9ccc3e6e09e46c77','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:46','IP:127.0.0.1;机名:PC201508311633'),
('91cb38cf058e4219a509b64d30198951','admin-取消供应商结算：ed37b0fd2363435d928170a83f78a73a','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 17:12:14','IP:127.0.0.1;机名:PC201508311633'),
('92146f92943c4419b3c0909ee8c50247','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:09:22','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('9223bc4e2cee4ad9917e108614639cfe','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 16:07:10','IP:127.0.0.1;机名:PC201508311633'),
('923a8a91a6a54466b0ee92d06154a119','查询用户列表','/admin/user/adqu.do',6,'2017-07-25 14:38:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('92621411e0994fe3835c62a67816048c','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 09:12:37','IP:127.0.0.1;机名:PC201508311633'),
('927233e946da42bb84744551c529224b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 15:07:28','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('928537e3362841a78cf81b93bdd0ff74','查询模块分页','/admin/mod/qu.do',1,'2017-07-19 15:58:59','IP:183.228.21.159;机名:iZmemcvx3hm4a3Z'),
('92e9787be0ca428d91b3665c9c8521ca','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 16:06:02','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('92ef8db2bd3e4f6cbb8e526f37559fe4','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 14:56:57','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('9336bf8771ce45a5861b71d043616291','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:47:14','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('937032163a184552b9447f681b955fcb','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 10:42:52','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('938a23d0c1b0490ca7a83f19458697ce','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 18:01:34','IP:127.0.0.1;机名:PC201508311633'),
('93be91c9a0574179bb1874abbe2e6fec','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 13:03:38','IP:127.0.0.1;机名:PC201508311633'),
('93c267afd4824c50817e2132476c0a2e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 11:55:23','IP:127.0.0.1;机名:PC201508311633'),
('93c66f9eb8fb4dde8db29b3f02e1150c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-07 18:51:05','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('93e8dd4dbc21427d9fcf2253e689431a','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-21 17:37:22','IP:127.0.0.1;机名:PC201508311633'),
('93facbc42bd84ccb8d7add092e5be1e5','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-22 18:03:56','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('942ffab68d1441c992a767b96328d99e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 09:10:43','IP:127.0.0.1;机名:PC201508311633'),
('943931045b0944f7aafaaf3adae74803','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:19:07','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('944414673dd74b6b877faf3499dd04ef','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 10:32:25','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('944825702a834bde9c3a198000c2eef4','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-31 18:35:20','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9451932b090c4b868db433713217c926','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 16:03:29','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9472241b61f745d99c46b014692cb8b9','admin-取消供应商结算：913845ecc3364ad7985e0f1f1f669f18','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-09 09:11:47','IP:127.0.0.1;机名:PC201508311633'),
('94895947a9d840cb812f1135506ad186','登录后台系统','/admin/user/admain.do',1,'2017-06-03 10:03:57','IP:127.0.0.1;机名:oruke-PC'),
('948b50fb58534257875f644108c04654','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:58:40','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('94b70f0b96b1441880375f2a912c2dac','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-13 13:56:41','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('94bd08db5e1443bb8b052c529e98a88d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:18:26','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('94dba7035229479ca9b619546db68683','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:51:11','IP:127.0.0.1;机名:PC201508311633'),
('94e96161e9f04402bceb2d48ccb10f47','修改订单信息订单编号(主键)：7e3d5a452a5f4be3a723a53148741b4a','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-06 17:30:19','IP:127.0.0.1;机名:PC201508311633'),
('950f1c3f88634303ae3790748df295e7','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 17:07:52','IP:127.0.0.1;机名:IF-20150627QENP'),
('95245f1af8744f94b639bc438fa19d31','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 11:41:05','IP:127.0.0.1;机名:PC201508311633'),
('9530e6c2a469482dbe10379f2ae5917c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:45:04','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('9549bb2f953a4fc3b6fd9e58001f8ee8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:41:49','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('954ba569f65b433fb89c82ac0a247ad8','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-23 17:11:34','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('954fba273fad4fe2976bb26fa96463d6','登录后台系统','/pub/user/adlogin.do',1,'2017-07-11 15:47:42','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('9577343107e344e1bfc77e50476d9538','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:23:01','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('9581f3160a934129b1ec5f8e696dc32d','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-13 17:34:22','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('95862bc78e7d4dd184bb4b4c7d57a774','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 15:51:06','IP:127.0.0.1;机名:PC201508311633'),
('95a5b46805fe4f77881bdde5bd7ce788','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 16:36:06','IP:127.0.0.1;机名:PC201508311633'),
('95c97c858c3a441da58ff50b9ecbeec8','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:54:36','IP:127.0.0.1;机名:PC201508311633'),
('95cc836863c34b2189022eb6ee0c40b4','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-22 19:20:05','IP:127.0.0.1;机名:PC201508311633'),
('96057ae0517f42d3b4329531ee90cb6a','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 11:47:36','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('9621e73083934a9cb9f788f27c068b3d','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 11:14:06','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9633ee0df57f4b469fb73d997549aef6','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 10:48:18','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('963a8c6fbb214f2d8ef70deaf1aa03da','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:08:40','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('965cde5d2e754cfaa88862546c12697e','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:29:28','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('966fdc20c32a41a2bf5884afe4a94573','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 11:37:44','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('968ec5c07eaf47c99942371d7776b3d9','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 15:19:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('96b33a3530ac4834ae9ed1ede4092857','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-28 14:56:45','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('96b63deb9c3e4e7c880f8ef4c62980b8','查询模块分页','/admin/mod/qu.do',1,'2017-07-08 17:05:16','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('96c69dd519e5487e9505ed947c984165','修改订单信息订单编号(主键)：7383af17769f468dabc03130f380742a','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-07-08 17:14:17','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('96c8dfdb71994567b2fd5dda24ae0f5b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:58:02','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('96de8c5671d0411093b40f8836f73c9f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 09:14:37','IP:127.0.0.1;机名:PC201508311633'),
('96fb86dccd834245b18c2e384636996f','修改订单信息订单编号(主键)：90ecdbc0f3ce498d840bd32ee1060ee7','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-03 18:13:16','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('97383c254c354075984e87d096684a02','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:54:36','IP:127.0.0.1;机名:PC201508311633'),
('9748d92cb0f4412592b4423e9e442be2','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-31 18:39:01','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9764aba1f6af4467b00c378bd2d06864','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:04:56','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('97c486e90d3b4b9b92b129c4c728d4a7','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:01:02','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('97dad9611bab40fbb928f6522d478f16','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:53:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('97df3f13287546e2bdf8fc7e3b90cdba','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 17:01:22','IP:127.0.0.1;机名:PC201508311633'),
('9818d568654a43da90d1081b0edf6d78','修改公司简介','/admin/textevlues/editOk.do',1,'2017-08-04 18:04:45','IP:106.86.152.173;机名:iZmemcvx3hm4a3Z'),
('986163260e4545db85c8cfa0b6243e73','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 16:30:22','IP:127.0.0.1;机名:PC201508311633'),
('98618f1b6feb4a198d82fbe69453796d','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:51:27','IP:127.0.0.1;机名:PC201508311633'),
('98abc43f92e24e0c942af973e113e8e5','admin-取消供应商结算：c038bdf395b7438eb46535b964ed1ad1','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 13:39:40','IP:127.0.0.1;机名:PC201508311633'),
('99282f0c16194dd59aac31352a23ba49','修改订单信息订单编号(主键)：accb04f0e26d4009b511958c27ff00fc','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:42:29','IP:127.0.0.1;机名:oruke-PC'),
('9929d91ded964325bbefc3d94a593940','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:37:58','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('99349b7177144bd7927b0a534d8b218c','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 16:53:14','IP:127.0.0.1;机名:PC201508311633'),
('9935b4f850c1499086451e9b972995d1','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-26 13:31:59','IP:127.0.0.1;机名:PC201508311633'),
('9945649506cd410a97c00693ae112aca','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 17:01:14','IP:127.0.0.1;机名:PC201508311633'),
('996cc8f7315e4fc384b3735f4ae5e635','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 10:42:26','IP:127.0.0.1;机名:PC201508311633'),
('99882e6d0b7b48b4b503d558d4f322b2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 17:50:40','IP:127.0.0.1;机名:PC201508311633'),
('998e352e49aa47ddab8d29d7ac5eeded','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 09:12:24','IP:127.0.0.1;机名:PC201508311633'),
('99a27a0a601046978e7c4edbfdada4f7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 14:04:26','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('99af27dffe91487f9ccac6bd68ac7c76','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:55:51','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('99b4136619fc4d39a57e92fae41b8b57','登录后台系统','/pub/user/adlogin.do',1,'2017-08-04 13:55:26','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('99dd25d771104406be28cfdb07713f24','登录后台系统','/pub/user/adlogin.do',1,'2017-07-17 10:40:33','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('9a18227bbec145919119277557712522','登录后台系统','/pub/user/adlogin.do',1,'2017-07-21 10:24:11','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('9a28b65110254038a351dd74fccbc7e8','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 12:01:40','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('9a3b028271f3456bbea6a41135de0eb3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:08:27','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('9a7353c0c6644d1b8fc2ddad7868161e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 19:26:42','IP:127.0.0.1;机名:PC201508311633'),
('9a791e3cc4cf41709cc31e833d519575','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-31 18:07:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9a9315813e4b41349368fb5b9f853bdd','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 11:05:03','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('9a953d46a9014aeb8ddde3689c67244f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:18:49','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('9aac157a9c9244d881fb51e004cb353c','角色授权','/admin/role/inpo.do',1,'2017-07-20 11:01:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('9ad5c13d57e8468298bdc9cc57808f20','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:58:43','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('9afbc840d7af4f50b6019e0c1b41342a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 17:13:30','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('9b224466f7464727a191d0a8f2031d0f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 11:21:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9b250fe851f94071a69fe97114ba2d40','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:42:15','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('9b62ba6c588e4566a12c35a5bed66b72','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 11:09:05','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9b6909d88bc1491fb2f2c5d286d61abf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 09:23:09','IP:127.0.0.1;机名:PC201508311633'),
('9b925ccad11d4ca8971eb2b02d0b20d5','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 15:59:46','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('9b931ec8df72402ea1a1a76beb681c5c','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 10:27:57','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('9bb61d8410b540b299b0f45666091541','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-30 19:10:48','IP:127.0.0.1;机名:PC201508311633'),
('9becc5a71af64e0bb2fcd1f1250a3843','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 10:13:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('9c648dc07ea64fae96516009e5530790','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 11:34:25','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('9c6c8aa18f0944b6b8ea22b5332953fe','登录后台系统','/pub/user/adlogin.do',1,'2017-07-03 19:15:19','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('9c7281b1214b4a66a0d1f9fce8d1b1b7','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:23:37','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('9c7e822896b64449974e879bbb8199d6','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:53:53','IP:127.0.0.1;机名:PC201508311633'),
('9c86752ac212472aaf353571ad956c31','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:10:44','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('9caf52ba74254854ab1323e04f77a1d8','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:09:35','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('9d471ccb8f2e4fcb987a69276b5216f3','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 11:36:57','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('9d71fe2484ae4c558fc9b3fb4cafc431','登录后台系统','/pub/user/adlogin.do',1,'2017-07-17 09:03:39','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('9d79a62cf3954deeb2ae949eb680ca4b','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-06-08 11:55:18','IP:127.0.0.1;机名:PC201508311633'),
('9d7ddd08df9b49189963727e434d0ed3','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-06 19:04:53','IP:127.0.0.1;机名:PC201508311633'),
('9d954e5f13fd4a6f8464b7560c0972b6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 15:23:43','IP:127.0.0.1;机名:PC201508311633'),
('9d9f74105622427d99f34f77fe484d3c','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-03 14:54:38','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('9db90779f1274ed2a014510ea53679f4','修改订单信息订单编号(主键)：e0934a4b5ec94c5f87932b0333187957','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 16:06:08','IP:127.0.0.1;机名:PC201508311633'),
('9dc02b0d9bfb44229364b50dded9cfc0','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:59:43','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9dc1500f09db461cb603f5782cca8b26','登录后台系统','/pub/user/adlogin.do',1,'2017-07-17 09:11:06','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('9dd2f9b9c40343deabdb37f2e195c249','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 18:42:32','IP:127.0.0.1;机名:PC201508311633'),
('9e12b59671ec4ef1b850d92c81eec55c','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 10:23:38','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('9e40406cf9174851aca49a4f16f73756','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:32:02','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('9e452ce2056e4f80bb7711395b3c2fe3','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 12:05:40','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9e6119b102644bb389b27249e14d6ae6','登录后台系统','/pub/user/adlogin.do',1,'2017-07-28 18:29:44','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9e771f59d53c44c38324c471a35b85c1','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:39:57','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('9e78fa5dd18642f097d912bbfde4cc58','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-06 17:27:50','IP:127.0.0.1;机名:PC201508311633'),
('9e8e2da27d4a4623a1e9680809da965f','修改优惠卷','/qscMobilier_Back/admin/ticket_info/upOk.do',1,'2017-06-09 11:18:31','IP:127.0.0.1;机名:PC201508311633'),
('9e9706bacb0949c5b3be18f43cc8781b','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:23:11','IP:127.0.0.1;机名:PC201508311633'),
('9f21eac3e06a4c4f97e53200ab1300b1','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 16:39:05','IP:127.0.0.1;机名:PC201508311633'),
('9f23606c42424bde81759a8e4fad19ad','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 10:55:20','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('9f292525971e4b1ba963c67c0d148f0d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 16:50:19','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('9f5d4c940a9e4725bbde4916bf844573','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 18:39:24','IP:127.0.0.1;机名:PC201508311633'),
('9f6f3f690c024fa0967796a27b47650b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-22 18:29:48','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('9f84dbdd0ad047e0801510f17d4adc77','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:08:36','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('9fa2afa1c76d49d8b7be8ba28afcbf71','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-17 10:50:00','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('9fa6ff3de9874ce1ade9e3f94e764ace','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 12:02:17','IP:127.0.0.1;机名:PC201508311633'),
('9fa7bd5db6334e519786be0d6b84148f','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 16:10:07','IP:127.0.0.1;机名:PC201508311633'),
('9fa99faca7634a27bf812e6ef7d6382f','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-05-27 14:14:02','IP:127.0.0.1;机名:PC201508311633'),
('9fb4c28f7f3c4d0ba5890bacd7f87671','查询模块分页','/admin/mod/qu.do',1,'2017-07-20 11:09:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('9fb91419359d4774bc25237c60271f15','admin-修改供应商结算：de5440ade3ed4f0b9e571ea37a395b54','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:26:27','IP:127.0.0.1;机名:PC201508311633'),
('a00d806b2c1a4d9db6c9162b52e8975b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 16:29:46','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('a0180b280d354df98f207d7788be9abe','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 17:05:27','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a0693ae4bc414a8fa9024ffdf8d6618d','添加商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-06-09 16:50:31','IP:127.0.0.1;机名:PC201508311633'),
('a08ebc6b0db7403b99432b70ab0ed362','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-25 09:59:42','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a099035ca0f54c1f8bbb4536046e120c','登录后台系统','/pub/user/adlogin.do',1,'2017-08-02 15:49:28','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('a0e3f17bb5814043b93eeb649384ee70','查询用户列表','/admin/user/adqu.do',1,'2017-07-31 12:27:02','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a0e82e29da6d4420b117af7a8734d3d1','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:52:35','IP:127.0.0.1;机名:PC201508311633'),
('a0f799ac2b184b368040b0fcca47716b','登录后台系统','/pub/user/adlogin.do',1,'2017-07-24 09:04:20','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('a142924826b04d4894e1d5d2fd5479be','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 18:26:13','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('a15d15f718c74946bb615f3dbd3a625c','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 12:55:24','IP:127.0.0.1;机名:PC201508311633'),
('a171dc03a9394ec1a49d6dc7879fa4f6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 16:54:19','IP:127.0.0.1;机名:IF-20150627QENP'),
('a18e14d0266d4ac7b00c76550beecb08','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:40:50','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('a191b4cc36444195a56d60870585541f','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:34:39','IP:127.0.0.1;机名:PC201508311633'),
('a1a133fe96304a029ca28e45c521b7e2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 15:49:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a1abee55c6084162892ef5e1ebecba21','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 17:33:13','IP:127.0.0.1;机名:PC201508311633'),
('a1ad05febbaa4791aafaaccf134af2c2','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:49:06','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('a1b917cbe72e40fe95cd6529eb9028a6','登录后台系统','/pub/user/adlogin.do',6,'2017-07-20 11:14:29','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a1bf9cad5c83412fa31ac46d4fe51adc','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 09:17:18','IP:127.0.0.1;机名:PC201508311633'),
('a1c49f90b0444a9f83d53eb2d6902460','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:38:20','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('a1ee396937994262b9fc83557f99b6c5','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 10:06:18','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('a1f043eee6d74528bdb46d47a02dde04','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 17:01:34','IP:127.0.0.1;机名:PC201508311633'),
('a1fc287cf1554ccfa55a780431035429','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-22 18:32:17','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('a20b9989af23498ab46c17e16830d1aa','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:29:26','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('a21c8cfede4246fea2c4a5c9b5a3c0e0','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:14:35','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('a22bb6aa4dd14fe098bfc1c2beca2647','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:52:34','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('a236c4a393d74cb49d9857a3bd75f225','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:18:20','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('a2385e1b727444869dc3159beae88efe','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:04:53','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('a23ae1fba95d4409abfc90dc8cf9070a','添加用户','/admin/user/adin.do',1,'2017-07-20 11:11:40','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a243078243a5416d8f4c0b503973cf94','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 19:20:34','IP:127.0.0.1;机名:PC201508311633'),
('a245cdc268a34b7089b167ae0084b214','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:13:44','IP:127.0.0.1;机名:PC201508311633'),
('a24693cac953478db4bcd40429c12882','修改订单信息订单编号(主键)：accb04f0e26d4009b511958c27ff00fc','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:20:14','IP:127.0.0.1;机名:oruke-PC'),
('a26af80247bf4cb597383e440a80789d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:31:30','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('a28b202f554a47288222562b9606f43d','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 09:58:45','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a28d159fbc7a475c924c13bb82c07400','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 16:44:39','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a2d1078228b341bbb8f717d74cb350e8','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 11:29:06','IP:127.0.0.1;机名:PC201508311633'),
('a2dc8527a914453bac6dbb2ccc48051e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 10:00:21','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a323237eb8f34173b7fe0a98d8b63c50','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:04:12','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('a326474e4144434a9e511064f2705457','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 17:46:37','IP:127.0.0.1;机名:PC201508311633'),
('a332cfc9359d49b68b54c5775f2f2b75','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:43:42','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('a34a39ae493e40c884bf154db95e9a8c','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-06 16:49:32','IP:127.0.0.1;机名:IF-20150627QENP'),
('a354a56732da4846baef02c52e0bbe1a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:17:14','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a35b6c564a494b98b94b6b3036e57e05','admin-取消供应商结算：72eb353a6b114a23ba41284bfb31dfc0','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 17:05:15','IP:127.0.0.1;机名:PC201508311633'),
('a37f336e80af480e861f9d560e0b827f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 17:27:18','IP:127.0.0.1;机名:PC201508311633'),
('a3bdd48a505a4e238d57e3edf30624ef','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:31:20','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('a3f890fd26f94fa3a37a3eeb10d8af06','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-29 17:50:47','IP:127.0.0.1;机名:PC201508311633'),
('a3fd8fac9e0b4b01bb164920c4fa41d0','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 16:18:24','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a4078713863949feb1ca4b101930dcaf','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 14:01:12','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('a411410f04514f68a74ba6ff42342e81','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 14:47:26','IP:127.0.0.1;机名:PC201508311633'),
('a4164225b9e34284b98d843be9cefa72','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 17:12:13','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('a433abcc98b04f18b65cb35102951518','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:10:42','IP:127.0.0.1;机名:PC201508311633'),
('a46ea4b9a028456294e426ecc43e2240','登录后台系统','/pub/user/adlogin.do',1,'2017-08-11 16:08:49','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('a4d0f87ecc944e4faa4b1f1379576584','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:44:32','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('a4ee8eea3f604b12aaea7769981bce5f','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:53:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a51a405d4bec4303b9f8294e62acd762','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-10 11:20:48','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a520f06c206947cf9e183785c56b78f0','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-02 15:04:38','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a53a404e9dab45bfa8f2e53d95e3e406','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:42:15','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('a53f0014d013439f81d38024b6ba50c7','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:30:43','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a5bcf5e18a764294acc8a4a371ad89ea','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:13:34','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a5c1c1f812bd4fc6a19801ae983de107','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:13:36','IP:127.0.0.1;机名:PC201508311633'),
('a5ea0681a9954932a859df1c2fe81a1f','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 14:11:12','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a60266ea93334ad59354b9f486bbd93f','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 14:28:00','IP:127.0.0.1;机名:IF-20150627QENP'),
('a63ac20504b141a19e5a6474d21b79a0','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:23:28','IP:127.0.0.1;机名:PC201508311633'),
('a63df8b017864d72bfdc0f9cfe51cc89','修改派单信息ID=3e0c4af71cdb42a190128ef46229dcb8','/admin/InstallerListeEstimer/update.do',1,'2017-08-04 15:11:30','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('a6473c945365446abd0e2d5715938d33','创建微信菜单-实际菜单','/qscMobilier_Back/admin/weixin/foundMenu.do',1,'2017-06-27 17:47:11','IP:127.0.0.1;机名:PC201508311633'),
('a64a3a8c9cca4b1682bf286d9118ed5c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 14:37:39','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('a66ad502fccb417886d22a64e5428f7b','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-29 17:49:45','IP:127.0.0.1;机名:PC201508311633'),
('a698a4ecc2eb48cbb36ad4a2835a8696','登录后台系统','/pub/user/adlogin.do',1,'2017-07-03 23:08:26','IP:101.105.141.102;机名:iZmemcvx3hm4a3Z'),
('a6a4e92210334d068ea437e4065d1aa0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:53:47','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a6abb85069f54e8a886953dacf80a9a8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:38:19','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('a704ef845cd04556a1842264c5dd5c8f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:08:33','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('a72a6bf915f74255a887d3eea514061a','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 15:54:56','IP:127.0.0.1;机名:PC201508311633'),
('a74dc1586dd6450e9c59a2679c387649','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:27:50','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a766d5d5b4bd4594b25e94da691683c3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:39:36','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('a792427a4cc24485b3ee34d4245c6a6d','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 14:13:02','IP:127.0.0.1;机名:PC201508311633'),
('a7b0da2aaa3a4bf5ae7a5890c1f27f77','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 16:15:56','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('a7c33eb1b8154083b501eb691242a38e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:09:53','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a7ca456dc388410abe7ed77ea4dd3195','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 15:59:00','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('a7f4ec600db144a4bb7dc12fb2e11970','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 16:46:30','IP:127.0.0.1;机名:PC201508311633'),
('a824946560184b5aa1c4a3cd07d13eb6','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 17:33:25','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('a82cd99b493345abb49ebb4f1ed16172','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:18:50','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a84e6680ab874658b2573bf9efe5337d','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-25 14:03:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a851f39f7894406e82600b7fa255e856','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:29:14','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a86e2b1f005846a4885bc7fd2617086b','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:21','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('a8716a1ff4344a4c916716b8e0d6f633','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 19:07:13','IP:127.0.0.1;机名:PC201508311633'),
('a8ccf486c08b4fd0af0830b4c27d4920','登录后台系统','/pub/user/adlogin.do',1,'2017-08-09 09:50:41','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('a8e1aaf9113b423c80c13994a76ee431','admin-修改供应商结算：7fd553a7095a4744b90d3b3c709d46f8','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:16:31','IP:127.0.0.1;机名:PC201508311633'),
('a8f60fd19dd04fbc81b79dfd7c303226','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 14:26:25','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('a9130562f3fa43878c5832656f33f2fd','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-05-27 15:46:44','IP:127.0.0.1;机名:PC201508311633'),
('a9166bee48d8462581eef37c9cb35be7','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 16:26:44','IP:127.0.0.1;机名:PC201508311633'),
('a9783296bec44ffc8125b2727a3cc454','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 14:20:31','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a9906238d3d14f238943a1243a136e04','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:43:14','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a9b8e094dd874cea882d7f9b1832eb0f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 10:01:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('a9cae05f9cd24365ad4afa61476b9c90','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:34:01','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('a9d986c6be6a41ed87f2206902424608','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 10:33:55','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('aa244fa4c8c940b0a20bfa5b8114f2fc','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:12:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('aa2d8951db2f44a7830069b3154d2665','登录后台系统','/pub/user/adlogin.do',1,'2017-07-22 17:11:59','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('aa30ae7554e34eae9d3f21b750618733','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 11:58:05','IP:127.0.0.1;机名:PC201508311633'),
('aa3b02caa9f94520b48308713902639e','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 14:39:32','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('aa4e5001bf574051b211895b4a015df6','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 16:19:24','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('aa4f50c2607c4929a39e5a43890f3977','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 11:54:20','IP:127.0.0.1;机名:PC201508311633'),
('aa58293dc405493195d0b44e46d66fec','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 11:01:20','IP:127.0.0.1;机名:PC201508311633'),
('aa7011a8e3af49c9bb1a7d20bdb8a926','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 09:28:11','IP:127.0.0.1;机名:PC201508311633'),
('aa71d55c08fa4a6fa46b58c706861321','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-05-31 09:16:50','IP:127.0.0.1;机名:PC201508311633'),
('aa8f6725c9654cdcba26f3704ccfd8fa','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:47:30','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('aaada381eeea45ccb8bd284673ab4b20','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 17:01:16','IP:127.0.0.1;机名:PC201508311633'),
('aac430c08c0c41abb4e48eafdb7cdd90','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-05-27 15:51:07','IP:127.0.0.1;机名:PC201508311633'),
('aaf9fc11df8741db9b57e010f7ee494c','修改订单信息订单编号(主键)：3655dd11d92a415e9b148412ec0206e3','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-28 16:36:29','IP:127.0.0.1;机名:PC201508311633'),
('ab6cc3bd5c0b436b8841c5ef85930e05','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 16:36:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ab882876b8f84aee9b152c8095947ea7','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:52:41','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('abe4d8b3d6b54966ad47b9e9e79c7a47','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 20:10:12','IP:127.0.0.1;机名:PC201508311633'),
('abe9a7b1038742d08e42713e42a09867','修改订单信息订单编号(主键)：3655dd11d92a415e9b148412ec0206e3','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-28 15:41:18','IP:127.0.0.1;机名:PC201508311633'),
('ac2310b23fa943c48d4935994602c218','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:52:42','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('ac4750b2e8d74b2cb2ada99531ae3ea2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 09:15:00','IP:127.0.0.1;机名:PC201508311633'),
('ac786bc4aecd44f99c4c228fc5550a80','查询用户列表','/qscMobilier_Back/admin/user/adqu.do',1,'2017-06-22 15:24:02','IP:127.0.0.1;机名:PC201508311633'),
('ac8d99d30ad64af680ea428fa2d98f73','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 13:43:34','IP:127.0.0.1;机名:PC201508311633'),
('aceac037fd7640cd875ed7972029e34a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 09:26:25','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ad0770ebc0e849f79ede5b2a6fd2c1c3','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:19:35','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ad07ba2c8ffc4bae824bb90885b18987','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 16:44:20','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ad1a06ee2b8f483e97c1639073e809f8','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:21:40','IP:127.0.0.1;机名:PC201508311633'),
('ad49301e20ee4777b63cb08e769529a1','登录后台系统','/pub/user/adlogin.do',1,'2017-07-31 18:41:19','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ad61c2c6d7f54be88aca21b02d6bb733','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:57:40','IP:127.0.0.1;机名:PC201508311633'),
('ad7173c06f9f40cdae3349298f5be8e0','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 17:29:30','IP:127.0.0.1;机名:PC201508311633'),
('ad96b27549ff491899d4401dcece4236','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-08 11:54:19','IP:127.0.0.1;机名:PC201508311633'),
('adb9c2a780904772a5af55e995ae3de2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 18:56:11','IP:127.0.0.1;机名:PC201508311633'),
('adbd5b32d55d48a187229f55233ba054','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-25 11:21:25','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('adc372d942644970b8716838a7fe688b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 10:00:52','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('adc665231b6448559e358c18a41049ed','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:09:36','IP:127.0.0.1;机名:PC201508311633'),
('add159cab9804a26b980a54863d7d2d9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 11:30:58','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('adeb4147b1e74545b50b7cc2acdc93b0','登录后台系统','/pub/user/adlogin.do',1,'2017-07-18 17:23:00','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('adf57099f3314f6892cbb6eb059e58c5','admin-修改供应商结算：a1b1027497594d0a8238cb88aead4699','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-30 17:11:22','IP:127.0.0.1;机名:PC201508311633'),
('adfbbde716934ad6a1f98c91a2fa4d08','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:38:33','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ae07867a8618415795ddc03b3b155db1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 17:10:19','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('ae49b5eb8a76458ca68f5cef8660198c','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 12:05:40','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ae60f0a58b384a208b68da9ec7647442','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 17:28:40','IP:127.0.0.1;机名:IF-20150627QENP'),
('ae6f9d9273a449a8aedd945404f232c1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:55:54','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ae8150331d61462c8ef4b71143a9c382','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:10:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ae8e46db1160474ab868b5cb5f8e7ca2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 14:38:47','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('ae8e4a86d42a455aab59196891ef1c32','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:46:03','IP:127.0.0.1;机名:PC201508311633'),
('ae97eab5c19a424db4b58d259dcc59ba','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 10:59:50','IP:127.0.0.1;机名:PC201508311633'),
('af4cb616315d4a2ead9c87de60ffcdf5','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 10:26:28','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('afd201a0f4fe4ccdbb48ca05878f082f','登录后台系统','/pub/user/adlogin.do',1,'2017-07-17 12:03:34','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('afd8f3fa3d1342cebd97d38fd30104a9','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:15:51','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('afddddb8579a47bca723fb67eae6c900','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:32:08','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b00fc3bb261b4f8e8b541fa7067f9af9','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 14:56:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b021c696c81e48cf8e8dc10edea1458b','修改派单信息ID=3d27926eb5104623bfbba11b9df788bf','/admin/InstallerListeEstimer/update.do',1,'2017-07-31 19:15:24','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('b0321db2d6d14eb2a25578dcdc091fda','添加角色','/admin/role/in.do',1,'2017-07-20 10:54:26','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b04c246f2bc844719e800f54d4927d3d','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:32:17','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('b0574059139049a8a0f4b1d6312fd03a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 10:50:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('b05d2af9d60843a1bf8532d06f1efdfd','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 11:40:04','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('b0731331521548ae89e15d8270fcd3d6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 17:00:37','IP:127.0.0.1;机名:PC201508311633'),
('b090990a04624df88b2e3fb86dc610c0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 15:53:11','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('b09582514ee94cb4ba21eedc943fda9f','查询模块分页','/admin/mod/qu.do',1,'2017-08-01 14:39:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('b0ddd48477ce47c8aca525c1f133142f','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-05 11:35:12','IP:127.0.0.1;机名:PC201508311633'),
('b107d0445dfe4b1f9ee1049019c4e529','修改订单信息订单编号(主键)：3655dd11d92a415e9b148412ec0206e3','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-28 15:40:38','IP:127.0.0.1;机名:PC201508311633'),
('b13b7cc046cd4d3fa3a138d677882609','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:10:36','IP:127.0.0.1;机名:PC201508311633'),
('b14737fca8f54dea873000876b75d8e6','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 10:47:58','IP:127.0.0.1;机名:PC201508311633'),
('b1898b41c9cc4e01873601808527d85f','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-05-27 15:23:59','IP:127.0.0.1;机名:PC201508311633'),
('b18f5195a57a444b949348173d44c341','修改订单信息》》订单编号(主键)：663b409828d1478194de90f2920ae807','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-28 15:42:27','IP:127.0.0.1;机名:PC201508311633'),
('b1b88a744c7d44cd9b935f55114a604b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 17:07:27','IP:127.0.0.1;机名:PC201508311633'),
('b1b8b1dd8e2a469fb223b110feb22e6b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 14:22:44','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b1d12642161242cfa4f8f3ef55829718','添加商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-06-09 10:44:51','IP:127.0.0.1;机名:PC201508311633'),
('b1d423ba917d4d7ca9893114184c640f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 14:58:16','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b1ed739d7eef4c0fa8b6cafc4c5699e1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:52:52','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b1fea1cbbaf04784872c0ebdef14bed3','登录后台系统','/pub/user/adlogin.do',1,'2017-06-03 14:35:54','IP:127.0.0.1;机名:oruke-PC'),
('b2024ac45e874bd6942b30ddb2c52116','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 18:56:11','IP:127.0.0.1;机名:PC201508311633'),
('b2075cb2aeae473d80bd29fce1001224','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:00:00','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('b22adcb2a5164d8291bddc8049dcee1f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:13:23','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b2357ded39d843069e8808f9a0df0fda','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 18:51:48','IP:127.0.0.1;机名:PC201508311633'),
('b2543fd2c23143f3a35f70b9c782925d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-17 12:02:58','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('b2587dade2d2472a97d4b017d7733371','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 10:59:42','IP:127.0.0.1;机名:PC201508311633'),
('b26369284bb345c5987a3190c6eb213f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:07:49','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('b27721d6a92845ae9160a497a232ced5','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 16:12:29','IP:127.0.0.1;机名:PC201508311633'),
('b28d4d9cbc3a4dd79e13a3fd41aa07a0','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-30 19:10:47','IP:127.0.0.1;机名:PC201508311633'),
('b28ee875bcce4451a0476a9a99d43c1f','修改优惠卷','/qscMobilier_Back/admin/ticket_info/upOk.do',1,'2017-06-09 16:57:43','IP:127.0.0.1;机名:PC201508311633'),
('b291a5e118014e38bd8a16120c3f2e9d','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 15:24:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('b2a533fc038d43c7a572f07f83d4f3be','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:18:37','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b2c94bf4590f494ea431b6c0547f12dc','修改比例信息ID=6','/admin/ordrestatut/upOk.do',1,'2017-08-11 17:37:00','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b2efe478150f47448f3fa864d61c0df1','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 11:45:32','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('b2efffce43974f34a408b7bb8726b138','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:18:51','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b2f52dc654a947eb96fe465adb025669','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-26 15:47:31','IP:127.0.0.1;机名:PC201508311633'),
('b329152be31a4c1a878e41b77ec09e32','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-14 11:58:59','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('b365ee9ab3934330a611f2b38b25a978','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:05:28','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('b369eb719ee845f2b89fe5ceb33c2882','登录后台系统','/pub/user/adlogin.do',1,'2017-08-03 09:47:33','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('b384cbd1bf234ba586ee738b78e4fb31','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 16:52:02','IP:127.0.0.1;机名:PC201508311633'),
('b3a5c16c952045569c132d9042c1d785','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:56:34','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('b3a70e785c6f422a972350c00e80a397','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:14:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('b3d482dfe0f0414382561be31a6b906c','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 14:55:07','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b3ee2e167cb44e9d98ec9de357191592','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:04:11','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('b40d1c183ce34351adccb785476baa72','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 09:46:06','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('b41dac4ced444a8eb1362643e2fc6390','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-22 14:53:23','IP:127.0.0.1;机名:PC201508311633'),
('b4288c03891b48d397032bbbecbd5e69','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 15:41:00','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b44cd477fe1c43c697843c54b0069aa0','登录后台系统','/pub/user/adlogin.do',1,'2017-07-15 11:28:00','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('b49a8c4b50f84e70a04d8db86cacfd93','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-06-30 19:11:00','IP:127.0.0.1;机名:PC201508311633'),
('b49b4535595e43fcb033df3b7196b7f2','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:00:04','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b4a9791daa65467e928c7531c54d4426','修改订单信息订单编号(主键)：88e428de1fcd4db28e5aa72279aea5e4','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-27 15:05:55','IP:127.0.0.1;机名:PC201508311633'),
('b4b6e1df89fb43fe970bbba5e462dbc0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:23:00','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b4db343f066940fdad1bbd32dbc381fe','查询模块分页','/admin/mod/qu.do',1,'2017-08-09 15:49:17','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('b4ddc6c3bf574c69b210ddaa8eb779ab','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-05-31 15:28:24','IP:127.0.0.1;机名:PC201508311633'),
('b5157f80ea344c179a034284e29ab9d1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:53:42','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('b51acae8314c414e90d597a6e1032c01','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 11:09:38','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b538906c608b48c98bc5f33f361ba576','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-04 13:56:08','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('b544a4748b504905aee2f0ad39fa0654','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:54:50','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b554d92d3a5549e7a3ac1c71ec413863','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 16:57:05','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b56ed766281e499bbade13fbb0f6e3d9','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-17 10:45:48','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('b5700eaa3c3144ab8924f9800595c99a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:57:40','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('b5ad8070feff40d7a0444f62c61a5439','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 15:41:15','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b5cf82dfc0de4c9ba5408812d1484e4f','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-13 13:59:12','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('b5d0bc21e84f414bbe4cb3abdc5d71de','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 09:24:28','IP:127.0.0.1;机名:PC201508311633'),
('b5eaccc6e2f5409ab297fe5ab7b069fc','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 13:38:53','IP:127.0.0.1;机名:PC201508311633'),
('b5ee2df71fae4b2a896731302b7fc4c2','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:23:21','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b5f685261dd74ab0a1f21a028ad56b08','添加商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-06-09 16:50:21','IP:127.0.0.1;机名:PC201508311633'),
('b624aeef16494ba38f03c73ecf7bedc8','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 09:52:54','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b65ece6c7dc0488ebe8ee30b9f78283b','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:51:00','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('b66704cbc27c4c9497bd757d087a0d02','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:26:59','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b67447a68e564769983175defe05f936','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:11:39','IP:127.0.0.1;机名:PC201508311633'),
('b682569339b6412dbcaab4221e256b0c','admin-取消供应商结算：2eb758796b564d14962b0702b0fe60ed','/qscMobilier_Back/admin/settle/supplier/removeInfo.do',1,'2017-06-30 14:02:39','IP:127.0.0.1;机名:PC201508311633'),
('b6a5a2101e7b459fbf44e108f42b8797','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-14 12:00:27','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('b6c2d6b0ad2548e881f0b8fbd4d7f80f','添加商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-06-09 10:39:17','IP:127.0.0.1;机名:PC201508311633'),
('b6e1443a5b5e4901a9023cedb1b9880a','修改订单信息订单编号(主键)：de9b22fbe6aa4e979345f0bc1ebca2bf','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-04 09:10:02','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('b6f0b463413d48528dc5d226bfcd302c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:09:09','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b6fa70e08f804e719bc3412409594c17','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:16:52','IP:127.0.0.1;机名:PC201508311633'),
('b72c01e4214a4df2825a7fd6aaa0660b','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 10:47:48','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b761a324113e4d2cbcda43268263acd6','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 17:33:09','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b7a15498430a42668503a3b5dfcb590c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:46:53','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('b7a2192b711d4b86b78a21e1f0ed546c','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-05-27 15:23:49','IP:127.0.0.1;机名:PC201508311633'),
('b7a5adca937243cb85a575145946b0ec','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 10:34:44','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('b7dc1a60212040e1bf0f66f68f742247','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:27:15','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b7e2ec63563846c19fbf2a54d5ca7211','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:47:28','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('b80b65bfaee94b3fb63c3fd59d70e5fc','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 15:17:54','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('b834a82f59464dfbb328f6802a52b6ce','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-04 14:47:35','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('b84c882ee6aa4318a94afc4d1f9faad5','修改活动规则(推荐排名)说明（抽奖）','/admin/textevlues/editOk.do',1,'2017-08-10 17:55:38','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('b8670af1adf64e64bd5c6914e9e8bef8','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:28:25','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('b8898ea890164e40972f0f7f5fa08dc6','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:06:39','IP:127.0.0.1;机名:PC201508311633'),
('b88b766ee8a24554873572036a786639','修改订单信息订单编号(主键)：6fff83f230914993aaba891fb5617253','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-07-20 16:57:35','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b8982e75183546e186374b16c841e32d','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 09:52:42','IP:127.0.0.1;机名:PC201508311633'),
('b89d546fd23246239146d804eaf558f2','登录后台系统','/pub/user/adlogin.do',1,'2017-07-10 09:03:40','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('b8dc2785dd9442f4aa18b76526a040e4','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 18:19:31','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('b8ea3e371c5649a3af2d62c6d5b5ce71','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:32:35','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('b9055c25a2e34312bac11e2b23ce18a0','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 11:03:51','IP:127.0.0.1;机名:PC201508311633'),
('b94076d3f1b04a9c8f6cce66ed83cef1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:55:57','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('b94a230b166447c7a0f3fc01f17337c7','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 11:46:23','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('b94a6b127327486faaf7e9ccc76364b7','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:28:56','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b950272483e745b3b3a729b0ec93c5bc','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 15:02:23','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('b9636f7c477b44abb3a0c84160586fcc','微信菜单已被删除-实际菜单','/admin/weixin/deleteMenu.do',1,'2017-07-11 14:53:29','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('b965a135d4324c839a383173c7e81dd9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 17:57:51','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('b96c2e9333e340ff92321d7caa06afb0','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:10:32','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b9917b7eb0784f4fb243c89d19c24d99','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 10:41:49','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('b9928beb8bfb4d308bc033502c907805','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 09:58:17','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('b9c40988753446119ec8d643d092925a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:07:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('b9d49ac227f14316932b079fb7aeff7d','修改比例信息ID=9','/admin/ordrestatut/upOk.do',1,'2017-08-01 14:53:55','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('b9d6898b9ab14e0e91b23eb7dbcf3cbf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 13:33:16','IP:127.0.0.1;机名:PC201508311633'),
('b9f0e6b1cf1e40029e3a6aba81714517','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-01 11:08:52','IP:127.0.0.1;机名:PC201508311633'),
('ba1097e2cbdd4a2283e7d96675685f9b','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:35:20','IP:127.0.0.1;机名:PC201508311633'),
('ba33a84510344de8996cd17adf0c6c12','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:35:08','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ba674a88f57042bfa577165e9270c705','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:38:30','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('ba7c584663214c3f9e712cacbfa0eb97','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 15:11:19','IP:127.0.0.1;机名:PC201508311633'),
('ba84567aa3cc4c1f9c5481a175f3d43e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:08:30','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('baada45cec334a888c879f2624ed8a0f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:30:35','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('babefdbd0788497a9636ed7c31a33ab2','登录后台系统','/pub/user/adlogin.do',1,'2017-08-04 14:01:16','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('baf290211620457d9358c08394d3b12f','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-30 19:09:55','IP:127.0.0.1;机名:PC201508311633'),
('baf3f30436f8400999b3715ed209e2ca','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 09:54:01','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('baf94421b55f4bab83b6951a614ede50','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 17:10:09','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('bb15fe4001a94ccca7d1254317ec58df','添加商品分类','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleType.do',1,'2017-06-09 10:06:55','IP:127.0.0.1;机名:PC201508311633'),
('bb17f8d4d6e6496982cd8e210e3a5605','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 11:18:06','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bb25ea906e4446caadef8aad0dec4249','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 17:45:07','IP:127.0.0.1;机名:PC201508311633'),
('bb568641dd6b4b3ca623bc18d388a55b','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-13 17:35:06','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('bb712e2864c34dfd924dcfe73704d0e5','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-08-07 18:40:39','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('bb74fa4e51d14e7abffac910dc78e399','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-08 14:28:23','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('bb833bea8feb40a9ba883693e68ef3d1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-03 23:12:36','IP:101.105.141.102;机名:iZmemcvx3hm4a3Z'),
('bb99ecf4ced4420fa0fc5364c23b5876','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:38:28','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('bbb104a1cda849e9bce940761117c7f3','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:52:17','IP:127.0.0.1;机名:PC201508311633'),
('bbd9f80da3cc4f39bc7b04fb6fd36acb','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 17:07:27','IP:127.0.0.1;机名:PC201508311633'),
('bbece4c6f47c4beb9dccaeb95e8877da','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:29:39','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bbffa24f2e7048aabbc8f311987089e6','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-31 09:51:00','IP:127.0.0.1;机名:PC201508311633'),
('bc1d18c8fbf04a139c63b81425169dd5','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 09:25:32','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bc24345a169c4a3e82c0e73b4963302a','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:39:28','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bc275846936a4a0f9d4d41ea5713c8c4','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 16:57:49','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('bc43b4891bad42d8b425aec20eb1f2b9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 10:29:40','IP:127.0.0.1;机名:PC201508311633'),
('bc9ebbf4960e4f2a99b86749383591dd','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 15:48:17','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('bca8a886943f4bfcaf203523c3fe65d3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:10:16','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('bcbe7d7373aa4fe382be0ff7b14a2f81','登录后台系统','/pub/user/adlogin.do',1,'2017-07-15 11:57:54','IP:106.86.152.144;机名:iZmemcvx3hm4a3Z'),
('bcc0f3f22ba64e7aa01b67edb018c4d0','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 11:52:46','IP:127.0.0.1;机名:PC201508311633'),
('bcf592a461a44411af246d42af714382','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 11:06:55','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bd696179327d45cf9299ce60fcc9e07b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 15:40:19','IP:127.0.0.1;机名:PC201508311633'),
('bd7bb4a11d374a7b823f9cb35ccc9219','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:59:18','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bdddc8a7cdb5463abbab100ea3b33de1','删除模块','/qscMobilier_Back/admin/mod/de.do',1,'2017-06-28 14:53:46','IP:127.0.0.1;机名:PC201508311633'),
('bde240aab28b4578b5fb2283b02b269e','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-23 17:09:21','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('be0821d58d4c46609fa39c8c627b4570','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:57:24','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('be0a671edcf74d7ca326a975f3258791','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 11:09:48','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('be159899d621480e87cd1c5c24361aad','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:20:44','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('be22eca5dbfe478fb17bfaf39a870049','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 12:05:07','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('be387343e77041c2b55f6e8ff3615b53','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 13:36:19','IP:127.0.0.1;机名:PC201508311633'),
('be3b237356ad4f14a0e13a9cb0724bcc','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:18:26','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('be4edf03c35143f381fc909aefb77e1f','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:30:12','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('beae6f12a59445db988eca2d3e2840b3','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:34:43','IP:127.0.0.1;机名:PC201508311633'),
('bebad95f64c646aebae4ed15a17be317','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-05 11:31:45','IP:127.0.0.1;机名:PC201508311633'),
('bec757aa4efb453784259871978ef74b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:34:24','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('becd4c1c236846b08681f02e44d0e827','登录后台系统','/pub/user/adlogin.do',1,'2017-08-01 15:19:42','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bedf3bafa55547e5a274404f5e9ed991','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 17:23:12','IP:127.0.0.1;机名:PC201508311633'),
('bef16b4bb4b04b209203656bfbe598f6','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 15:51:16','IP:127.0.0.1;机名:PC201508311633'),
('bef78910a2f44f18b54c64d2e97c809f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 17:06:00','IP:127.0.0.1;机名:PC201508311633'),
('bef9577b36bf4150b03fdb2e3f8eb726','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:21:01','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('befda094fd6f4d06b878590d64390ba8','修改订单信息》》订单编号(主键)：652c4ef6d637442ca48c0fc799d05196','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-23 11:39:07','IP:127.0.0.1;机名:PC201508311633'),
('bf00ab87cea84cae8eda6843fb1d9435','删除角色','/admin/role/de.do',1,'2017-07-20 10:54:56','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('bf0a3316efd94f3b84c781d47535d76e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 14:21:04','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('bf0da1cc3cc3445092f173991a334799','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 13:41:17','IP:127.0.0.1;机名:IF-20150627QENP'),
('bf11109998744b52af0e943c5f252977','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:35:40','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('bf1cb15f4af94ff08785496443f6acb8','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:30:48','IP:127.0.0.1;机名:PC201508311633'),
('bf3e5b8b54d64eb8b9fb33bae07efb4b','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-25 17:30:06','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bf6de1f56afc463f87303b0b7605162c','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:26:36','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('bf6fd1da17bb4ad58c1651b57de4c3f4','登录后台系统','/pub/user/adlogin.do',1,'2017-08-10 09:08:11','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('bf783b6835f9422c963e1ed2d3ae31ce','修改商品分类','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleType.do',1,'2017-06-09 09:58:44','IP:127.0.0.1;机名:PC201508311633'),
('bf9887b9d2ea4d5f99d23fc34a8a6f39','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-31 18:38:53','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('bf9d3610fb804001bb6546b85162a50f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 11:06:21','IP:127.0.0.1;机名:PC201508311633'),
('bfcabd76b2ae4b5c931b9c486ef15dc0','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 08:42:13','IP:127.0.0.1;机名:PC201508311633'),
('bfe32e6f04dc4db0b23a966181df9836','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:29:38','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('c0156f11fc5049df93573844a8a581ec','重置用户密码','/admin/user/adreset.do',1,'2017-07-20 11:21:02','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c03c297ac82b4825ab13762c76e3401a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 12:04:49','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('c0664ca7ac964eaa9bcb0c548499dbe5','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:47:32','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c09a73d06be1489da2261b514461757c','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:51:04','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c09ad2f572454653a9434b065fb68b32','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:14:38','IP:127.0.0.1;机名:PC201508311633'),
('c09af95f137d4f8ab387c7395011a7d2','添加模块','/qscMobilier_Back/admin/mod/in.do',1,'2017-06-28 14:54:26','IP:127.0.0.1;机名:PC201508311633'),
('c0dbf849658c41d58090a2c2caea453c','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 16:49:33','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('c0f44ae6cd634d099314c3c7993bee9d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 12:05:46','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('c106190074a24e02b8e18ffdaafe7b96','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 09:12:06','IP:127.0.0.1;机名:PC201508311633'),
('c10a692b25d04a51a40935488b94e4fd','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 11:29:56','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c1305dee7e9f48c79c50216b1dd348a3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-23 10:54:57','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('c13ff2cd42434cbe81400e9264259ecf','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:10:22','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('c1739b9e620e4e8ea110dd2bce31b69c','登录后台系统','/pub/user/adlogin.do',1,'2017-08-01 09:23:36','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c173daed4b4f4c4dab7e2b925efdef64','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 16:03:41','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('c17dd3cec17048068d8ab267e19cac9f','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 16:00:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c191ac15ad0b451284d24a2df4a4db2d','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:59:02','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('c191ddee715f49e28ace32d2f68a8f15','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 11:22:16','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c195c41b9a994f489b9448c786c14749','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-31 09:50:14','IP:127.0.0.1;机名:PC201508311633'),
('c1d5993d2f42476ab5a3ca5cec9fbf14','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 16:46:11','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c1e23b8e50774a438e575a77d612d8ee','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:54:26','IP:127.0.0.1;机名:PC201508311633'),
('c1fd8472e6504da691212de308bfee63','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 11:43:28','IP:127.0.0.1;机名:PC201508311633'),
('c20fbc5faf0e4952a434d8530dcf8846','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-10 11:25:55','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c214772aa84e4498907f6fc9f8d50872','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 18:27:43','IP:127.0.0.1;机名:PC201508311633'),
('c215f297d3ec45a6aba9056484dd1775','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:55:51','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('c235af0cd07d4c2dadb2cd8b73ae5bf2','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:33:43','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('c24b448a51e64386a5bd117f3cd47440','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 11:28:37','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('c25afe0578e24af4ab5dfc124b1635db','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:43:35','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c2657ed574624dd09531bfd9751f3505','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 18:05:49','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c27b5b527e5d4cf2bd23bf89afb5918c','查询模块分页','/admin/mod/qu.do',1,'2017-07-14 14:22:34','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('c289978258b84fb4aee9a5583bab3d76','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:12:57','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('c29d20abbb9c41b3bc8b2253ba19ce0a','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 14:34:06','IP:127.0.0.1;机名:PC201508311633'),
('c2a38c611c6c4a42bfceb4ed00935a2b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 14:20:42','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c2be66ed1e714d488ac2bd389af5b2ba','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 15:20:37','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c2e32507a3e3494ca090a1425f921948','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 16:04:04','IP:127.0.0.1;机名:PC201508311633'),
('c2f0b803b9954757a116ea959a3d805c','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 15:21:00','IP:127.0.0.1;机名:PC201508311633'),
('c3098c0d4a124575ae7132837df87e48','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:59:43','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('c336d844bb6d4b20a6196fe99a7c72db','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 10:28:28','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c342008f2ef44107aa16d9b5d164ac36','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 14:23:30','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c342d0a3f9e14ba8a31586f7eba8ba3d','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:51:41','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('c361a8a3bbc147feb3fd69177fdf7917','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 15:35:33','IP:127.0.0.1;机名:PC201508311633'),
('c39309a951be401ca61e9e7fc797d7ae','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 09:15:17','IP:127.0.0.1;机名:PC201508311633'),
('c3a05a592afa426aa0e1192b2ffcdda5','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 13:39:19','IP:127.0.0.1;机名:PC201508311633'),
('c3a09931f53240f694788e254dc9866b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:41:23','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('c3c5a6607c9a42b8843cabc03425bdae','修改订单信息订单编号(主键)：01b9f85c5c414a888fb2008363be90fd','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 11:38:36','IP:127.0.0.1;机名:PC201508311633'),
('c3e25155c0ac49aa872809ec1868afe8','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-06-27 16:34:39','IP:127.0.0.1;机名:PC201508311633'),
('c43bd02386a846b6b7376c914c3e5b3e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:08:49','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('c44b75ae02554d5cab078372fddf46eb','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:10:23','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('c4540f1a08d14195abb4a76bec8864ab','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 15:20:27','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c4752cc96e7e4ce98e62628677c2f1a1','admin-修改供应商结算：652324caf4c343be9dedc1556271dd1e','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:13:11','IP:127.0.0.1;机名:PC201508311633'),
('c47c5650feec4cebba507160cedada2c','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-22 20:07:30','IP:127.0.0.1;机名:PC201508311633'),
('c49d477b63e64f07820cc87beb8aad4a','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 10:33:10','IP:127.0.0.1;机名:PC201508311633'),
('c49e3d820f0f4d39930c51c9109ef73e','查询模块分页','/admin/mod/qu.do',1,'2017-08-01 14:59:00','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c4a30d2543064ffdbeb0e450db249232','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 15:15:42','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('c4cd217d08934784a44e405ab41f6213','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:09:22','IP:127.0.0.1;机名:PC201508311633'),
('c4df2dfaa85d4c7596672821eaea881b','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-18 09:28:52','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c54f85071f7241f3bed5d98b31c90d13','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 11:31:26','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c5565516a5804ebab7b621fa466169ef','退货申请信息修改','/qscMobilier_Back/admin/UserMeubleOrder/updateReturnInfo.do',1,'2017-06-01 16:21:16','IP:127.0.0.1;机名:PC201508311633'),
('c57dd09133ef4b6d822a4a76bf1aa1c6','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 16:39:04','IP:127.0.0.1;机名:PC201508311633'),
('c5a3339f752544d88d855381275fbd27','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-28 17:33:19','IP:127.0.0.1;机名:PC201508311633'),
('c5aa4fd569bb48059e96baac7076bc25','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 11:49:34','IP:127.0.0.1;机名:PC201508311633'),
('c614151cc6074e15a7bab489aa6e49f5','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:55:27','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c6250eab827840858d21d29ebe81305c','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-05 11:33:06','IP:127.0.0.1;机名:PC201508311633'),
('c659c981cffc4fbdbc6151088cfbe28c','查询模块分页','/admin/mod/qu.do',1,'2017-07-19 14:11:15','IP:183.228.21.159;机名:iZmemcvx3hm4a3Z'),
('c6884af682044ae2a54ccc24d0f0848e','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 15:33:38','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c696bcb04cdf467691db950b9ecd8925','添加商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-06-09 10:45:38','IP:127.0.0.1;机名:PC201508311633'),
('c6d4a06e995b48b5a6e3fa759714a0cd','查询模块分页','/admin/mod/qu.do',1,'2017-08-01 14:59:02','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c6ec8ca03cfb48d68e7cc97a38d162ed','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-31 09:51:26','IP:127.0.0.1;机名:PC201508311633'),
('c714204515eb42d9802b885f3eac1dcc','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:22:55','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('c756e038d8b44afabcee5525deb5ab12','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 15:13:50','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('c764fb20c4144b88b375a07df665c832','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-19 16:05:00','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c76c07579dea4a4cac8467a54799a314','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 17:08:32','IP:127.0.0.1;机名:PC201508311633'),
('c76c70bcacf242cd8e0f7b41920010f9','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:52:54','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('c775d7228e964909adc12bc5ac4907ba','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 15:08:06','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c7af247487cd4afbbc69ebd2eb1d8cf3','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 13:47:34','IP:127.0.0.1;机名:IF-20150627QENP'),
('c7cfd5eb8b9a488ea248148889b5b767','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:23:23','IP:127.0.0.1;机名:PC201508311633'),
('c7dbb259689742c4920d59c5459c6618','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 16:08:09','IP:127.0.0.1;机名:PC201508311633'),
('c7e5e423c6ec42e9bd822dec6020a7e9','修改派单信息ID=a67956b6ecfa40f68d7d9e90a20d7db0','/qscMobilier_Back/admin/InstallerListeEstimer/update.do',1,'2017-06-27 16:13:05','IP:127.0.0.1;机名:PC201508311633'),
('c7e931c7742346f6a5d49b7dd55db2c6','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-21 15:16:41','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('c7e9732172034844b93b474219be0fb3','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 11:51:15','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c7feeab36ac84652b9e4f0dd19199a01','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-08-07 18:48:36','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('c82b9281ffc1404f9d748526d99b4c54','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-31 11:45:30','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c82dd909a894467a9a958949722c8b70','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 16:50:11','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('c83c40b026f54c058060fa0d6d83fd4b','登录后台系统','/pub/user/adlogin.do',1,'2017-08-04 12:02:11','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('c84350d40467479da564243631a99fca','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:56:35','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('c845bff39c5945daad16cbff224556e4','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 10:49:28','IP:127.0.0.1;机名:PC201508311633'),
('c8695af37e634db994ed64ee24f58c3b','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:16:04','IP:127.0.0.1;机名:PC201508311633'),
('c86ffde3d1ee4be4a8c6eed59ae8beff','admin-添加供应商结算：51914aca442a4ecd9ba8e9d4ac05f78d','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:09:10','IP:127.0.0.1;机名:PC201508311633'),
('c88ebe17d5f543eabdbbfea63947cd65','修改积分商品','/qscMobilier_Back/admin/point/editeGoodInfo.do',1,'2017-06-09 11:13:45','IP:127.0.0.1;机名:PC201508311633'),
('c89e390d7c7b4b9cba4498a3de341e3f','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:34:40','IP:127.0.0.1;机名:PC201508311633'),
('c8b7fddeceb34ec392a992f181fc7e13','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 14:45:02','IP:127.0.0.1;机名:PC201508311633'),
('c8c1b4ed36c54aa0b30325a7f02f535d','重置用户密码','/admin/user/adreset.do',1,'2017-07-20 11:16:53','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c8e0e7cfabd44ca0b773d9cac7c287d4','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-25 10:50:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c8f3a17473874194857ad3f1567cfa5b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 11:31:14','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('c8f5e095b3d744a990ae651fec5a7817','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 10:32:08','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c90aa6a118b24d50b1d906a68bf7e74b','登录后台系统','/pub/user/adlogin.do',1,'2017-07-13 11:43:39','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('c90e0658135b488ab201144f20f08fe2','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 15:50:14','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c9136b80be554301a6292709cc121b28','修改订单信息订单编号(主键)：e0934a4b5ec94c5f87932b0333187957','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 16:06:42','IP:127.0.0.1;机名:PC201508311633'),
('c91ba722c7714bc5ba77c2e757dade03','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:18:22','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('c92a77744c564f53a439b4c0463839c9','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-17 11:30:35','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('c95c75f87c5645ed8f481d86a3dbdbbd','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-18 09:42:38','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('c9955200065b4ad1962bbee7b5707224','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 17:13:56','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('c9c1f236c5e94248bd719c40c20f9978','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-07-03 11:09:34','IP:127.0.0.1;机名:PC201508311633'),
('c9cb56042fbf43efa84558703df6f61f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 17:04:49','IP:127.0.0.1;机名:PC201508311633'),
('c9d19db0a1594daca4b775d73ee6a2ef','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:54:30','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('c9e4f3cd23e74f0caf572cbdaf690210','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-17 12:02:41','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('c9f2409407914717a74085cb918cc736','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-03 15:56:38','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('ca0a8425e6ee416dbc70c12e8d10ce71','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-31 09:51:05','IP:127.0.0.1;机名:PC201508311633'),
('ca36ad56edab445f8c09eeaa6000473c','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 17:39:16','IP:127.0.0.1;机名:PC201508311633'),
('cae1f54a1e104d449fa34f110134b5da','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 10:58:09','IP:127.0.0.1;机名:PC201508311633'),
('cb2a9a59d9ca466b984b32c6fe39bba2','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:11:48','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('cb6092f5b0cb463cafc881660a0a53e6','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:11:30','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('cbb7ea9cdfdb4dea93702d6622b9e82f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-06 18:55:10','IP:127.0.0.1;机名:PC201508311633'),
('cbd5ad55ea874bb2bea5e3692e3793d1','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:32:53','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('cc1c8128605349c7a6354dfeaf6bf51b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-29 14:40:51','IP:127.0.0.1;机名:PC201508311633'),
('cc2432b348604abb9b545a99ebf74022','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 18:06:19','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('cc32c92ae1604098b4b90fb76f3afc26','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:30:40','IP:127.0.0.1;机名:PC201508311633'),
('cc4054aa651740e18956fadfea177013','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:19:09','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('cc5d8235fc3143088ecab7bcbe01aab0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:42:14','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('cc66b96d5f2548dc9942cd1e42f27d38','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 09:09:13','IP:127.0.0.1;机名:PC201508311633'),
('cc6dcfd82c36432bb98be378b60e2dcb','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 16:07:09','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('cc898e80878c470999c0d3e47819ad96','admin-修改供应商结算：1afbb22eab08454e999f17589b4394ca','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-22 14:08:02','IP:127.0.0.1;机名:PC201508311633'),
('cc8bd0322fe74ff0bb907526bd881125','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 19:50:09','IP:127.0.0.1;机名:PC201508311633'),
('cc914496aa3c43cd9be717da27a7bc7d','登录后台系统','/pub/user/adlogin.do',1,'2017-07-25 15:08:05','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('cca0526284534149afe53895ca1b134e','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-12 13:45:40','IP:127.0.0.1;机名:IF-20150627QENP'),
('ccbf186736e64b78aa5690a1a1229124','修改订单信息订单编号(主键)：3655dd11d92a415e9b148412ec0206e3','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-28 15:40:38','IP:127.0.0.1;机名:PC201508311633'),
('ccd742f7ffc64d67a20fc7d10fd620e1','重置用户密码','/admin/user/adreset.do',1,'2017-07-23 17:00:22','IP:183.228.23.95;机名:iZmemcvx3hm4a3Z'),
('ccdf440fa122486d9ae7fb3dd5863eb4','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-11 14:48:32','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('cce330173bcf4fcf97fcbee71cb31e53','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 14:09:06','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('cce988f707b245179c09cea9d37e469c','修改优惠卷','/admin/ticket_info/upOk.do',1,'2017-08-02 16:44:11','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('ccfd468ca0414d1188f47ff97c5c8d7d','修改订单信息订单编号(主键)：f7d9720c23e14e8aa13ecf9164ec40f2','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-07-08 17:13:27','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('cd0875816b3840719359024cabbffe07','添加商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-06-09 10:45:10','IP:127.0.0.1;机名:PC201508311633'),
('cd092af1ae53434998b583ae4256c101','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-05 11:33:22','IP:127.0.0.1;机名:PC201508311633'),
('cd2cc3a276ef47e59f3d0ad9f17a789e','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 09:48:26','IP:127.0.0.1;机名:PC201508311633'),
('cd43e274cbbd42ac8d17cf10bf7eca75','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:00:36','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('cd7803e148ad4f599ce29bc64d2f709d','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 16:34:31','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('cd94ffe8a14847f6838ec6a460dae1e9','修改派单信息ID=84f6e42d88974947959089b1ff13fc27','/admin/InstallerListeEstimer/update.do',1,'2017-08-03 16:47:06','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('cdc634cd4ca54bc68ee11d380e4becd1','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 16:52:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('cddce564c3594d6db1e0e4804d726498','修改优惠卷','/admin/ticket_info/upOk.do',1,'2017-08-02 15:11:00','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('cdfd9263d9604e5e81eb265f0f8cbaca','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 10:00:32','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ce25ca588dab49b58363c64ec24e69e5','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-13 17:38:48','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('ce43b024a28046d59b48cfc93f04ea92','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:56:41','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ce64efcb8fbc4601a9072e30c2e748db','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:34:12','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ce860541ce3141749b195be2f180be98','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:48:35','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ce90f4bc16b74e6a9cc664c11f5b4650','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 11:21:52','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ceb755464d8349718c4db53376ce4627','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:26:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('cef62dfbbc6f478fa6d8dcb73b85ad99','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 15:51:15','IP:127.0.0.1;机名:IF-20150627QENP'),
('cf14df7b6d86498c97ee9cf2c8deb079','登录后台系统','/pub/user/adlogin.do',1,'2017-06-03 14:23:23','IP:127.0.0.1;机名:oruke-PC'),
('cf1be0d00fda4e22bd6b0afe3bc309d8','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 18:29:15','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('cf28e0f2faf24d7c8afe0a595985c2c9','删除本地微信菜单','/admin/weixin/deleteMenuid.do',1,'2017-07-13 17:33:55','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('cf5b3677d9fb4a7a80f64a5f3be8929b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:36:04','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('cf70bea0cd364878b1378a2d8b6e6e8d','添加商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-06-30 19:27:33','IP:127.0.0.1;机名:PC201508311633'),
('cf8ac39bdbd94aaea7926fa340f788f3','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:35:28','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('cfdda16fe7484b57a622d35fca20a6db','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:53:17','IP:127.0.0.1;机名:PC201508311633'),
('d0214933bd704ebc91c06d3c04e6bbf1','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 10:34:25','IP:127.0.0.1;机名:PC201508311633'),
('d035c6f5942f4379ab8ed0fa7f2717ef','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:55:09','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d04dfd28c709461f9134cace04ee4696','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 11:10:42','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('d05127045bfe4a76b5014063803de167','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 10:49:40','IP:127.0.0.1;机名:PC201508311633'),
('d0597f4417124fadb51b46f7c66aeaf5','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:33:12','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d06673e995a847b095a8ce0c966be1f2','操作发送短消息','/admin/phonenoter/addSendOk.do',1,'2017-08-11 17:55:07','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('d07f78c9f8f64fcfab727fb57e1ebd8a','修改安装操作指南','/admin/textevlues/editOk.do',1,'2017-08-08 19:51:03','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('d080e9b72e464016ab89363cffec360b','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:56','IP:127.0.0.1;机名:PC201508311633'),
('d0936df2fb2948018e523685ceb15617','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 12:04:26','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('d0ed4475795d492bbca3090ed615a4c5','修改订单信息订单编号(主键)：444c46ab9e4242f5a03121d3f17677bf','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-07-20 15:25:20','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d0fddbb4fac34de6b0606113776e0d17','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-26 15:11:36','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d103a9ccb9dc4d37a170a312679f82c8','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 15:14:24','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('d11c0f6df8654ef08a5f08a7f2912132','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 11:51:35','IP:127.0.0.1;机名:PC201508311633'),
('d149d96e24284de6b35fd7bb2fc5513c','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 19:04:34','IP:127.0.0.1;机名:PC201508311633'),
('d14f73d065bc43c8800fae1a036d6aa9','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-18 11:33:21','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d17dfaa0ab4f4a079cfe2adfa8f3a42c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:32:37','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('d17eed3947974f78ac2778eab60f95e2','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:54:43','IP:127.0.0.1;机名:PC201508311633'),
('d1d20ddd64724af1bed75bd8e4704622','角色授权','/qscMobilier_Back/admin/role/inpo.do',1,'2017-07-03 15:20:49','IP:127.0.0.1;机名:PC201508311633'),
('d20eed8c0f974dd29025e0fd2ca0756d','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-28 10:52:19','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d239644e79af4d7a839a39c897de0e34','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-31 09:49:52','IP:127.0.0.1;机名:PC201508311633'),
('d241f33f2f8048a3b9f3dbc3ec3570d7','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 14:22:10','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d2700012d12f4a03bca629f5c8a60865','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:55:45','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('d2786a59f4ec4a2e802ede7032ebfa44','修改商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-06-09 17:46:44','IP:127.0.0.1;机名:PC201508311633'),
('d27a07500a8b46098a1e0b3d7e0b11c7','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:30:11','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d2e09b74767449839d796104a74502de','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 15:06:54','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('d305f5d8ce364e7d93b95863bde0265e','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-05-27 09:12:26','IP:127.0.0.1;机名:PC201508311633'),
('d32a2dafead445af8ccc509074c46cc2','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 16:04:13','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d336283659314ba39b3303ce43c63f50','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:52:22','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('d3400f48aac8447785eef04d2757463a','查询模块分页','/admin/mod/qu.do',1,'2017-08-01 14:59:24','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d342df5b9ea94c8095163f47105cc8b1','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 11:41:07','IP:127.0.0.1;机名:PC201508311633'),
('d367dd52f37943f5a4d41aca951403b3','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 15:12:57','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d3a72eb6d91b48bf8765fe65fe79cc97','登录后台系统','/pub/user/adlogin.do',1,'2017-07-27 18:18:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d3f0116f4d254e4399423f292182ee77','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:16:23','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d40ed090bfc144298724e61e3251d234','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 16:18:03','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d411cf6f0af7400480a151a6de179016','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-23 17:34:08','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('d437f2c2d0c04b86b681058e584701e9','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 15:11:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d448321a8fdb46c095e8cff61713ec29','更新角色信息','/admin/role/up.do',1,'2017-07-20 10:55:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d46b6765337b4e19b533c180af4853ad','禁用用户','http://7secai.cn:8081/admin/user/adqu',1,'2017-07-20 11:16:47','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d471038d24994295939af2723fd88fe2','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 14:54:12','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d4a306e6b28f48faa7b9775cdb64d481','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 15:35:17','IP:127.0.0.1;机名:PC201508311633'),
('d4a995cd4d974e8fbce189f9893a8754','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 15:06:12','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('d4c0f4881b9847fd8e3aa5880f89a6e3','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-23 11:37:42','IP:127.0.0.1;机名:PC201508311633'),
('d4c79924600b4b888eb17884c8f34d89','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 11:43:24','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('d4e0bf291a4445e49b98437dc1735bbc','添加商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-06-30 19:27:22','IP:127.0.0.1;机名:PC201508311633'),
('d54f016111f74de29134aed2a7615ce7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:38:10','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('d5562ff8f8be4a3eb63084adf662bc62','修改订单信息订单编号(主键)：bbbe9e1fb07e4c89845f5a96042f2c61','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 13:16:52','IP:127.0.0.1;机名:PC201508311633'),
('d55955ec089540a887004d816e7a8101','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:48:15','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d5883539e5e44b96a6a7acc20a8d7ddd','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 14:27:10','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d5a296f9b5264165828f506c5754da2f','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-01 13:44:43','IP:127.0.0.1;机名:PC201508311633'),
('d5b23676c62e453080083cefb7e6d2d8','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:57:55','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d5d55b3e1c294e759ef6923e4faa788c','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 14:04:16','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d5e2bf2db91645a4bb882ec7c2a8b68f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 14:14:13','IP:127.0.0.1;机名:PC201508311633'),
('d5fa495c11a24a6d99f208db7d80e1e0','admin-修改供应商结算：baabf9ead0e34fd4bd621bc42de04775','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-07-03 16:09:01','IP:127.0.0.1;机名:PC201508311633'),
('d5fa588c1b064a4b96f40afe946e643b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 11:34:38','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d614c7c56e2249eb926caaca959ff88e','更新系统配置','/admin/syscon/up.do',1,'2017-08-11 10:48:07','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('d648f697d95540f585f5ce6bdd0d8a75','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:10:13','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('d65e50e91c5241d69aa1d3da44da4ad9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 15:50:16','IP:127.0.0.1;机名:IF-20150627QENP'),
('d6a4fc6b28f9446aac6a8ee2cc28abb3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:53:26','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('d6b2a9c4355a4eb18695b1d29f497877','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:06:52','IP:127.0.0.1;机名:PC201508311633'),
('d6b482805ebf4c96bc7d578455d572d9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 14:24:47','IP:127.0.0.1;机名:PC201508311633'),
('d6f18a5cb4ee41beae8e816e7ce3a89a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:06:32','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('d6f3c67dfe6748d693b67244ee4d8b25','添加商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-06-09 10:39:04','IP:127.0.0.1;机名:PC201508311633'),
('d6f86a86e9b8428288a9fbe661997b92','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:05:19','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('d71c3637a9be435ea452ee1e847a1cbd','修改订单信息订单编号(主键)：7e3d5a452a5f4be3a723a53148741b4a','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-06 17:30:22','IP:127.0.0.1;机名:PC201508311633'),
('d72a92363397457aa8ab5151ce878dda','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-20 10:31:17','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d77578f377424607befee086dc52147a','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 14:59:14','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d786e073841547cd8f24f6959ca88388','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 16:07:28','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('d78ebc94f4ac4f4993285b7ee5013e53','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:21:10','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('d7af6e6ac4164109bfb8f489ca71d19f','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:24:43','IP:127.0.0.1;机名:PC201508311633'),
('d7e61ec31dd1498198c34aa16b689072','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 14:58:29','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('d8683f03a5cc43199b9434aee7884cbf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 15:53:31','IP:127.0.0.1;机名:IF-20150627QENP'),
('d88878da2e354fa4bf1dd9555805cecf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-09 09:25:02','IP:127.0.0.1;机名:PC201508311633'),
('d897a1f86e8b4358b2309ffda841195d','登录后台系统','/pub/user/adlogin.do',1,'2017-07-31 11:51:03','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d8de17cf508e4568b7ca7507db8c5493','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-22 18:30:58','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('d9311994ab634d0582b7115952ab568b','操作发送短消息','/admin/phonenoter/addSendOk.do',1,'2017-08-11 17:54:56','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('d95a96d26ed24fdf830cb29dce6af226','登录后台系统','/pub/user/adlogin.do',6,'2017-07-31 11:50:37','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('d985b2cfd21345f1a125f7edfdf9fc90','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:34:41','IP:127.0.0.1;机名:PC201508311633'),
('d9d225cc74b4466ab71e0c9106f7047d','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:38:29','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('da3b6954b2274948a354093b8ff07925','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 09:31:54','IP:127.0.0.1;机名:PC201508311633'),
('da51677f9f7a42a3a2b2ad6795438573','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:10:33','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('da5515aa7b0f438883ca89481d4b3a44','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 08:59:03','IP:127.0.0.1;机名:PC201508311633'),
('da571d026bed4faa98d8bba6c1928d2b','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-06 16:49:46','IP:127.0.0.1;机名:IF-20150627QENP'),
('da6911ce10e942a793ee0d88608379eb','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:59:21','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('da766c0cf7ce45f5bda69233eef31c7e','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 14:07:36','IP:127.0.0.1;机名:PC201508311633'),
('da7e710301eb484b9b976523dc6455b0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:54:17','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('daa2331623864504a1cae37de5b547c5','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:29:32','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('dab53be3e96e4d3a96623cc71520d6df','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:13','IP:127.0.0.1;机名:PC201508311633'),
('dad47cac99054fc4b8e781a08bda9ba1','登录后台系统','/pub/user/adlogin.do',1,'2017-08-02 18:34:25','IP:14.111.57.110;机名:iZmemcvx3hm4a3Z'),
('daeea49f2db34b4b9a1fcc693f0a8e2b','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:42:05','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('daf9d02432254ba7844bd2ddc6315d73','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-19 17:34:53','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('dbcb071212aa434f83834c92210196ee','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-06 15:45:55','IP:127.0.0.1;机名:IF-20150627QENP'),
('dbd4630ac9b7497cb95bed2926aa5a6f','登录后台系统','/pub/user/adlogin.do',1,'2017-08-01 14:39:20','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('dbdff834a80944e38bd81c7303147953','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:20:47','IP:127.0.0.1;机名:PC201508311633'),
('dc1c902ad2e04adba1eab915605e7f23','登录后台系统','/pub/user/adlogin.do',1,'2017-07-18 11:34:42','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('dc624cd193314d9ea7ffed8e23e13df0','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 19:36:21','IP:127.0.0.1;机名:PC201508311633'),
('dc8b290121514a1da55717a9e270b155','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 19:11:08','IP:127.0.0.1;机名:PC201508311633'),
('dd0bc0e297ea4e82849e5fd1ed50aa6a','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:57:17','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('dd170ba6e60a4a4fa2c169fce11efc54','登录后台系统','/pub/user/adlogin.do',1,'2017-07-10 11:19:36','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('dd4bc9adb974405fac96fdc5deca88b5','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 16:10:53','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('dd7134d13a584a628cbae27609bc948a','修改厂商','/qscMobilier_Back/admin/userGoodsMeuble/editMeubleManufacturer.do',1,'2017-06-09 11:00:45','IP:127.0.0.1;机名:PC201508311633'),
('dd7dc42c5279457389373c375a351b05','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 16:28:00','IP:127.0.0.1;机名:PC201508311633'),
('ddafd19fc4cc41249668b7a4adf1689d','修改比例信息ID=5','/admin/ordrestatut/upOk.do',1,'2017-08-01 14:49:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ddc1db8d8e794848b9624616cdb14bf0','修改订单信息订单编号(主键)：79041839208c4f5c9024418e2d6d2db5','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 14:55:14','IP:127.0.0.1;机名:PC201508311633'),
('dde60e0bb5fd4b70908a207ce65bc1f1','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-27 16:33:55','IP:127.0.0.1;机名:PC201508311633'),
('de2e8c87764d4fad8815c190e9206cbd','添加系统配置','/admin/syscon/in.do',1,'2017-08-08 09:49:23','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('de6d58d923ca4398a37dcd0d7dd2693f','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-03 15:54:40','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('de71586232f04a3a9c5afdf220350f44','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:18:56','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('de856bfe267746148f950a343bea9f39','更新系统配置','/admin/syscon/up.do',1,'2017-08-07 19:01:35','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('deb7fe9cd4a6400e844a090061691489','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 18:18:10','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ded540e8e59d4f618d6a824b7c1ca41e','登录后台系统','/pub/user/adlogin.do',1,'2017-07-19 09:11:09','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('defd785ea4c2422080d7d382d36aaecf','登录后台系统','/pub/user/adlogin.do',1,'2017-07-03 19:20:39','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('df2df5e0315e4985b0f23abaca27ecaf','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 15:07:13','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('df323823aa85496aaede609bf2e98177','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:56:52','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('df4b57fa78be430e8d38e33f046d7672','查询用户列表','/admin/user/adqu.do',1,'2017-07-27 18:18:51','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('df50a1f5f7af414d865b13b5e6e44e9a','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:50:49','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('df9222da42c04830b68645e3ed88e6d9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 17:12:36','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('dfd7eea9243241509e13c9b60c2a7809','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:20:01','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('dfe7ed3f1697450aae620e152a518d0d','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 10:08:09','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('e0047840060f45d4918569ebc8a62ba6','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-08-07 09:48:55','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('e01e206b0a564342a281d57b58cf7420','恢复禁用用户','/admin/user/adReply.do',1,'2017-07-20 11:16:50','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e043aa9696e942138a2a94441f27baa8','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:53:56','IP:127.0.0.1;机名:PC201508311633'),
('e05be9ff65364281bb59c98521b220c1','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-18 16:58:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e07af69ad8ed42f1b65f89fe558325f5','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 09:33:45','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e07ba36e2d6948b9866a692886a0bacf','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 18:09:55','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('e088521207234930a8696b99a5992471','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-13 16:18:50','IP:127.0.0.1;机名:PC201508311633'),
('e0e17ddd74ca4a7c8c9449bf80abb511','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:48:13','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('e0eea77a1db8417591a4dbbca87aca46','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-13 17:36:21','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('e0f3c798826949b6a3ea568f91b1517e','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:09:18','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('e10249f0f8f44b2aab2aa97736e72449','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-14 11:47:05','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('e150c0d6a05a4e25b6523036d0f7b675','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-25 09:59:53','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e1572f73f9fb41b5834182663f89ea58','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-03 14:24:44','IP:127.0.0.1;机名:PC201508311633'),
('e16be641b959417aabced1cdba4ccccc','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-28 11:11:00','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e17acf06c82d4e5499250fa6cab6d781','修改订单信息》》订单编号(主键)：26f8844ceef84d94863c503e8c515508','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-23 11:39:13','IP:127.0.0.1;机名:PC201508311633'),
('e181828003da4c889ef64fb340fa256d','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-26 15:47:28','IP:127.0.0.1;机名:PC201508311633'),
('e18cfccd1175417485b67a5983ba79e0','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-31 18:00:59','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e18f032c4b674caa90d29c100a953d19','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:38:30','IP:127.0.0.1;机名:PC201508311633'),
('e19e65b295ef4f648072483f0efd3716','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 12:05:40','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e1ddf50c280d46e389529f696134c61a','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-11 14:52:31','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('e1fbab5528564993854b5a3363d10cbe','admin-添加供应商结算：1afbb22eab08454e999f17589b4394ca','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:27:19','IP:127.0.0.1;机名:PC201508311633'),
('e21a839e0fbf443484623b25cec5c987','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:27:15','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('e29207b968a64246a3d4bcf169e46d4f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:01:22','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('e2c345a6061c42e8a3aec32f9583aa64','查询模块分页','/admin/mod/qu.do',1,'2017-08-01 14:59:51','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e2e4c09a0def472699e25a4991f7be11','登录后台系统','/pub/user/adlogin.do',1,'2017-07-24 18:08:35','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('e32c564f037e4c44911157284bf95a70','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:35:07','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e3494d40141849e1bfaf88ad0080542b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:40:02','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('e34c43f27a78472cb221a74b42a1ca60','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:31:39','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('e3529350bb614641aa34a0b57d5defad','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 10:22:24','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e360ef02312143ed9b0b726a8db84571','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 17:10:17','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('e374b0e41323434ea7a333beae4569e3','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 09:52:31','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e3b59c651571414a8218ad38d325c202','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 11:14:11','IP:127.0.0.1;机名:PC201508311633'),
('e3bf17c805df4189b4abf091f0fdc87e','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 11:04:27','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('e3d3c417372b46f9a2a1fca9e8f5403b','修改优惠卷','/qscMobilier_Back/admin/ticket_info/upOk.do',1,'2017-06-09 16:57:05','IP:127.0.0.1;机名:PC201508311633'),
('e415582aeb724bf4b717e4f2377ee7a4','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-17 14:39:11','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('e44c9f5bd9cc440a936136929802b658','登录后台系统','/pub/user/adlogin.do',1,'2017-07-03 19:20:00','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('e463c2396a8747b9a6b04455f1c7b2a9','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 13:39:42','IP:127.0.0.1;机名:PC201508311633'),
('e468a08dbdd94cabb2533423b776b686','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:19:21','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('e478207fab344718993f7dc672f5d798','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:57:07','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e4b5a418879f4695bcef212f47341313','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 15:49:15','IP:127.0.0.1;机名:IF-20150627QENP'),
('e4dce559aca54311bb8e31912aaffc07','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 10:35:43','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('e50044b4dd164e3497a4ce4e63808cbc','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 16:29:15','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('e50bd8914f0442aea987f47311576963','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:31:47','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e53bbe0ba8234c6fbc59b8f6bf88a5af','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 17:08:19','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e5bed5951ab644fc873bb36cdf59cc8e','修改订单信息订单编号(主键)：fb68beb6eca24b9797f0e02b3ed61575','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 10:50:28','IP:127.0.0.1;机名:oruke-PC'),
('e5d047bc15bd4cfb86ee7ad881acb577','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 15:24:22','IP:127.0.0.1;机名:IF-20150627QENP'),
('e5d104c67e7340d88527e09df9c54a78','角色授权','/admin/role/inpo.do',1,'2017-07-20 11:08:29','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e5e01b1f7e6f45e8bc305d46db001378','查询用户列表','/admin/user/adqu.do',1,'2017-08-10 13:26:01','IP:115.120.222.85;机名:iZmemcvx3hm4a3Z'),
('e5f17b076b704eb28511f274f7e18385','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:28:52','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('e5fd0e7f980c4a8eaad40e0def8a731c','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:02','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e60de2db330b491cad604cdf8a4196f7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 15:32:22','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('e6109c15e6a44e0099b56f171ae877ba','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 16:19:29','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('e61a4dbfe2074833a791317b97704cea','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:18:02','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('e646ca26e25f4c41827fe676a7192571','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 16:18:33','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e6981e02a1464465858dab0f6a354649','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:27:29','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('e698745c516a4f35bdb00d8c77570bdd','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-15 16:02:26','IP:127.0.0.1;机名:IF-20150627QENP'),
('e69a6e15e1574580b7897328a5addf36','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 16:33:00','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('e69f1db53bc348b2adc4febc06ed9e72','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 10:46:39','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('e6a34c9b69614300999c73f6b726d65f','登录后台系统','/pub/user/adlogin.do',6,'2017-07-20 11:15:00','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e6afa4c1efdc44eb957e34c84d023410','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 17:24:09','IP:127.0.0.1;机名:PC201508311633'),
('e71018adc79f4c31a7a5eb54a4a7da85','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-10 11:21:01','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e730cfb9252145b2a51bd27c5f135e36','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 11:33:38','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e7341de886734631a68daf727a6c765b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 10:46:26','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('e743582823ed43f1a68796f36bf10fd2','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:48:58','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e75c09fa732445d9ad733fda8a165c8e','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-09 16:54:08','IP:127.0.0.1;机名:PC201508311633'),
('e781d9ffc7344f6a9c02fa39063e09b9','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-25 11:21:14','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e7acd3fcf736405f96b89b7b619a94cc','查询模块分页','/admin/mod/qu.do',1,'2017-07-20 10:50:55','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e7b15d4fe5a040e9b815ffcd50e5c500','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:13:20','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e7c11faaea004558b06ca3317e8bb4d9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:49:38','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('e7c20929642f4416ac60756177c47e7a','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 15:52:12','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e7fe257f09ed4279b371df99879b2186','admin-添加供应商结算：913845ecc3364ad7985e0f1f1f669f18','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:25:27','IP:127.0.0.1;机名:PC201508311633'),
('e81a974930c74e999787ae4c180fd414','登录后台系统','/pub/user/adlogin.do',1,'2017-08-10 13:24:01','IP:115.120.222.85;机名:iZmemcvx3hm4a3Z'),
('e8241af7d955427494b0425982dd2280','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:13:55','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('e829dc559adc4a2a94fb29485549327a','修改订单信息订单编号(主键)：67956569f863400a85abdc86685f2ff0','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-03 11:23:52','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('e82a2f7a659a4552af1316cc08c4b67f','查询模块分页','/admin/mod/qu.do',1,'2017-08-10 13:25:52','IP:115.120.222.85;机名:iZmemcvx3hm4a3Z'),
('e8429f23fb0d4b06b7850fe03bc5892c','查询用户列表','/admin/user/adqu.do',1,'2017-07-25 14:37:26','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e848f28e346f4e9fa3db3fc1a81c69d8','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 10:46:13','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('e84c5b8ff9e14a85b302005f0869517a','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 11:53:49','IP:127.0.0.1;机名:PC201508311633'),
('e85c01cf92a1470cbdb3f7fa66503ea5','创建微信菜单-实际菜单','/admin/weixin/foundMenu.do',1,'2017-07-28 12:05:40','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e8635329cf1c4dd3ba527aaa8a5c5afe','创建本地微信菜单','/admin/weixin/addMenuok.do',1,'2017-07-13 17:33:26','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('e869220706e24b58943be71bfe67712f','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-19 10:48:47','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e874d20f019b4ce9b2413930f5ac844e','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 11:38:41','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('e889e38ae1404acb8a6e512a645ea0d8','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-31 17:13:38','IP:127.0.0.1;机名:PC201508311633'),
('e8983fea8374430a980752a73ab5b777','邮费信息修改','/qscMobilier_Back/admin/GoodsMeubleCost/editeInfo.do',1,'2017-06-14 12:02:28','IP:127.0.0.1;机名:PC201508311633'),
('e8ab73d01fdd4a93a472969672ac585e','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 11:12:09','IP:127.0.0.1;机名:PC201508311633'),
('e8b48bf8bde64f9ca768ad57a94b5504','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 11:13:09','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('e8c54793614d4a4b877485722aafdb27','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:09','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e8c6eef9cf544baaba9622d34680ac22','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-22 18:29:25','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('e8e894ba3f03421a87b275ad446ec0e4','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 11:34:22','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e8f29e4763da4e25968a0c2602da7def','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 18:44:54','IP:127.0.0.1;机名:PC201508311633'),
('e913cbd0e2f94a1387f085a23524fbd3','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-20 10:32:13','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e91bb7257a2640c8b11aa903bc045584','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-26 15:47:06','IP:127.0.0.1;机名:PC201508311633'),
('e93077900eff44078e707253f8ced0de','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 11:32:48','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e956b430f6ab4273bcc88f99059742a9','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 14:10:57','IP:127.0.0.1;机名:PC201508311633'),
('e97b469c6f6b4597996358d6fd2ee72a','登录后台系统','/qiMaiBao_Back/pub/user/adlogin.do',1,'2017-06-27 10:05:26','IP:127.0.0.1;机名:IF-20150627QENP'),
('e9a22a06492e4f09b56b3ce2ee3c2517','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:34:44','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e9b318f14d71471b81abab191267d82d','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 16:44:47','IP:127.0.0.1;机名:PC201508311633'),
('e9d9430bf8624daabeb6527a6759f6da','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:36','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e9db854f15dd4ec885a54562a3cafecd','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:06:37','IP:127.0.0.1;机名:PC201508311633'),
('e9dcffb4981d4d4084aaa5bff2cff403','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 11:09:02','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('e9df4d13eee346cb8965f4c74c376773','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-02 15:08:13','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('e9ec1b6b733b4b54aceb52d298518806','修改订单信息》》订单编号(主键)：2','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-05-31 09:29:37','IP:127.0.0.1;机名:PC201508311633'),
('ea0c5b3b031f458290ca95a9481211ab','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 19:19:13','IP:127.0.0.1;机名:PC201508311633'),
('ea1054b59a9a4b9e9dc55ce8c0e96078','admin-添加供应商结算：de5440ade3ed4f0b9e571ea37a395b54','/qscMobilier_Back/admin/settle/supplier/addInfo.do',1,'2017-06-08 14:26:11','IP:127.0.0.1;机名:PC201508311633'),
('ea5fa40123e54954b61d77404239173f','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 10:18:35','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ea6042b3c33f4d4ea5cc6afcee1eb016','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-05 11:33:12','IP:127.0.0.1;机名:PC201508311633'),
('ea663ddd420b44009db897cadea53660','查询模块分页','/admin/mod/qu.do',1,'2017-07-31 12:01:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ea70c249036648909f1be00d825edcfe','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-23 16:10:31','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('ea9446b8893044b6acccb1e6349d44b0','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 17:05:41','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('eaa28916bc724c03bc71d15da61d7bd6','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:02:15','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('eaa8ef890b2e4eeb89b5bdb37204dbb6','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-20 15:50:42','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('eaddb73c02034df9b5a2092d2ae8dcd9','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 16:29:37','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('eb00292e2e9f49f5b2b4e2c38a246f8d','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 18:19:35','IP:127.0.0.1;机名:PC201508311633'),
('eb101550e19043d8a31c5a71cfcd0149','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-14 11:59:16','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('eb145709593f46d289f59748d0577181','登录后台系统','/pub/user/adlogin.do',1,'2017-08-04 13:55:06','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('eb1b4e6a9080441d915f9b5a13dccb96','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:16:58','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('eb53dcde2ce24b658b097c46bdd126fd','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-21 17:37:49','IP:127.0.0.1;机名:PC201508311633'),
('eb5835d2681e4337813fa4c8ce225f1b','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 09:26:51','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('eb6222b94dc3419eb18301d54c4d1da4','查询用户列表','/qscMobilier_Back/admin/user/adqu.do',1,'2017-06-28 14:46:05','IP:127.0.0.1;机名:PC201508311633'),
('eb7e71c5eeb44c63a78b8220f07f4a80','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-27 15:35:31','IP:127.0.0.1;机名:PC201508311633'),
('eba4de52e94740caaa21bdf1c8592936','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-20 16:17:27','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ebbe3401c3ba4c7c8225b9b287c7155f','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 08:55:45','IP:127.0.0.1;机名:PC201508311633'),
('ebcbf61eaece41c7b835057dfab5f9b7','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:49:22','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('ebe2f45b155b4857a579a1231c33bcc8','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-21 10:23:43','IP:127.0.0.1;机名:PC201508311633'),
('ec064c7f245a4784af33f184621fe476','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:41:33','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ec0c2d8248a842298a6dd7137ae5dc94','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-05 11:32:37','IP:127.0.0.1;机名:PC201508311633'),
('ec2a9149576640078446e4e8893f541d','修改商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-06-09 10:39:26','IP:127.0.0.1;机名:PC201508311633'),
('ec2ac469151140f2a53a6910f8162efa','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-22 18:31:39','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('ec3ff540945c4f38a72849b7d2d66b5e','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-07 18:17:05','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ec5790c2015c4c8a92b0f139277b0069','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-14 18:07:40','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('ec6d636c35c1405b8012155d75472100','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:54:58','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ec7eb49d6d6a439a9d93c4308a666353','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 11:11:41','IP:127.0.0.1;机名:PC201508311633'),
('ec88b26257ad470fb310d1a7a8351e2c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:57:09','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('ecb9b103e0924921a88db9ace1324854','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 14:55:57','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ecf7b67d09e647119d275c14ca1dcbca','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 09:11:05','IP:127.0.0.1;机名:PC201508311633'),
('ed0e935bc9524eafaaf9b24b067efa1b','登录后台系统','/pub/user/adlogin.do',1,'2017-07-17 15:38:53','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('edbf5fef81f847158f29ac374800eddf','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-14 14:23:00','IP:127.0.0.1;机名:PC201508311633'),
('edd12309d2434e47be0766dcd14fe653','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 11:07:36','IP:127.0.0.1;机名:PC201508311633'),
('ede005a3cad54259a660547947b025fd','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-14 18:02:33','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('ede56f3a9c1e47cfbb947b6045bf6d1c','修改企业销售、个人销售注册协议','/admin/textevlues/editOk.do',1,'2017-08-02 14:55:00','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ee0a921400344b07bcaec7f73da8a682','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:53:41','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ee1fc398433f4cff8c2e0b6d06645a1f','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-04 13:56:59','IP:106.86.152.206;机名:iZmemcvx3hm4a3Z'),
('ee2d055098034086b91921cabc77cdfb','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-07 18:17:09','IP:127.0.0.1;机名:PC201508311633'),
('ee413fc8d2574396bc1ee877ddd198f6','登录后台系统','/pub/user/adlogin.do',1,'2017-07-28 14:09:34','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ee5161fd79a647ae821650a37f18c9fd','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:23:36','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('eedcc66d046f43dcafdc0a77c97cff4d','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:10:10','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('eeec126394a94b2fa7701c5c9ea1f033','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-17 15:40:58','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('ef1efe33e52e45b4971409eeb8c769da','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 11:39:29','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ef39251ecb534eedbae74644affa64d7','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-28 14:54:29','IP:127.0.0.1;机名:PC201508311633'),
('ef441d266b7c4b619cfc26555a8afb7f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 17:42:44','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('ef46bc5a9e444a7ebc39a3b89d7c7116','修改商品规格价格','/admin/userGoodsMeuble/editMeubleSpecifications.do',1,'2017-08-07 18:50:40','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ef8243943bad41fc9ebc4794915899f1','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 22:48:30','IP:183.228.18.229;机名:iZmemcvx3hm4a3Z'),
('efa093cd872e498783a8f581af45f53c','登录后台系统','/pub/user/adlogin.do',1,'2017-07-23 10:29:26','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('efdd7ca7fac348e496086a582e89bd05','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:10:07','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('efe9ec1e373c4931ad58a7c35a304d28','登录后台系统','/pub/user/adlogin.do',1,'2017-08-08 15:13:10','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('efec99b0b42f4c17a85df02f42de5f57','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:56:14','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('efeecc8a0d174949a677b25ca6e47a3c','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 11:34:14','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('f019a50ff409400993831aacccd15c55','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 16:18:14','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('f09bb2b94ddf44f383c8c82b047f9418','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 16:55:12','IP:127.0.0.1;机名:PC201508311633'),
('f0bc515f2c1a4589a482333f78c01911','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:13:02','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('f0f2815eaba148259ae7a271bea4724a','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-06-26 15:47:27','IP:127.0.0.1;机名:PC201508311633'),
('f1780ce5278d4869b239654a713ad164','删除退货单个订单商品信息','/qscMobilier_Back/admin/UserMeubleOrder/removeReturnGood.do',1,'2017-06-01 16:12:07','IP:127.0.0.1;机名:PC201508311633'),
('f17e9a4aa790475bbf52e8951dc4f48c','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 17:42:54','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('f185ac736de94e7488df6b02de8ede47','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-24 17:04:27','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('f1b856938d904d1f82de3cb03a677d45','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 14:40:27','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('f2035924115648c68ecdfadc033512f7','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:00:27','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('f2091eec258044d0a92570144b2132f0','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-20 18:19:40','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('f228f739363c4aca83368259027dca4f','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-08 11:52:42','IP:127.0.0.1;机名:PC201508311633'),
('f22b5352ae4f47c8bae3f7c469636c1b','修改订单信息订单编号(主键)：ec62bdc9eb694f83b00bcca8b1290be2','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-24 11:51:14','IP:127.0.0.1;机名:PC201508311633'),
('f23b7a9b67924d8ea6fdddbff8ed645a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:03:00','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('f246b658ca9046d0829dd81657773fcd','修改订单信息》》订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-01 13:45:01','IP:127.0.0.1;机名:PC201508311633'),
('f25128d8d8414798ad728536fa439aee','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-08 11:46:46','IP:127.0.0.1;机名:PC201508311633'),
('f2644266560b4e7da391710d892f2939','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 11:12:00','IP:127.0.0.1;机名:PC201508311633'),
('f293cd68121d4d0fab1d077a6e3614b9','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 14:17:04','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('f2b43ae7ec96460688965a6bc508119a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:15:07','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('f2b4ebf0f97d48cd8385717c6f69f285','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 16:53:10','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('f2be15bec1ac4ad68f5fe75aaea2d6e0','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-20 11:35:14','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('f2df2d377f7c468dac5c9e7a6d9145d5','查询模块分页','/admin/mod/qu.do',1,'2017-07-08 17:05:30','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('f2e2106c7a2248a697d0645e533eb9cf','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 14:38:19','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('f2f47fe01e284ceb950843c93fddbe6b','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-08 17:07:14','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('f3020459ea02416fa220d42c4c87d9b6','修改订单信息订单编号(主键)：6229c85b64f642bdb2aa85a62d87eabc','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-07-31 17:28:27','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f3215fba444c4c0e9b17b814e47f6298','查询模块分页','/admin/mod/qu.do',1,'2017-07-08 17:05:20','IP:106.86.152.213;机名:iZmemcvx3hm4a3Z'),
('f370bf353e804189bb83deb8d8ce0f37','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-21 14:37:29','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('f3bbfcca594f4bde850cf7595124af5b','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 17:59:25','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('f3cd039a2003469b84c4a771c310e00b','查询模块分页','/admin/mod/qu.do',1,'2017-07-23 17:00:07','IP:183.228.23.95;机名:iZmemcvx3hm4a3Z'),
('f3f23ecd663d414d89305a54156de1fb','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-22 19:19:45','IP:127.0.0.1;机名:PC201508311633'),
('f42c3be87a564664a4554b4e690e8e17','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-18 17:53:23','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('f43a8cce44b54e0c9c30fc34b7853a06','修改会员账户状态','/qscMobilier_Back/admin/account/state.do',1,'2017-06-28 11:41:42','IP:127.0.0.1;机名:PC201508311633'),
('f43bcb5fc44f4b43af7185616b833e50','修改模块','/qscMobilier_Back/admin/mod/up.do',1,'2017-06-27 16:34:31','IP:127.0.0.1;机名:PC201508311633'),
('f452f6c1983944a8bc4175879a8db5d3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-09 10:36:19','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('f468c397103e4c19be49db2227c6079b','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 10:55:45','IP:127.0.0.1;机名:PC201508311633'),
('f46a71556fd64f82b190a344c39ab8b7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 10:08:19','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('f47785dd740d43ce8a9147380caf4a51','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-17 15:40:45','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('f4bdcc33d0ae49f28d041474dac8a25c','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 15:17:52','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('f4cc36b22bc843cf92850eee65911a80','修改订单信息订单编号(主键)：01b9f85c5c414a888fb2008363be90fd','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 11:38:32','IP:127.0.0.1;机名:PC201508311633'),
('f50019e2800e40f690667c2738b5ac76','修改订单信息订单编号(主键)：ec62bdc9eb694f83b00bcca8b1290be2','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 14:30:39','IP:127.0.0.1;机名:PC201508311633'),
('f520944ff1c840d099c8174705f19310','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 10:46:48','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f58508ee7f60424d93d66bdeea89cc3a','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-24 14:50:46','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('f5b59f3c38d74bab8d333b093d239701','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-05 11:35:53','IP:127.0.0.1;机名:PC201508311633'),
('f5b939774ad14b61aecfb89d177f9ac2','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 11:44:25','IP:127.0.0.1;机名:PC201508311633'),
('f5f2c795baf94c2fb074a17b70e548ed','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-17 12:06:01','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('f5f3b69d22394979b2a083a753713b11','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 14:38:37','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('f61efcd6c8614f6996816606316d069d','登录后台系统','/pub/user/adlogin.do',1,'2017-08-10 14:56:02','IP:106.86.152.47;机名:iZmemcvx3hm4a3Z'),
('f6794196f02742f39d63cd359824c2be','修改派单信息ID=a67956b6ecfa40f68d7d9e90a20d7db0','/qscMobilier_Back/admin/InstallerListeEstimer/update.do',1,'2017-06-27 16:25:22','IP:127.0.0.1;机名:PC201508311633'),
('f68dd00636c14499af74311615c87d2b','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 16:40:31','IP:127.0.0.1;机名:PC201508311633'),
('f6ac3144f66e4660830959ea2144632e','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 16:48:12','IP:127.0.0.1;机名:PC201508311633'),
('f6c0996ed5474d68a2d02712acf19159','添加商品分类','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleType.do',1,'2017-06-09 10:07:26','IP:127.0.0.1;机名:PC201508311633'),
('f6c6235f04a3477485b399b3ee5b4554','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 13:35:21','IP:127.0.0.1;机名:PC201508311633'),
('f6d69a6d468f49b0a2b9959bda836820','修改商品头部图片','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-06-09 10:39:28','IP:127.0.0.1;机名:PC201508311633'),
('f6e369cb0ee9418ab10c06eda031416c','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:10:43','IP:127.0.0.1;机名:PC201508311633'),
('f717d3611f8c458a81020cb934e18520','登录后台系统','/pub/user/adlogin.do',1,'2017-08-02 16:50:40','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('f71b10dfd65f4a0bb19436bb7279914a','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-02 15:19:19','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f7219c037466439190360753e4209f42','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:10:43','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f73792c9b95641f18f4e8b415e494329','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-22 20:18:56','IP:127.0.0.1;机名:PC201508311633'),
('f75f2734a9e442adb034bfdaaf44d057','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:45:36','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('f784e917fb5a42dc966db52153e7a433','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-27 18:20:34','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f78a1d2c0a1c4e3f8e08d1b113a20a14','登录后台系统','/pub/user/adlogin.do',1,'2017-07-14 16:38:09','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('f7b07b59b4694943a293d825ba15e027','查询模块分页','/admin/mod/qu.do',1,'2017-07-18 16:33:10','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('f7c3368f9d6749e988cca93fb80869fe','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 11:22:00','IP:127.0.0.1;机名:PC201508311633'),
('f7d5f74d74ec4223936feecb3bb4e7e6','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 11:13:12','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('f7d945511d3d4ac28f2ef035c5c52b28','修改派单信息ID=84f6e42d88974947959089b1ff13fc27','/admin/InstallerListeEstimer/update.do',1,'2017-08-03 16:58:00','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('f7df67fd0d8c48f995c1e9e0aa076d9d','登录后台系统','/qscMobilier_Back/admin/user/admain.do',1,'2017-06-27 15:35:36','IP:127.0.0.1;机名:PC201508311633'),
('f80c216fdeb447b8bf622beffabde580','修改订单信息订单编号(主键)：1','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-05-27 16:31:42','IP:127.0.0.1;机名:PC201508311633'),
('f810468fd5be4e8381fa6bcc3aa2a7b0','修改订单信息订单编号(主键)：01b9f85c5c414a888fb2008363be90fd','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-23 11:39:21','IP:127.0.0.1;机名:PC201508311633'),
('f82029d315bc485d9f13c455bc308be2','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-28 14:18:57','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f8492f899ec742ea80a4f3fa8171ae63','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-14 11:12:26','IP:127.0.0.1;机名:PC201508311633'),
('f8691b4cb6b34597a31faff6cd8afe12','查询模块分页','/admin/mod/qu.do',1,'2017-07-20 10:29:10','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('f87b9e4bc4904a1989aed9f0a3516cc9','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:51:29','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('f8b23278bb88437081223c85fbee6fe4','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 09:24:25','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f8c4e2f8477f463f8193d8474807ebb7','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-25 14:05:23','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f8d115d05ac34c7f80cbbacdd55b9fa4','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-24 11:37:52','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('f8de2f0e92fa4df0a1bf97df4e410f71','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-26 16:48:28','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f93e1b97fdbd40b881ef4795221477da','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-30 11:31:56','IP:127.0.0.1;机名:PC201508311633'),
('f942972887e44edbbbd32be694fdb27e','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-06-09 10:09:42','IP:127.0.0.1;机名:PC201508311633'),
('f94bc10226684908902b2effb1c81bb8','登录后台系统','/pub/user/adlogin.do',1,'2017-08-03 14:06:01','IP:106.86.152.211;机名:iZmemcvx3hm4a3Z'),
('f959877654ca435781aeef5b99da8462','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:32:27','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('f964fc7bb3d74d7992e4a809e41028da','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 14:10:46','IP:127.0.0.1;机名:PC201508311633'),
('f97e191e6a494aa1a02cc18fccabbb74','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-08-01 10:20:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('f984893e27ca4ca79c1214ac80dc8338','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 16:40:01','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('f9a70e007f604c00ab5d3198a7d726d3','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 15:03:13','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('f9ce1477aba94b3b8dd1cd7d2c5b2143','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-17 11:31:26','IP:14.104.207.212;机名:iZmemcvx3hm4a3Z'),
('f9daa7fe0cd947aca65028f8feab9be6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-05 13:07:09','IP:127.0.0.1;机名:PC201508311633'),
('fa0f6b36cc7b483dbc07b6a834e877d0','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:54:46','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('fa0f9489d216470783a7adac46c2e420','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-08 14:53:04','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('fa18a0a382c84e8bb3474dbab2cdf54f','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 16:11:04','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('fa21b73ccecb4cf0997a7bcf946ca41c','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 10:27:34','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('fa2b34609ff74dd6842c5826136bcf85','添加商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-06-09 17:51:41','IP:127.0.0.1;机名:PC201508311633'),
('fa6ac7c6ca9b427088b7f3f94935dd23','邮费信息添加','/qscMobilier_Back/admin/GoodsMeubleCost/addInfo.do',1,'2017-06-09 10:48:17','IP:127.0.0.1;机名:PC201508311633'),
('fa6e4016f9dc42bbbae0fa2d988671a1','修改订单信息订单编号(主键)：fb68beb6eca24b9797f0e02b3ed61575','/qscMobilier_Back/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-06-03 11:42:58','IP:127.0.0.1;机名:PC201508311633'),
('fa8260ecafe846ffaf8c6b38a4e89a9c','admin-修改供应商结算：683971a1d1e04b3bbb18de7d6c2dcf53','/qscMobilier_Back/admin/settle/supplier/etideInfo.do',1,'2017-06-08 14:11:14','IP:127.0.0.1;机名:PC201508311633'),
('fa84be1142634ad6a4cbda04364395a9','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-05-27 09:15:24','IP:127.0.0.1;机名:PC201508311633'),
('fa928e7a6b6d4325a481e7947d2d59f9','添加商品规格价格','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-06-09 16:51:28','IP:127.0.0.1;机名:PC201508311633'),
('faef871993b44fafb187bfbdafa38b67','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-18 11:33:58','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('fb075bd69deb4421a92791886e971943','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-08-11 17:19:11','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('fb121c5fe6d64843ad8082781856b8e2','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-12 08:57:33','IP:127.0.0.1;机名:PC201508311633'),
('fb6a15d4a89c45e2b9d005d549e6ab52','更新本地微信菜单','/admin/weixin/updateMenuOk.do',1,'2017-07-27 18:53:50','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('fb8979db5b5e4d9bbc266779a89ab21d','修改订单信息订单编号(主键)：30c89da1cba84e3ab5950cb7ac419fb9','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-07-20 16:59:15','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('fbca3abcf22a422398e3a45b6dc77a05','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:28:35','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('fbcb014c1ff84ada931ae5868d9f4ee7','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 14:22:02','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('fbe74a4f81b742579d80c4cdf4c0a416','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:14:32','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('fc55961391114ab6baa936987b662f5a','登录后台系统','/pub/user/adlogin.do',1,'2017-07-28 11:40:07','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('fc672ba359514bd88e3f9b379faeb200','添加商品分类','/qscMobilier_Back/admin/userGoodsMeuble/addMeubleType.do',1,'2017-06-09 09:44:15','IP:127.0.0.1;机名:PC201508311633'),
('fc8ab2258b5244e7abf46ab8f0c6a1f4','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-08-02 15:03:21','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('fcb9d8315b1c4627b8c3c4d37cf82ed4','登录后台系统','/pub/user/adlogin.do',1,'2017-08-11 13:59:22','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('fcc518d7020241d0a1b01b4e8eade15e','添加商品分类','/admin/userGoodsMeuble/addMeubleType.do',1,'2017-07-13 13:59:47','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('fcd28dba33984bf8b0a1a01bde725d80','添加积分分类信息','/admin/point/addTypeInfo.do',1,'2017-08-11 15:49:44','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('fcfcf647f7854c509fecdbade12009f9','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-07-03 15:33:39','IP:127.0.0.1;机名:PC201508311633'),
('fd2cecc17bf844479dafcca588663b09','修改商品','/qscMobilier_Back/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-06-05 13:40:34','IP:127.0.0.1;机名:PC201508311633'),
('fd37c85bd1e44696887163d78d24e362','修改订单信息订单编号(主键)：89cbc4ff58034a71a345817d5f99e698','/admin/UserMeubleOrderByPersion/updateInfo.do',1,'2017-08-11 16:51:26','IP:106.86.152.90;机名:iZmemcvx3hm4a3Z'),
('fd4c4ea5ac7e4a50911dc06a8a961d93','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-25 17:30:47','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('fd51da702ee34d459833db0295f7c9b8','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-23 17:09:48','IP:115.120.145.98;机名:iZmemcvx3hm4a3Z'),
('fd53a6571008461b81a2475bab0552c6','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-05-27 14:12:43','IP:127.0.0.1;机名:PC201508311633'),
('fd6193a6a0824fd7b7f0e5ae6dc1a2d1','查询用户列表','/admin/user/adqu.do',1,'2017-07-20 10:23:51','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('fd7efe68a91b43e7898de2fa9b82e6fb','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-21 18:11:10','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('fd85e0426f7b425db41ca8d0c8bdc674','修改商品分类','/admin/userGoodsMeuble/editMeubleType.do',1,'2017-07-25 15:58:49','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('fdc98c2998024738a8adaf0e69b9bb60','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-29 13:52:42','IP:127.0.0.1;机名:PC201508311633'),
('fdf29b3ffe594776a89f44161c0ed4df','添加商品规格价格','/admin/userGoodsMeuble/addMeubleSpecifications.do',1,'2017-07-21 17:14:15','IP:14.104.207.225;机名:iZmemcvx3hm4a3Z'),
('fe1791febb374fbc896e49a517ca1988','查询模块分页','/qscMobilier_Back/admin/mod/qu.do',1,'2017-07-03 11:09:37','IP:127.0.0.1;机名:PC201508311633'),
('fe9b7453c6c64da89913db53dc1568e5','删除模块','/qscMobilier_Back/admin/mod/de.do',1,'2017-06-09 10:09:24','IP:127.0.0.1;机名:PC201508311633'),
('fea4e85a888d4671b576d21ae9c59945','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 18:01:25','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('febb3e285e644ec6b1192c05e65ed474','登录后台系统','/qscMobilier_Back/pub/user/adlogin.do',1,'2017-06-01 09:28:43','IP:127.0.0.1;机名:PC201508311633'),
('fefc4fa924214231bd8e68cd801327a7','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-07-24 17:05:40','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('ff04f9b81899455d96b0fd1714fbf6b9','修改banner广告信息','/admin/banner/editInfoOk.do',1,'2017-07-25 17:30:16','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ff1ff4ed0991429681bd7c1d7bffd350','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-21 11:11:10','IP:14.104.207.54;机名:iZmemcvx3hm4a3Z'),
('ff33f8711dac4ffd976966773a80f330','登录后台系统','/pub/user/adlogin.do',1,'2017-07-20 11:18:30','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ff37bc0c3440449e8a1d60d23a146b3c','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-24 14:47:42','IP:14.104.204.90;机名:iZmemcvx3hm4a3Z'),
('ff3c8cc3391848329b44553f7198147c','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-19 16:05:30','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ff412dd15723495eb4485888f961a679','修改商品头部图片','/admin/userGoodsMeuble/editGoodsMeubleImage.do',1,'2017-08-08 11:57:38','IP:106.86.152.227;机名:iZmemcvx3hm4a3Z'),
('ff4cd7b1847e4c2687bffdd99f2788f4','修改订单信息》》订单编号(主键)：06a3a86b1a884b37a82f823efaa65a45','/qscMobilier_Back/admin/UserMeubleOrder/updateInfo.do',1,'2017-06-23 16:06:35','IP:127.0.0.1;机名:PC201508311633'),
('ff7eebd3a0a444efaab5ca4f6f057af7','添加商品','/admin/userGoodsMeuble/addMeuble.do',1,'2017-07-18 09:18:21','IP:106.86.152.189;机名:iZmemcvx3hm4a3Z'),
('ffb4ca06d9a74b5a9f3cd4333bfaf1eb','添加商品头部图片','/admin/userGoodsMeuble/addGoodsMeubleImage.do',1,'2017-07-14 18:02:55','IP:106.86.152.67;机名:iZmemcvx3hm4a3Z'),
('ffc26c39db88470bac16ac407d5df446','查询用户列表','/admin/user/adqu.do',1,'2017-07-25 14:38:20','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z'),
('ffff34aee0924b4f9ef40bcd0f4d0cb4','修改商品','/admin/userGoodsMeuble/editGoodsMeuble.do',1,'2017-07-31 11:46:02','IP:106.86.152.156;机名:iZmemcvx3hm4a3Z');

/*Table structure for table `admin_module` */

DROP TABLE IF EXISTS `admin_module`;

CREATE TABLE `admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '模块名称',
  `url` varchar(250) COLLATE utf8_bin DEFAULT '' COMMENT '模块地址',
  `parentId` int(11) DEFAULT NULL COMMENT '父级模块Id',
  `moduleImage` varchar(256) COLLATE utf8_bin DEFAULT '' COMMENT '模块图标',
  `description` varchar(298) COLLATE utf8_bin DEFAULT '' COMMENT '模块描述',
  `sort` tinyint(6) DEFAULT '0' COMMENT '模块排序',
  `isHide` tinyint(4) DEFAULT '1' COMMENT '是否隐藏 1-否 2-是',
  `userId` int(11) DEFAULT '1' COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='后台 模块';

/*Data for the table `admin_module` */

insert  into `admin_module`(`id`,`name`,`url`,`parentId`,`moduleImage`,`description`,`sort`,`isHide`,`userId`,`createTime`) values 
(1,'管理界面','user/admain',NULL,'','管理界面为隐藏页面',1,2,1,'2016-11-16 16:04:45'),
(2,'管理员管理','',NULL,'','管理员管理(超级管理员)',2,1,1,'2016-11-16 16:04:45'),
(3,'系统管理','',NULL,'','系统管理',3,1,1,'2016-11-16 16:04:45'),
(4,'角色管理','role/qu',2,'','角色管理',3,1,1,'2016-11-16 16:04:45'),
(5,'添加角色','role/ad',4,'','添加角色',6,1,1,'2016-11-16 16:04:45'),
(6,'编辑角色','role/ed',4,'','编辑角色',6,1,1,'2016-11-16 16:04:45'),
(7,'更新角色','role/up',4,'','更新角色',6,1,1,'2016-11-16 16:04:45'),
(8,'删除角色','role/de',4,'','删除角色',6,1,1,'2016-11-16 16:04:45'),
(9,'添加授权','role/adpo',4,'','添加授权',6,1,1,'2016-11-16 16:04:45'),
(10,'保存授权','role/inpo',4,'','保存授权',6,1,1,'2016-11-16 16:04:45'),
(11,'模块管理','mod/qu',2,'','模块管理（管理员管理）',1,1,1,'2016-11-16 16:04:45'),
(12,'添加模块','mod/ad',11,'','添加模块',10,1,1,'2016-11-16 16:04:45'),
(13,'确认添加','mod/in',11,'','确认添加',10,1,1,'2016-11-16 16:04:45'),
(14,'编辑模块初始化','mod/ed',11,'','编辑模块初始化',10,1,1,'2016-11-16 16:04:45'),
(15,'更新模块','mod/up',11,'','更新模块',0,1,1,'2016-11-16 16:04:45'),
(16,'模块删除','mod/de',11,'','模块删除',0,1,1,'2016-11-16 16:04:45'),
(23,'编辑个人信息','user/edInfo',1,'','编辑个人信息',6,1,1,'2016-11-17 15:26:21'),
(25,'更新个人信息','user/upInfo',23,'','更新个人信息',6,1,1,'2016-11-17 15:29:10'),
(26,'修改个人密码','user/adedpwd',1,'','修改个人密码',6,1,1,'2016-11-17 15:29:41'),
(27,'修改密码','user/aduppwd',26,'','修改密码',6,1,1,'2016-11-17 15:30:21'),
(28,'确认添加','role/in',4,'','确认添加',6,1,1,'2016-11-17 15:49:59'),
(29,'用户管理','user/adqu',2,'','用户管理',4,1,1,'2016-11-17 16:13:46'),
(30,'添加用户初始化','user/adad',29,'','添加用户初始化',6,1,1,'2016-11-17 16:14:51'),
(31,'确认添加','user/adin',29,'','确认添加',6,1,1,'2016-11-17 16:15:08'),
(32,'编辑用户初始化','user/aded',29,'','编辑用户初始化',6,1,1,'2016-11-17 16:15:23'),
(33,'确认修改','user/adup',29,'','确认修改',6,1,1,'2016-11-17 16:15:40'),
(34,'重置用户密码','user/adreset',29,'','重置用户密码',6,1,1,'2016-11-17 16:16:19'),
(35,'禁用用户','user/addel',29,'','禁用用户',6,1,1,'2016-11-17 16:17:07'),
(36,'恢复禁用用户','user/adReply',29,'','恢复禁用用户',6,1,1,'2016-11-17 16:17:38'),
(37,'版本图状','style/lib/Hui-iconfont/1.0.7/demo.html',2,'','版本图状',6,1,1,'2016-11-22 12:59:02'),
(42,'系统配置','syscon/qu',3,'','系统配置',1,1,1,'2016-11-24 11:01:18'),
(43,'添加初始化','syscon/ad',42,'','添加',6,1,1,'2016-11-24 11:01:41'),
(44,'确认添加','syscon/in',42,'','确认添加',6,1,1,'2016-11-24 11:01:57'),
(45,'修改初始化','syscon/ed',42,'','修改初始化',6,1,1,'2016-11-24 11:02:22'),
(46,'确认修改','syscon/up',42,'','确认修改',6,1,1,'2016-11-24 11:02:36'),
(47,'删除配置','syscon/de',42,'','删除配置',6,1,1,'2016-11-24 11:03:00'),
(48,'我的桌面','syscon/welcome',42,'','我的桌面',6,1,1,'2016-11-24 12:25:16'),
(49,'日志管理','accesslog/qu',3,'','查看 用户的操作日志信息',2,1,1,'2016-11-25 10:09:29'),
(50,'批量删除日志','accesslog/de',49,'','批量删除日志',6,1,1,'2016-11-25 10:09:58'),
(51,'条件删除日志','accesslog/detj',49,'','条件删除日志',6,1,1,'2016-11-25 10:10:19'),
(52,'账户管理','',NULL,'','会员注册管理',5,1,1,'2017-02-21 17:38:07'),
(53,'注册会员列表','userInfo/qu',52,'','注册会员列表',6,1,1,'2017-02-21 17:42:07'),
(54,'会员账户管理','account/qu',52,'','会员账户管理',6,1,1,'2017-02-21 17:47:21'),
(55,'冻结、恢复账户','account/state',54,'','冻结、恢复账户 冻结过后会员将被封号，不能登录',6,1,1,'2017-02-22 10:42:02'),
(56,'重置密码信息','account/upPassword',54,'','重置密码，重置密码为账户后6位，不足六位的账户为全部',6,1,1,'2017-02-22 10:43:09'),
(57,'用户资金管理','userFinance/qu',52,'','用户资金管理',6,1,1,'2017-02-22 15:01:28'),
(120,'上传图片','uploadPhoto/commonImageRes',1,'','',6,2,1,'2017-03-15 16:35:26'),
(121,'微信管理','',NULL,'','微信管理',4,1,1,'2017-03-21 14:38:12'),
(122,'菜单管理','weixin/menu',121,'','菜单管理',6,1,1,'2017-03-21 14:39:22'),
(123,'添加菜单初始化','weixin/addMenu',122,'','添加菜单初始化',6,1,1,'2017-03-21 14:39:46'),
(124,'确认添加菜单','weixin/addMenuok',122,'','确认添加菜单',6,1,1,'2017-03-21 14:40:00'),
(125,'修改菜单初始化','weixin/updateMenu',122,'','修改菜单初始化',6,1,1,'2017-03-21 14:40:16'),
(126,'确认修改','weixin/updateMenuOk',122,'','确认修改',6,1,1,'2017-03-21 14:40:32'),
(127,'删除菜单','weixin/deleteMenuid',122,'','删除菜单',6,1,1,'2017-03-21 14:40:47'),
(128,'创建微信底部菜单','weixin/foundMenu',122,'','创建微信底部菜单',6,1,1,'2017-03-21 14:41:12'),
(129,'删除微信底部菜单','weixin/deleteMenu',122,'','删除微信底部菜单',6,1,1,'2017-03-21 14:41:31'),
(130,'商品管理','',NULL,'','商品管理',6,1,1,'2017-03-24 11:32:14'),
(131,'订单管理','',NULL,'','订单管理',5,1,1,'2017-03-24 11:32:50'),
(132,'安装管理','',NULL,'','安装管理',5,1,1,'2017-03-24 11:33:14'),
(133,'提成管理','',NULL,'&#xe657;','提成管理',6,1,1,'2017-03-24 11:34:04'),
(137,'短信管理','',NULL,'&#xe68a;','短信管理',6,1,1,'2017-03-24 11:35:36'),
(138,'会员积分管理','',NULL,'&#xe66d;','会员积分管理',6,1,1,'2017-03-24 11:36:24'),
(139,'营销推广管理','',NULL,'','营销推广管理',6,2,1,'2017-03-24 11:37:10'),
(140,'top排名管理','',NULL,'&#xe618;','top排名管理',6,1,1,'2017-03-24 11:37:38'),
(141,'优惠卷管理','',NULL,'&#xe700;','优惠卷管理',6,1,1,'2017-03-24 11:38:02'),
(143,'收货地址管理','consigneeAddress/qu',52,'','会员收货地址管理',6,1,1,'2017-03-24 11:43:20'),
(144,'商品信息管理','userGoodsMeuble/list',130,'','',1,1,1,'2017-03-27 13:38:57'),
(148,'添加商品','userGoodsMeuble/goAddMeuble',144,'','',1,1,1,'2017-03-27 15:33:18'),
(150,'查询下一级分类','userGoodsMeuble/getMeubleType',144,'','',2,2,1,'2017-03-27 17:04:37'),
(152,'厂家订单列表','UserMeubleOrder/listUi',131,'','',6,2,1,'2017-03-28 09:00:50'),
(153,'详情页面','UserMeubleOrder/infoUi',131,'','',6,2,1,'2017-03-28 09:02:29'),
(154,'订单修改','UserMeubleOrder/updateInfo',153,'','',6,2,1,'2017-03-28 09:25:48'),
(156,'优惠卷管理','ticket_info/qu',141,'','优惠卷管理',6,1,1,'2017-03-28 11:29:46'),
(157,'添加优惠卷','ticket_info/insert',156,'','添加优惠卷',6,1,1,'2017-03-28 11:30:11'),
(158,'确认添加','ticket_info/insertOk',156,'','确认添加',6,1,1,'2017-03-28 11:30:25'),
(159,'修改初始化','ticket_info/up',156,'','修改初始化',6,1,1,'2017-03-28 11:30:43'),
(160,'确认修改','ticket_info/upOk',156,'','确认修改',6,1,1,'2017-03-28 11:31:00'),
(161,'删除数据','ticket_info/delete',156,'','删除数据',6,1,1,'2017-03-28 11:31:20'),
(162,'评价管理','',NULL,'','',5,1,1,'2017-03-28 15:14:37'),
(163,'商品评价列表','GoodsMeubleComment/listUI',162,'','',6,2,1,'2017-03-28 15:18:10'),
(166,'修改操作','GoodsMeubleComment/editeInfo',163,'','',6,2,1,'2017-03-28 15:20:13'),
(167,'详情页面','GoodsMeubleComment/infoUI',163,'','',6,2,1,'2017-03-28 15:20:38'),
(169,'添加','userGoodsMeuble/addMeuble',144,'','',3,2,1,'2017-03-28 18:01:49'),
(170,'用户优惠卷管理','ticket_had/qu',141,'','用户优惠卷管理',6,1,1,'2017-03-29 10:03:52'),
(171,'修改','userGoodsMeuble/goEditMeuble',144,'','',4,2,1,'2017-03-29 10:17:11'),
(172,'公司信息管理','textevlues/qu',3,'','公司信息管理 \r\n文本记录信息表 如：1-注册协议 2-推广范本 3-营销教材 4-公司简介 5------------',6,1,1,'2017-03-29 11:31:33'),
(173,'修改初始化','textevlues/edit',172,'','修改初始化',6,1,1,'2017-03-29 11:31:54'),
(174,'确认修改','admin/textevlues/editOk',172,'','确认修改',6,1,1,'2017-03-29 11:32:07'),
(175,'下架','userGoodsMeuble/editGoodsMeuble',144,'','',5,2,1,'2017-03-29 11:35:33'),
(176,'邮资管理','',NULL,'','',6,1,1,'2017-03-29 15:47:06'),
(177,'信息管理','GoodsMeubleCost/listUI',176,'','',6,1,1,'2017-03-29 15:48:15'),
(178,'修改页面','GoodsMeubleCost/infoUI',177,'','',6,2,1,'2017-03-29 15:52:18'),
(179,'修改操作','GoodsMeubleCost/editeInfo',177,'','',6,2,1,'2017-03-29 15:52:44'),
(180,'添加页面','GoodsMeubleCost/addUI',177,'','',6,2,1,'2017-03-29 15:53:28'),
(181,'添加操作','GoodsMeubleCost/addInfo',177,'','',6,2,1,'2017-03-29 15:53:54'),
(182,'头部图片设置','userGoodsMeuble/goMeubleImageList',144,'','',6,2,1,'2017-03-29 16:15:19'),
(183,'添加头部图片','userGoodsMeuble/addGoodsMeubleImage',144,'','',7,1,1,'2017-03-29 16:45:49'),
(184,'头部图片状态管理','userGoodsMeuble/editGoodsMeubleImage',144,'','',8,2,1,'2017-03-29 17:10:43'),
(185,'规格价格列表','userGoodsMeuble/goMeubleSpecifications',144,'','',9,2,1,'2017-03-29 17:46:45'),
(186,'初始化添加规格价格','userGoodsMeuble/goAddMeubleSpecifications',144,'','',10,2,1,'2017-03-30 09:43:38'),
(187,'添加规格价格','userGoodsMeuble/addMeubleSpecifications',144,'','',10,2,1,'2017-03-30 09:52:58'),
(188,'修改规格价格','userGoodsMeuble/editMeubleSpecifications',144,'','',10,2,1,'2017-03-30 10:09:35'),
(189,'跳转添加头部图片','userGoodsMeuble/goAddMeubleImage',144,'','',6,2,1,'2017-03-30 10:39:49'),
(191,'修改头部图片','userGoodsMeuble/goEditMeubleImage',144,'','',6,2,1,'2017-03-30 11:11:23'),
(192,'初始化修改规格价格页面','userGoodsMeuble/goEditMeubleSpecifications',144,'','',8,1,1,'2017-03-30 11:30:43'),
(194,'商品邮费信息展示','GoodsMeubleCost/addressUI',177,'','',6,2,1,'2017-03-30 17:50:11'),
(195,'会员购物车','userGoodsMeuble/queryMeubleCart',130,'','',3,1,1,'2017-03-30 18:32:31'),
(196,'邮费设置','GoodsMeubleCost/addressUI',144,'','',10,1,1,'2017-03-30 18:38:16'),
(197,'全国地质信息','admin/area',177,'','',6,2,1,'2017-03-31 09:52:44'),
(198,'信息列表','phonenoter/listUi',137,'','',6,1,1,'2017-03-31 16:38:02'),
(199,'地址查询','GoodsMeubleCost/checkAddress',177,'','',6,2,1,'2017-04-05 09:37:52'),
(200,'商品分类管理','userGoodsMeuble/queryMeubleType',130,'','',4,1,1,'2017-04-05 15:42:04'),
(201,'退货申请','UserMeubleOrder/returnListUI',131,'','',6,1,1,'2017-04-05 15:48:34'),
(202,'退货申请信息详情','UserMeubleOrder/returnInfoUI',201,'','',6,2,1,'2017-04-05 15:49:12'),
(203,'初始化添加商品分类','userGoodsMeuble/goAddMeubleType',200,'','',1,1,1,'2017-04-05 16:06:00'),
(204,'添加商品分类','userGoodsMeuble/addMeubleType',200,'','',2,2,1,'2017-04-05 16:06:27'),
(205,'初始化修改商品分类','userGoodsMeuble/goEditMeubleType',200,'','',3,2,1,'2017-04-05 16:06:59'),
(206,'修改商品分类','userGoodsMeuble/editMeubleType',200,'','',4,2,1,'2017-04-05 16:07:26'),
(207,'查看信息','userInfo/info',53,'','查看信息',6,1,1,'2017-04-06 14:06:26'),
(208,'销售人员审核','userInfo/shenhe',53,'','销售人员审核',6,1,1,'2017-04-06 14:06:57'),
(209,'厂商管理','userGoodsMeuble/queryMeubleManufacturer',130,'','',5,1,1,'2017-04-06 15:45:48'),
(210,'厂商详情','userGoodsMeuble/goQueryMeubleManufacturer',209,'','',1,2,1,'2017-04-06 15:46:13'),
(211,'初始化厂商修改页面','userGoodsMeuble/goEditMeubleManufacturer',209,'','',2,2,1,'2017-04-06 15:46:40'),
(212,'修改厂商信息','userGoodsMeuble/editMeubleManufacturer',209,'','',3,2,1,'2017-04-06 15:47:04'),
(213,'初始化添加页面','userGoodsMeuble/goAddMeubleManufacturer',209,'','',4,1,1,'2017-04-06 16:26:53'),
(214,'添加','userGoodsMeuble/addMeubleManufacturer',209,'','',5,1,1,'2017-04-06 16:27:17'),
(215,'注册公司内部销售人员','account/insert3Ok',54,'','注册公司内部销售人员',6,1,1,'2017-04-06 18:27:51'),
(216,'注册内部销售人员初始化','account/insert3',54,'','注册内部销售人员初始化',6,1,1,'2017-04-06 18:29:04'),
(217,'广告管理','',NULL,'','',6,1,1,'2017-04-07 09:15:29'),
(219,'广告位置列表','banner/positionListUI',217,'','',6,1,1,'2017-04-07 09:18:18'),
(226,'广告位置广告信息','banner/InfolistUI',219,'','',6,2,1,'2017-04-07 09:27:13'),
(227,'添加广告信息','banner/addInfoUI',219,'','',6,2,1,'2017-04-07 09:27:51'),
(228,'添加广告操作','banner/addOk',219,'','',6,2,1,'2017-04-07 09:28:25'),
(229,'修改广告信息','banner/editInfoUI',219,'','',6,2,1,'2017-04-07 09:29:01'),
(230,'修改广告信息操作','banner/editInfoOk',219,'','',6,2,1,'2017-04-07 09:29:37'),
(231,'公司内部注册发送验证码','account/verificationPhone',54,'','公司内部注册发送验证码',6,1,1,'2017-04-07 16:21:53'),
(233,'退货申请编辑','UserMeubleOrder/updateReturnInfo',201,'','',6,2,1,'2017-04-07 17:12:42'),
(234,'解除公司内部员工信息','account/removePhoneWhatOpenId',54,'','解除公司内部员工信息（电话，微信）',6,1,1,'2017-04-08 09:49:51'),
(235,'售后负责区域管理','',NULL,'','',6,1,1,'2017-04-08 10:17:57'),
(236,'信息列表','InstallerInforArea/listUI',235,'','',6,1,1,'2017-04-08 10:19:33'),
(237,'安装派单列表','install/install',132,'','',1,1,1,'2017-04-12 11:12:46'),
(238,'详情','install/install/detail',237,'','',1,1,1,'2017-04-12 11:25:55'),
(241,'订单商品列表','UserMeubleOrder/GoodsInfoListUi',131,'','',6,2,1,'2017-05-10 15:51:51'),
(242,'excel导出厂家订单','UserMeubleOrder/excelOrder',131,'','',6,2,1,'2017-05-11 11:57:47'),
(243,'销售总金额排行','top/salesAmount',140,'','',6,1,1,'2017-05-11 15:58:37'),
(244,'删除退货单个订单商品信息','UserMeubleOrder/removeReturnGood',201,'','',6,2,1,'2017-05-12 14:54:15'),
(245,'派单评价列表','InstallerListeEstimer/qu',162,'','',6,1,1,'2017-05-15 09:30:15'),
(248,'货运派单列表','install/freight',132,'','',4,1,1,'2017-05-15 14:41:48'),
(250,'添加货运派单详情','UserMeubleOrder/addYSinfoUi',153,'','',6,2,1,'2017-05-15 17:53:53'),
(251,'提成比例管理','ordrestatut/qu',133,'','提成比例管理',6,1,1,'2017-05-16 10:43:25'),
(252,'修改初始化','ordrestatut/upFindById',251,'','修改初始化',6,1,1,'2017-05-16 10:43:46'),
(253,'确认修改','ordrestatut/upOk',251,'','确认修改',6,1,1,'2017-05-16 10:44:02'),
(254,'数据获取','admin/top/salesAmount/data',243,'','',6,1,1,'2017-05-16 10:56:24'),
(255,'日销售统计','top/daySales',140,'','',6,1,1,'2017-05-16 14:59:24'),
(256,'数据获取','admin/top/daySales/data',255,'','',6,1,1,'2017-05-16 14:59:55'),
(257,'编辑、查看','InstallerListeEstimer/info',245,'','编辑、查看',6,1,1,'2017-05-16 15:09:33'),
(258,'修改','InstallerListeEstimer/update',245,'','修改',6,1,1,'2017-05-16 15:09:53'),
(259,'内部销售人员统计','top/innerSaler/data',140,'','',6,1,1,'2017-05-17 10:14:44'),
(260,'数据获取','admin/top/innerSaler/data',259,'','',6,1,1,'2017-05-17 10:15:55'),
(261,'个人销售人员统计','top/individualSales',140,'','',6,1,1,'2017-05-17 10:29:46'),
(262,'修改','install/install/edit',237,'','',6,1,1,'2017-05-17 11:43:50'),
(263,'取消','install/install/cancel',237,'','',6,1,1,'2017-05-17 11:44:11'),
(264,'修改','install/freight/edit',248,'','',6,1,1,'2017-05-17 11:45:05'),
(265,'取消','install/freight/cancel',248,'','',6,1,1,'2017-05-17 11:45:26'),
(266,'详情','install/freight/detail',248,'','',6,1,1,'2017-05-17 15:48:42'),
(267,'结算管理','',NULL,'&#xe63a;','',6,1,1,'2017-05-17 18:20:49'),
(268,'销售类','settle/sales',267,'','',6,1,1,'2017-05-18 10:42:50'),
(269,'供应商类','settle/supplier',267,'','',6,1,1,'2017-05-18 10:43:23'),
(270,'货运类','settle/freight',267,'','',6,1,1,'2017-05-18 10:43:58'),
(271,'安装类','settle/install',267,'','',6,1,1,'2017-05-18 10:44:41'),
(272,'导出Excel','admin/settle/installExcel',271,'','',6,1,1,'2017-05-18 11:37:53'),
(273,'导出Excel','admin/settle/freightExcel',270,'','',6,1,1,'2017-05-18 14:08:33'),
(274,'导出Excel','admin/settle/supplierExcel',269,'','',6,1,1,'2017-05-18 14:09:24'),
(275,'导出Excel','admin/settle/salesExcel',268,'','',6,1,1,'2017-05-18 14:09:54'),
(276,'发送短信','phonenoter/addSend',137,'','发送短信',6,1,1,'2017-05-18 15:19:31'),
(277,'商品销售排行','top/goodsSales',140,'','',6,1,1,'2017-05-18 15:54:14'),
(278,'获取数据','admin/top/goodsSales/data',277,'','',6,1,1,'2017-05-18 15:54:49'),
(279,'商品浏览量排行','top/goodsViews',140,'','',6,1,1,'2017-05-18 16:08:20'),
(280,'获取数据','top/goodsViews/data',279,'','',6,1,1,'2017-05-18 16:08:43'),
(281,'确认发送','phonenoter/addSendOk',276,'','确认发送',6,1,1,'2017-05-18 17:06:46'),
(282,'添加货运派单操作','install/freight/addHuoYunInfo',153,'','',6,2,1,'2017-05-19 15:17:00'),
(284,'搜索货运人','install/freighter',248,'','',6,1,1,'2017-05-19 17:44:40'),
(285,'手机查询货运师傅信息','install/freight/queryHYSFbyPhone',153,'','',6,2,1,'2017-05-19 18:03:50'),
(286,'添加安装派单','UserMeubleOrder/addAZinfoUi',153,'','',6,2,1,'2017-05-20 10:16:50'),
(287,'手机号码查询安装师傅','install/freight/queryAZSFbyPhone',153,'','',6,2,1,'2017-05-20 11:12:47'),
(288,'添加安装师傅派单操作','freight/addAnZhuangInfo',153,'','',6,2,1,'2017-05-20 11:13:36'),
(290,'文章管理','',NULL,'','',6,1,1,'2017-05-21 12:02:48'),
(291,'文章分类管理','article/type',290,'','',6,1,1,'2017-05-21 14:47:38'),
(292,'添加','article/type/add',291,'','',6,1,1,'2017-05-21 14:48:21'),
(293,'修改','article/type/edit',291,'','',6,1,1,'2017-05-21 14:48:50'),
(294,'删除','article/type/delete',291,'','',6,1,1,'2017-05-21 16:12:42'),
(295,'积分兑换管理','',NULL,'&#xe655;','',6,1,1,'2017-05-21 16:17:26'),
(296,'积分商品分类','point/typeListUi',295,'','',6,1,1,'2017-05-21 16:21:40'),
(297,'积分分类添加页面','point/addTypeInfoUI',296,'','',6,2,1,'2017-05-21 16:22:16'),
(298,'积分分类详情页面','point/editeTypeInfoUI',296,'','',6,2,1,'2017-05-21 16:22:33'),
(299,'添加积分分类信息','point/addTypeInfo',296,'','',6,2,1,'2017-05-21 16:22:55'),
(300,'修改积分分类信息','point/editeTypeInfo',296,'','',6,2,1,'2017-05-21 16:23:14'),
(301,'积分商品管理','point/goodsListUi',295,'','',6,1,1,'2017-05-21 17:07:25'),
(302,'积分商品修改页面','point/editeGoodInfoUI',301,'','',6,2,1,'2017-05-21 17:08:12'),
(303,'修改积分商品','point/editeGoodInfo',301,'','',6,2,1,'2017-05-21 17:08:41'),
(304,'积分商品添加页面','point/addGoodInfoUI',301,'','',6,2,1,'2017-05-21 17:09:01'),
(305,'添加积分商品','point/addGoodInfo',301,'','',6,2,1,'2017-05-21 17:09:20'),
(306,'上下架商品积分商品','point/upDownGood',301,'','',6,2,1,'2017-05-21 17:09:43'),
(307,'积分兑换订单','point/orderListUi',295,'','',6,1,1,'2017-05-21 17:18:54'),
(308,'文章标签管理','article/tag',290,'','',6,1,1,'2017-05-24 09:11:35'),
(309,'2级标签','article/tag/sub',308,'','',6,1,1,'2017-05-24 09:55:30'),
(310,'添加','article/tag/add',308,'','',6,1,1,'2017-05-24 09:56:22'),
(311,'修改','article/tag/edit',308,'','',6,1,1,'2017-05-24 09:56:56'),
(312,'删除','article/tag/delete',308,'','',6,1,1,'2017-05-24 09:57:21'),
(313,'文章列表','article',290,'','',6,1,1,'2017-05-24 14:11:02'),
(314,'添加','article/add',313,'','',6,1,1,'2017-05-24 14:42:15'),
(315,'获取标签select数据','article/tag/selectTwo',313,'','',6,1,1,'2017-05-24 14:49:47'),
(316,'积分订单详情','point/editeOrderInfoUI',307,'','',6,2,1,'2017-05-24 15:24:06'),
(317,'订单修改操作','point/editeOrderInfo',307,'','',6,2,1,'2017-05-24 15:24:23'),
(318,'修改','article/edit',313,'','',6,1,1,'2017-05-24 16:18:59'),
(319,'个人订单列表','UserMeubleOrderByPersion/listUi',131,'','',6,1,1,'2017-05-27 09:15:17'),
(321,'订单详情列表','UserMeubleOrderByPersion/infoUi',319,'','',6,2,1,'2017-05-27 14:12:04'),
(322,'修改订单信息','UserMeubleOrderByPersion/updateInfo',319,'','',6,2,1,'2017-05-27 15:51:06'),
(323,'添加订单安装派单信息页面','UserMeubleOrderByPersion/addAZinfoUi',319,'','',6,2,1,'2017-05-27 16:39:32'),
(324,'添加订单货运派单信息页面','UserMeubleOrderByPersion/addYSinfoUi',319,'','',6,2,1,'2017-05-27 16:40:06'),
(325,'添加页面','admin/settle/supplier/addInfoUi',269,'','',6,2,1,'2017-06-08 11:53:25'),
(326,'添加操作','admin/settle/supplier/addInfo',269,'','',6,2,1,'2017-06-08 11:53:48'),
(327,'修改页面','admin/settle/supplier/infoUi',269,'','',6,2,1,'2017-06-08 11:54:19'),
(328,'修改操作','admin/settle/supplier/etideInfo',269,'','',6,2,1,'2017-06-08 11:54:41'),
(329,'取消支付','admin/settle/supplier/removeInfo',269,'','',6,2,1,'2017-06-08 11:55:02'),
(330,'校验商品id','admin/userGoodsMeuble/checkMeubleCoter',144,'','',6,2,1,'2017-06-22 19:20:05'),
(331,'流水管理','flowing/qu',267,'','',6,1,1,'2017-06-28 14:54:26'),
(332,'生成厂家编号','admin/userGoodsMeuble/autoGetUserNum',144,'','',6,1,1,'2017-06-30 19:10:47'),
(333,'个人销售人员统计 （子）','admin/top/innerSaler/showInfo',140,'','',6,2,1,'2017-07-03 15:20:28');

/*Table structure for table `admin_role` */

DROP TABLE IF EXISTS `admin_role`;

CREATE TABLE `admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色Id',
  `name` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '角色名称',
  `number` int(11) DEFAULT '0' COMMENT '角色数量',
  `description` varchar(298) COLLATE utf8_bin DEFAULT '' COMMENT '角色描述',
  `userId` int(11) DEFAULT '1' COMMENT '创建人Id 1-表示超级管理员',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `admin_role` */

insert  into `admin_role`(`id`,`name`,`number`,`description`,`userId`,`createTime`) values 
(1,'超级管理员',1,'最高权限',1,'2016-11-16 16:02:40'),
(2,'管理员',0,'管理员',1,'2016-11-16 16:02:40'),
(6,'运营（美工）',1,'李光泽',1,'2017-07-20 10:54:26');

/*Table structure for table `admin_rolemodule` */

DROP TABLE IF EXISTS `admin_rolemodule`;

CREATE TABLE `admin_rolemodule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleId` bigint(11) DEFAULT '1' COMMENT '角色ID',
  `moduleId` bigint(11) DEFAULT '0' COMMENT '模块Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20441 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='授权 分配表';

/*Data for the table `admin_rolemodule` */

insert  into `admin_rolemodule`(`id`,`roleId`,`moduleId`) values 
(3899,2,1),
(3900,2,23),
(3901,2,25),
(3902,2,26),
(3903,2,27),
(3904,2,2),
(3905,2,4),
(3906,2,5),
(3907,2,6),
(3908,2,7),
(3909,2,8),
(3910,2,9),
(3911,2,10),
(3912,2,28),
(3913,2,11),
(3914,2,12),
(3915,2,13),
(3916,2,14),
(3917,2,15),
(3918,2,16),
(3919,2,29),
(3920,2,30),
(3921,2,31),
(3922,2,32),
(3923,2,33),
(3924,2,34),
(3925,2,35),
(3926,2,36),
(3927,2,37),
(3928,2,3),
(3929,2,42),
(3930,2,43),
(3931,2,44),
(3932,2,45),
(3933,2,46),
(3934,2,47),
(3935,2,48),
(3936,2,49),
(3937,2,50),
(3938,2,51),
(19924,1,1),
(19925,1,23),
(19926,1,25),
(19927,1,26),
(19928,1,27),
(19929,1,120),
(19930,1,2),
(19931,1,4),
(19932,1,5),
(19933,1,6),
(19934,1,7),
(19935,1,8),
(19936,1,9),
(19937,1,10),
(19938,1,28),
(19939,1,11),
(19940,1,12),
(19941,1,13),
(19942,1,14),
(19943,1,15),
(19944,1,16),
(19945,1,29),
(19946,1,30),
(19947,1,31),
(19948,1,32),
(19949,1,33),
(19950,1,34),
(19951,1,35),
(19952,1,36),
(19953,1,37),
(19954,1,3),
(19955,1,42),
(19956,1,43),
(19957,1,44),
(19958,1,45),
(19959,1,46),
(19960,1,47),
(19961,1,48),
(19962,1,49),
(19963,1,50),
(19964,1,51),
(19965,1,172),
(19966,1,173),
(19967,1,174),
(19968,1,52),
(19969,1,53),
(19970,1,207),
(19971,1,208),
(19972,1,54),
(19973,1,55),
(19974,1,56),
(19975,1,215),
(19976,1,216),
(19977,1,231),
(19978,1,234),
(19979,1,57),
(19980,1,143),
(19981,1,121),
(19982,1,122),
(19983,1,123),
(19984,1,124),
(19985,1,125),
(19986,1,126),
(19987,1,127),
(19988,1,128),
(19989,1,129),
(19990,1,130),
(19991,1,144),
(19992,1,148),
(19993,1,150),
(19994,1,169),
(19995,1,171),
(19996,1,175),
(19997,1,182),
(19998,1,183),
(19999,1,184),
(20000,1,185),
(20001,1,186),
(20002,1,187),
(20003,1,188),
(20004,1,189),
(20005,1,191),
(20006,1,192),
(20007,1,196),
(20008,1,330),
(20009,1,332),
(20010,1,195),
(20011,1,200),
(20012,1,203),
(20013,1,204),
(20014,1,205),
(20015,1,206),
(20016,1,209),
(20017,1,210),
(20018,1,211),
(20019,1,212),
(20020,1,213),
(20021,1,214),
(20022,1,131),
(20023,1,152),
(20024,1,153),
(20025,1,154),
(20026,1,250),
(20027,1,282),
(20028,1,285),
(20029,1,286),
(20030,1,287),
(20031,1,288),
(20032,1,201),
(20033,1,202),
(20034,1,233),
(20035,1,244),
(20036,1,241),
(20037,1,242),
(20038,1,319),
(20039,1,321),
(20040,1,322),
(20041,1,323),
(20042,1,324),
(20043,1,132),
(20044,1,237),
(20045,1,238),
(20046,1,262),
(20047,1,263),
(20048,1,248),
(20049,1,264),
(20050,1,265),
(20051,1,266),
(20052,1,284),
(20053,1,133),
(20054,1,251),
(20055,1,252),
(20056,1,253),
(20057,1,137),
(20058,1,198),
(20059,1,276),
(20060,1,281),
(20061,1,138),
(20062,1,139),
(20063,1,140),
(20064,1,243),
(20065,1,254),
(20066,1,255),
(20067,1,256),
(20068,1,259),
(20069,1,260),
(20070,1,261),
(20071,1,277),
(20072,1,278),
(20073,1,279),
(20074,1,280),
(20075,1,333),
(20076,1,141),
(20077,1,156),
(20078,1,157),
(20079,1,158),
(20080,1,159),
(20081,1,160),
(20082,1,161),
(20083,1,170),
(20084,1,162),
(20085,1,163),
(20086,1,166),
(20087,1,167),
(20088,1,245),
(20089,1,257),
(20090,1,258),
(20091,1,176),
(20092,1,177),
(20093,1,178),
(20094,1,179),
(20095,1,180),
(20096,1,181),
(20097,1,194),
(20098,1,197),
(20099,1,199),
(20100,1,217),
(20101,1,219),
(20102,1,226),
(20103,1,227),
(20104,1,228),
(20105,1,229),
(20106,1,230),
(20107,1,235),
(20108,1,236),
(20109,1,267),
(20110,1,268),
(20111,1,275),
(20112,1,269),
(20113,1,274),
(20114,1,325),
(20115,1,326),
(20116,1,327),
(20117,1,328),
(20118,1,329),
(20119,1,270),
(20120,1,273),
(20121,1,271),
(20122,1,272),
(20123,1,331),
(20124,1,290),
(20125,1,291),
(20126,1,292),
(20127,1,293),
(20128,1,294),
(20129,1,308),
(20130,1,309),
(20131,1,310),
(20132,1,311),
(20133,1,312),
(20134,1,313),
(20135,1,314),
(20136,1,315),
(20137,1,318),
(20138,1,295),
(20139,1,296),
(20140,1,297),
(20141,1,298),
(20142,1,299),
(20143,1,300),
(20144,1,301),
(20145,1,302),
(20146,1,303),
(20147,1,304),
(20148,1,305),
(20149,1,306),
(20150,1,307),
(20151,1,316),
(20152,1,317),
(20297,6,1),
(20298,6,23),
(20299,6,25),
(20300,6,26),
(20301,6,27),
(20302,6,120),
(20303,6,2),
(20304,6,29),
(20305,6,34),
(20306,6,52),
(20307,6,53),
(20308,6,207),
(20309,6,208),
(20310,6,54),
(20311,6,55),
(20312,6,56),
(20313,6,231),
(20314,6,234),
(20315,6,143),
(20316,6,130),
(20317,6,144),
(20318,6,148),
(20319,6,150),
(20320,6,169),
(20321,6,171),
(20322,6,175),
(20323,6,182),
(20324,6,183),
(20325,6,184),
(20326,6,185),
(20327,6,186),
(20328,6,187),
(20329,6,188),
(20330,6,189),
(20331,6,191),
(20332,6,192),
(20333,6,196),
(20334,6,330),
(20335,6,332),
(20336,6,195),
(20337,6,200),
(20338,6,203),
(20339,6,204),
(20340,6,205),
(20341,6,206),
(20342,6,209),
(20343,6,210),
(20344,6,211),
(20345,6,212),
(20346,6,213),
(20347,6,214),
(20348,6,131),
(20349,6,152),
(20350,6,153),
(20351,6,154),
(20352,6,250),
(20353,6,282),
(20354,6,285),
(20355,6,286),
(20356,6,287),
(20357,6,288),
(20358,6,201),
(20359,6,202),
(20360,6,233),
(20361,6,244),
(20362,6,241),
(20363,6,242),
(20364,6,319),
(20365,6,321),
(20366,6,322),
(20367,6,323),
(20368,6,324),
(20369,6,132),
(20370,6,237),
(20371,6,238),
(20372,6,262),
(20373,6,263),
(20374,6,248),
(20375,6,264),
(20376,6,265),
(20377,6,266),
(20378,6,284),
(20379,6,137),
(20380,6,198),
(20381,6,276),
(20382,6,281),
(20383,6,138),
(20384,6,139),
(20385,6,141),
(20386,6,170),
(20387,6,162),
(20388,6,163),
(20389,6,166),
(20390,6,167),
(20391,6,245),
(20392,6,257),
(20393,6,258),
(20394,6,176),
(20395,6,177),
(20396,6,178),
(20397,6,179),
(20398,6,180),
(20399,6,181),
(20400,6,194),
(20401,6,197),
(20402,6,199),
(20403,6,217),
(20404,6,219),
(20405,6,226),
(20406,6,227),
(20407,6,228),
(20408,6,229),
(20409,6,230),
(20410,6,235),
(20411,6,236),
(20412,6,290),
(20413,6,291),
(20414,6,292),
(20415,6,293),
(20416,6,294),
(20417,6,308),
(20418,6,309),
(20419,6,310),
(20420,6,311),
(20421,6,312),
(20422,6,313),
(20423,6,314),
(20424,6,315),
(20425,6,318),
(20426,6,295),
(20427,6,296),
(20428,6,297),
(20429,6,298),
(20430,6,299),
(20431,6,300),
(20432,6,301),
(20433,6,302),
(20434,6,303),
(20435,6,304),
(20436,6,305),
(20437,6,306),
(20438,6,307),
(20439,6,316),
(20440,6,317);

/*Table structure for table `admin_systemconfig` */

DROP TABLE IF EXISTS `admin_systemconfig`;

CREATE TABLE `admin_systemconfig` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `displayName` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '显示名称',
  `configKey` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '配置键',
  `configValue` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '值',
  `isReadOnly` tinyint(4) DEFAULT '0' COMMENT '是否只读 0 否 1 是',
  `description` varchar(298) COLLATE utf8_bin DEFAULT '' COMMENT '描述',
  `userId` int(11) DEFAULT '1' COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统配置键表';

/*Data for the table `admin_systemconfig` */

insert  into `admin_systemconfig`(`id`,`displayName`,`configKey`,`configValue`,`isReadOnly`,`description`,`userId`,`createTime`) values 
(1,'前台访问路径','webRoot','http://7secai.cn/api/',1,'前台访问路径',1,'2016-11-16 18:00:15'),
(2,'后台访问路径','appRoot','localhost:8080/z_houtai/',1,'后台访问路径',1,'2016-11-16 18:00:20'),
(3,'系统名称','systemName','七色彩家具商城后台管理系统',0,'系统名称 - 后台显示的名称\r\n',1,'2017-02-22 14:16:20'),
(4,'网站名称','webName','网站名称',0,'网站名称',1,'2016-11-16 18:00:20'),
(5,'系统用户重置密码','resetPassword','666666',0,'系统用户重置密码,6-16位包含数字、字母',1,'2016-11-24 11:05:33'),
(6,'系统用户首次添加用户密码','initPassword','123456',0,'系统用户首次添加用户密码,6-16位包含数字、字母',1,'2016-11-24 11:05:37'),
(8,'销售额度第二层比例','salesRatio2','0.2',0,'销售额度第二层比例 如20%，则填写0.2',1,'2016-11-24 11:05:37'),
(9,'销售额度时间查询(月查询)','limitTime','2017-08-01_2017-08-31',0,'销售额度时间查询(月查询)',NULL,'2017-08-07 19:01:35'),
(10,'销售额度时间查询(季度查询)','limitJiDuTime','2017-08-01_2017-11-01',0,'销售额度时间查询(季度查询)',NULL,'2017-08-07 19:01:56'),
(11,'我的排名时间查询(月查询)','rankTime','2017-08-01_2017-08-31',0,'我的排名时间查询(月查询)',NULL,'2017-08-11 11:09:36'),
(12,'我的排名时间查询(季度查询)','limitJiDu1Time','2017-08-01_2017-11-01',0,'我的排名时间查询(季度查询)',NULL,'2017-08-11 11:09:48');

/*Table structure for table `admin_user` */

DROP TABLE IF EXISTS `admin_user`;

CREATE TABLE `admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userName` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '用户名 用于登陆后台系统',
  `passWord` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '密码 MD5加密处理',
  `userImage` varchar(298) COLLATE utf8_bin DEFAULT '' COMMENT '用户头像 地址',
  `roleId` int(11) DEFAULT '0' COMMENT '角色Id',
  `realName` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '真实姓名',
  `sex` tinyint(4) DEFAULT '0' COMMENT '2女，1男，0保密',
  `address` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '联系地址',
  `telephone` varchar(15) COLLATE utf8_bin DEFAULT '' COMMENT '电话号码',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `userId` int(11) DEFAULT '1' COMMENT '创建人 ID',
  `isDelete` tinyint(4) DEFAULT '1' COMMENT '是否删除 默认 1正常 2-禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `admin_user` */

insert  into `admin_user`(`id`,`userName`,`passWord`,`userImage`,`roleId`,`realName`,`sex`,`address`,`telephone`,`createTime`,`userId`,`isDelete`) values 
(1,'admin','e10adc3949ba59abbe56e057f20f883e','http://omumzem73.bkt.clouddn.com/20170329162242_368.jpg',1,'admin',1,'钾离子11','13012300000','2016-11-16 16:01:34',1,1),
(6,'ligz','f379eaf3c831b04de153469d1bec345e',NULL,6,'李光泽',1,'','13983428324','2017-07-20 11:11:40',1,1);

/*Table structure for table `aftersales_withdrawal` */

DROP TABLE IF EXISTS `aftersales_withdrawal`;

CREATE TABLE `aftersales_withdrawal` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '标识值（主键）（唯一值）',
  `manId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '会员ID',
  `applyMoney` decimal(20,2) DEFAULT NULL COMMENT '申请金额',
  `withType` tinyint(4) DEFAULT '1' COMMENT '申请状态 1-待处理 2-提现成功 3-提现失败',
  `failureWhy` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '失败原因',
  `applyTime` datetime DEFAULT NULL COMMENT '申请时间',
  `dealTime` datetime DEFAULT NULL COMMENT '处理时间',
  `bankName` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '银行名称',
  `cardholder` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '持卡人',
  `bankAccount` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '银行账户',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='售后提现申请';

/*Data for the table `aftersales_withdrawal` */

insert  into `aftersales_withdrawal`(`id`,`manId`,`applyMoney`,`withType`,`failureWhy`,`applyTime`,`dealTime`,`bankName`,`cardholder`,`bankAccount`,`reserve1`,`reserve2`) values 
('0ac18ede34e744baafeb200161e3ea14','092fa3795ee6446a80e47a571ddd6ff0',50.00,1,NULL,'2017-06-02 16:08:18',NULL,'银行名称','持卡人','5002261995050577786',NULL,NULL),
('6063095ff2374ad4939c22a40319f549','092fa3795ee6446a80e47a571ddd6ff0',100.00,1,NULL,'2017-06-02 16:52:13',NULL,'银行名称','持卡人','5002261995050577786',NULL,NULL),
('b99ed018700a4e158433816d0b34b838','092fa3795ee6446a80e47a571ddd6ff0',0.00,1,NULL,'2017-06-02 17:02:31',NULL,'银行名称','持卡人','5002261995050577786',NULL,NULL),
('c6ccba74c7bd4b638a1363d0485ec249','092fa3795ee6446a80e47a571ddd6ff0',100.00,1,NULL,'2017-06-02 16:49:15',NULL,'银行名称','持卡人','5002261995050577786',NULL,NULL),
('ca53283e42af43b0b7fddb4771ea10b8','092fa3795ee6446a80e47a571ddd6ff0',400.00,1,NULL,'2017-06-02 17:01:15',NULL,'银行名称','持卡人','5002261995050577786',NULL,NULL);

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `cover` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '封面图',
  `type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '文章分类（关联article_type）',
  `content` longtext COLLATE utf8_bin COMMENT '文章内容',
  `star_num` bigint(20) DEFAULT NULL COMMENT '收藏数量',
  `browse_num` bigint(20) DEFAULT NULL COMMENT '浏览量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章表';

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`cover`,`type`,`content`,`star_num`,`browse_num`,`create_time`) values 
('0b5cae62007a4323bfb5b41003599d1d','极致购物体验，七色彩商城产品上新','http://qiniuti.7secai.cn/20170811144519_28.jpg','a2c983c174034918a8301b145e941805','随着时间的迁移，买东西是越来越方便了。不用出门，不对，甚至不用下床，只要你微信或支付宝里还有钱，网络没欠费，手机没停机ORz…真的就已经到了动动手指、下单物品隔天到的境地，便捷的购物体验。',NULL,NULL,'2017-05-24 15:54:57'),
('586d45b726ff4d92ba5da6bd58c8df72','七色彩家具,欢迎你','http://qiniuti.7secai.cn/20170811144507_331.jpg','a2c983c174034918a8301b145e941805','七色彩家具,璀璨人生，你值得拥有，美好时光在，在七色彩家具快乐度过',NULL,NULL,'2017-05-24 17:00:03');

/*Table structure for table `article_tag` */

DROP TABLE IF EXISTS `article_tag`;

CREATE TABLE `article_tag` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `parent` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '父级',
  `level` int(11) DEFAULT NULL COMMENT '级数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `article_tag_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `article_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章标签表，2级';

/*Data for the table `article_tag` */

insert  into `article_tag`(`id`,`name`,`parent`,`level`,`create_time`) values 
('09299c9834e3450c91418ba723398a75','美式','483b5e9dffdc426fa92d50230de9cc48',2,'2017-05-24 10:11:20'),
('483b5e9dffdc426fa92d50230de9cc48','风格',NULL,1,'2017-05-24 10:05:45');

/*Table structure for table `article_tag_star` */

DROP TABLE IF EXISTS `article_tag_star`;

CREATE TABLE `article_tag_star` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `article` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '文章id（article）',
  `tag` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '文章标签id（article_tag）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`),
  KEY `article` (`article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章标签中间表';

/*Data for the table `article_tag_star` */

insert  into `article_tag_star`(`id`,`article`,`tag`,`create_time`) values 
('1e955bd0705e4c309fdabd1374970120','0b5cae62007a4323bfb5b41003599d1d','09299c9834e3450c91418ba723398a75','2017-08-11 14:45:20'),
('558c1a972ee64ee3937e4d1bfcafb928','586d45b726ff4d92ba5da6bd58c8df72','09299c9834e3450c91418ba723398a75','2017-08-11 14:45:10');

/*Table structure for table `article_type` */

DROP TABLE IF EXISTS `article_type`;

CREATE TABLE `article_type` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章分类表，1级';

/*Data for the table `article_type` */

insert  into `article_type`(`id`,`name`,`image`,`create_time`) values 
('591508aa5c0343e69a7b67180c5ef574','家具','http://omumzem73.bkt.clouddn.com/20170521153011_116.jpg','2017-05-21 15:34:55'),
('e46650fd93e3492c9a91d420bf9e3174','厨具','http://omumzem73.bkt.clouddn.com/20170521153011_116.jpg','2017-05-21 15:34:03');

/*Table structure for table `banner_ad_info` */

DROP TABLE IF EXISTS `banner_ad_info`;

CREATE TABLE `banner_ad_info` (
  `id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户标识值（主键）（唯一值）',
  `bannerImage` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '广告图片路径',
  `bannerUrl` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '广告跳转路径',
  `bannerText` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '广告文字介绍',
  `bannerSort` int(10) DEFAULT NULL COMMENT '广告位置排序',
  `bannerType` tinyint(4) DEFAULT NULL COMMENT '广告类型 1-文字广告；2-图片;',
  `positionId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '广告位 外键',
  `isNotDelete` tinyint(4) DEFAULT NULL COMMENT '是否删除 1-未删除 2-删除',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `banner_ad_info` */

insert  into `banner_ad_info`(`id`,`bannerImage`,`bannerUrl`,`bannerText`,`bannerSort`,`bannerType`,`positionId`,`isNotDelete`,`addTime`,`reserve1`,`reserve2`) values 
('1','http://qiniuti.7secai.cn/58161501207306815.jpg','http://7secai.cn/index.php/Home/good/activity','描述下下哈哈哈',7,2,'1',1,'2017-04-06 17:34:45',NULL,NULL),
('2','http://qiniuti.7secai.cn/95671501051898372.jpg','http://7secai.cn/index.php/Home/good/activity','描述信息想想想',1,2,'1',1,'2017-04-06 17:36:18',NULL,NULL),
('d6af990b034142239387021da2c72ec2','http://qiniuti.7secai.cn/9671500974998013.jpg','http://7secai.cn/index.php/Home/good/activity','测试一下啊啊实打实大师的撒多撒多撒多撒多撒大所大所大所多撒多撒阿斯达所大所大所大所多',1,2,'1',1,'2017-04-07 09:32:26',NULL,NULL),
('a379d526728b4a47b2caf69a930bfbb6','http://qiniuti.7secai.cn/75831501657396409.jpg','http://7secai.cn/index.php/Home/good/activity','测试',10,2,'2',1,'2017-04-07 11:16:50',NULL,NULL),
('62d39ec86fe741a2aa761c69d1a89c2d','http://omumzem73.bkt.clouddn.com/13901495183349816.jpg','http://7secai.cn/index.php/Home/good/activity','文字广告啊啊啊asda',3,2,'2',2,'2017-04-07 11:17:18',NULL,NULL),
('9b5f1e34839c42e9a86e11acd1352677','http://omumzem73.bkt.clouddn.com/24901491557354562.jpg','http://7secai.cn/index.php/Home/good/activity','性感美女',4,2,'2',2,'2017-04-07 17:29:27',NULL,NULL),
('d8efd6dcddcc4f27820d56fd41592785','http://omumzem73.bkt.clouddn.com/19181491557427492.jpg','http://7secai.cn/index.php/Home/good/activity','新闻特效修改',1,2,'2',2,'2017-04-07 17:30:32',NULL,NULL);

/*Table structure for table `banner_ad_position` */

DROP TABLE IF EXISTS `banner_ad_position`;

CREATE TABLE `banner_ad_position` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `positionName` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '广告位置名称',
  `positionDecrire` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `banner_ad_position` */

insert  into `banner_ad_position`(`id`,`positionName`,`positionDecrire`,`addTime`,`reserve1`) values 
('1','顶部广告','最上面的广告','2017-05-19 16:44:19',NULL),
('2','底部位置','底部广告阿斯达所多撒多撒多撒大所多撒多撒多撒大所阿斯达所大所大所','2017-05-19 16:44:19',NULL),
('3','商城积分顶部banner','商城积分顶部banner图标信息','2017-05-19 16:44:19',NULL);

/*Table structure for table `browse_record` */

DROP TABLE IF EXISTS `browse_record`;

CREATE TABLE `browse_record` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `goodsId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '商品id',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='我的足迹';

/*Data for the table `browse_record` */

insert  into `browse_record`(`id`,`userId`,`goodsId`,`create_time`) values 
('0100d399ae0f4557afe36d73f8d7aaf0','1a61e9b7339f4f089ef7c3f6291698b6','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-08-08 14:19:04'),
('01425a2d749542f0924b517cd7202ef6','4b8bc4e1d5d9472d891bcc3b3fc3c99a','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-08-11 17:24:31'),
('01c431f5ae23423187db91729bc3b527','464145fc778c4229804dd2a28bbabf32','05b23faa-b771-4400-a27e-d156faa05455','2017-07-17 17:56:25'),
('025074c4cf5c4befbf0da82c404594f5','e60d4259ab2a4d87868bd6cf0c965d00','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-07-25 11:39:02'),
('02bfdb0d27c149ffbf1c0fe12f88e5e7','6962218c61ba41469320fb285f9f20d9','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:29:35'),
('02d6d2c0680347fc818fcc52509ffb9f','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:12:58'),
('02f87df522994a11a6332fffbb9eb65f','eadab53147b84b9883cb595502b5bac7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-28 16:51:55'),
('031e6ec876fc406fb957f395f0877af2','0b2043c2512144b1886d22730dac52a0','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 20:42:12'),
('03cd47e4ce6d4484bb3750afba82d6e1','4b8bc4e1d5d9472d891bcc3b3fc3c99a','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-11 17:28:11'),
('055ef214ae3b4265ba293d3368166cbb','092fa3795ee6446a80e47a571ddd6ff0','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-04 15:07:49'),
('056342909ccf4cfa9d54d0e7000f795e','admin','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 18:34:34'),
('0687af66469b43c1975187bac55c4887','b8bac6f6cb544833ac69ed919e88e67d','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c','2017-08-11 18:47:48'),
('07789995df7f41be95a5034184e49722','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 17:02:58'),
('0784816667b84b4f8071ec72a45f00b6','7d0dc74cb6ac4c1ab13f27e8517c0aa7','ceb79cd0-a389-4115-8546-67310d93cf14','2017-07-26 17:34:10'),
('0871d92ce5c34642876d57d9bedc63f4','3691bc3411904cb9ae3455faafbe8ffe','aa43af8a-70bd-4b9d-aba8-347d5abb25de','2017-08-03 21:51:04'),
('09ce026a38fc4ee49a4dd7c00b2f3b37','107e509838074a07b783251de9d7bb1b','bbe59f47-c4fd-4817-8849-7149162c55e8','2017-07-14 18:55:03'),
('09fa5f9a8f06423f98677d07a04ad8e1','2f273c1f25e648d08f62be259cc45093','dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23','2017-07-24 11:58:13'),
('0df7e1a7eb6d49588fb9280dd49ae41e','3b378b06f5214388a70c65176e7ee490','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-19 12:49:27'),
('0ed4612984f14fa29eb1b643790621fe','092fa3795ee6446a80e47a571ddd6ff0','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-04 15:08:10'),
('0f2e3fa972e748d5988b37082ed88576','092fa3795ee6446a80e47a571ddd6ff0','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-04 15:08:13'),
('1169cde5dcad4b9cb0f2aa59044e27c8','d8a26cfffc7248f3b922e9812e734575','05b23faa-b771-4400-a27e-d156faa05455','2017-08-04 12:46:26'),
('1185f66c184c4ec1a8e050aed373699e','e60d4259ab2a4d87868bd6cf0c965d00','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-25 11:38:17'),
('119abf2269e54b658e66d798488a15d1','admin','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','2017-08-04 10:54:59'),
('126952e4696c46ed8456759a93327ea9','0b2043c2512144b1886d22730dac52a0','4d81e88d-3021-4157-8d85-173ba6b142d9','2017-07-17 17:29:57'),
('127388c9a51b4cc5ac31c9ce37593282','7d0dc74cb6ac4c1ab13f27e8517c0aa7','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-07-26 17:18:37'),
('12b00974cb744692b20b05ee42f0e9e1','6962218c61ba41469320fb285f9f20d9','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:24:21'),
('135abca6d66341ca9b6db045886d8d0a','83b49aa2cc2b4146a198ca5f1fde87cc','5875','2017-07-13 10:35:20'),
('15691d20d3584b8db637969da284d108','0b2043c2512144b1886d22730dac52a0','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-18 10:40:20'),
('169a0cda1cd444afa1438fc81dd57b0b','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 16:06:21'),
('174bd596619d45b5a06000ae56ed4f31','464145fc778c4229804dd2a28bbabf32','4d81e88d-3021-4157-8d85-173ba6b142d9','2017-07-17 14:16:53'),
('17dc767c01564ac1bec14bda987de29b','80f2af0b7c7a443bb63c483ea3ec2723','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-04 20:50:57'),
('196e6bfa875441f1bbcb7e7aecc45f95','464145fc778c4229804dd2a28bbabf32','4d81e88d-3021-4157-8d85-173ba6b142d9','2017-07-17 14:13:21'),
('19c99ebad33744a98e90a90b0d5b3901','e60d4259ab2a4d87868bd6cf0c965d00','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:33:16'),
('1bf034a38c184300be98054a835b9737','admin','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-28 16:33:27'),
('1c79050ecf14476eb055ceb2de501678','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 17:24:04'),
('1da5790bc0b14ff4a1af899da9051ee0','107e509838074a07b783251de9d7bb1b','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 16:56:50'),
('1db957db79a44e1b897ce36286a1e006','4b8bc4e1d5d9472d891bcc3b3fc3c99a','c5b2be18-6f05-4c22-afe4-b43c1a09a16b','2017-08-07 14:17:08'),
('1e22c44ae3d845d7b7f1925f51f9cac6','eadab53147b84b9883cb595502b5bac7','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 14:44:14'),
('1ec1908227c94fc18b9a15b9543606b8','092fa3795ee6446a80e47a571ddd6ff0','9999','2017-07-04 15:51:15'),
('1fbbdd660b9d4a5ca9367f8dcdafb89a','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 16:03:30'),
('204e55e87ca0404b8a75e0c2f3040bb2','eadab53147b84b9883cb595502b5bac7','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:47:31'),
('20f253b9030e4d8e8da7665ad4c6ccb0','e60d4259ab2a4d87868bd6cf0c965d00','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:31:54'),
('22df77b191e44ccc8e0383ea89e182ea','e60d4259ab2a4d87868bd6cf0c965d00','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-31 18:04:41'),
('22feb0f1ad4b4339bf756bfd22a1aff3','admin','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 17:31:23'),
('2354fa6b9bbd4243b53d5d05a212c033','e60d4259ab2a4d87868bd6cf0c965d00','4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc','2017-07-31 18:33:50'),
('23b091a1aa564ccf922bfe3eaa57e2a2','2f273c1f25e648d08f62be259cc45093','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-25 15:47:32'),
('24535a3b01aa4e6885b5a5e4bc95e0a0','admin','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-19 11:06:23'),
('2503124d6fe14237b31409868789279d','1a61e9b7339f4f089ef7c3f6291698b6','ceb79cd0-a389-4115-8546-67310d93cf14','2017-08-07 18:14:48'),
('2656ad7e61774ef9b1a6eb6af16c0179','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 16:46:19'),
('265c0795a25e4c0080f8a164e5b3dbf4','e60d4259ab2a4d87868bd6cf0c965d00','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:30:02'),
('271cdcfac046427786a1493ba83f6355','e60d4259ab2a4d87868bd6cf0c965d00','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:30:44'),
('27c444440e5b471382905961d8058cd3','1a61e9b7339f4f089ef7c3f6291698b6','05b23faa-b771-4400-a27e-d156faa05455','2017-08-08 14:16:55'),
('28a1a8610d8347bca3faa9d661455f83','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:12:56'),
('290f5517a99f4159996b586003d27c2a','80f2af0b7c7a443bb63c483ea3ec2723','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-07 14:27:48'),
('29d73485a84a4fd89b539e6e5ec0ba06','80f2af0b7c7a443bb63c483ea3ec2723','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-08-02 18:43:06'),
('29e40280016942938684241a14c80797','7d0dc74cb6ac4c1ab13f27e8517c0aa7','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-07-26 17:21:22'),
('2b984e31e8294996ac308ce20b7c3686','e60d4259ab2a4d87868bd6cf0c965d00','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 16:12:07'),
('2bc4968eeaaf44ffaa88bb2fd48e0a25','6962218c61ba41469320fb285f9f20d9','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:23:13'),
('314991612af046a0b0d71405c715f9d9','0b2043c2512144b1886d22730dac52a0','9c2546ac-386d-4b45-bd90-a06c20ad82e4','2017-07-18 17:48:25'),
('31c9de19defa4f7bb47ab9007084b2d7','f2f23ec74ef34dba849e7636aa11226c','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-08-08 19:55:40'),
('340b2270f29d4a5d9f2c2ee78485adf2','0b2043c2512144b1886d22730dac52a0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-18 17:44:30'),
('34488e55f9d641bb8da5b3ae28469a68','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:25:29'),
('34dc50bae22e4ba7b3d89aaed57ed251','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:22:52'),
('3569b4a3c59341dfac1b5348cbaffe55','admin','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-19 11:02:25'),
('35a5e8bf7dfc478cb436815d4956e94e','d8a26cfffc7248f3b922e9812e734575','05b23faa-b771-4400-a27e-d156faa05455','2017-08-04 12:46:27'),
('3933d10d71634c5a92addaf5c5b67611','e60d4259ab2a4d87868bd6cf0c965d0f','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-19 17:02:54'),
('396ab7e55b99449a8076236c040bf13a','1a61e9b7339f4f089ef7c3f6291698b6','bbe59f47-c4fd-4817-8849-7149162c55e8','2017-07-14 18:08:36'),
('3b4411e34db445f1a70d26a18b4cd0db','e60d4259ab2a4d87868bd6cf0c965d00','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:31:52'),
('3c8dba68891248c7a8bef3243437094f','admin','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-19 11:03:20'),
('3d104bc6da084768b47681600d185464','1a61e9b7339f4f089ef7c3f6291698b6','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-08-08 14:24:53'),
('3d96eb28ae8543feb88444717e5a6248','e2ceda1c794f43adbcdf355356dcab05','05b23faa-b771-4400-a27e-d156faa05455','2017-07-25 18:52:21'),
('3f438da4636d46e0b0582a977433a752','092fa3795ee6446a80e47a571ddd6ff0','5875','2017-07-04 15:09:07'),
('408a4223177447d4a317834814c7b0c1','0b2043c2512144b1886d22730dac52a0','05b23faa-b771-4400-a27e-d156faa05455','2017-07-18 10:30:01'),
('422fd655247443108601ae660e42eaeb','0b2043c2512144b1886d22730dac52a0','bbe59f47-c4fd-4817-8849-7149162c55e8','2017-07-14 20:42:36'),
('42fb75de41e34309a15887b3026b13f3','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-11 14:11:45'),
('4351da74339f41948c6563b6ce9f8d87','4b17dbcd66ae43569892494f88d9674a','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-23 20:37:07'),
('46b6812dfc6041e6bb34179b3d9b9e12','e60d4259ab2a4d87868bd6cf0c965d0f','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-19 17:15:28'),
('46c5ab8c77cc4269bdca11e2da2bfebc','3691bc3411904cb9ae3455faafbe8ffe','7fed01bd-f4ca-4a89-8466-f0a7a3ac5051','2017-08-03 21:50:30'),
('476b22eb49274752aea1a3c4675ab7fe','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:14:01'),
('47acf10ce78f4419aaf8c70b2ec5c504','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:13:01'),
('48a0e01b550c4716938e235fa7bae1e1','f2f23ec74ef34dba849e7636aa11226c','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-08-08 17:50:07'),
('48b48b0de5a840ada896a33de5f021a1','d8a26cfffc7248f3b922e9812e734575','05b23faa-b771-4400-a27e-d156faa05455','2017-08-04 12:46:28'),
('48df20e1d1024fb5a69e5e2f6e2b94b5','eadab53147b84b9883cb595502b5bac7','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 16:29:33'),
('4961086bd1974ea586722aac6a262a6d','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-07-26 16:50:20'),
('4961e2425357411aa8154f5f78853185','e60d4259ab2a4d87868bd6cf0c965d00','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 16:19:06'),
('4cdfb9340f5943bf939d0448d00863a2','eadab53147b84b9883cb595502b5bac7','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 16:36:41'),
('4d04acd5d83c42e5a941ba09ee8a9894','154c5014943047ca9719313cd0eb2f26','1','2017-07-13 15:56:00'),
('4dd20078c1824c7c9a403f6612725089','1a61e9b7339f4f089ef7c3f6291698b6','05b23faa-b771-4400-a27e-d156faa05455','2017-08-08 14:19:13'),
('4e8da9fdea9b4ca2911d8934dc0c9591','092fa3795ee6446a80e47a571ddd6ff0','1','2017-07-04 15:49:58'),
('4e946bd0304b47d3a11809941080bebf','admin','e33166ac-8fdb-4296-a75c-32ba11b701d0','2017-08-09 10:52:56'),
('50b89dba5fad476281ec44e0af5126a6','092fa3795ee6446a80e47a571ddd6ff0','5875','2017-07-04 15:08:38'),
('511450ef378a4c1b9fc3d2d1fb1656e5','admin','9999','2017-07-08 17:09:32'),
('517c8eeb7af1443bb15c258758eff970','092fa3795ee6446a80e47a571ddd6ff0','47f48c15-e092-4bc9-97c3-369f1932a704','2017-07-25 11:09:55'),
('533da9eb470c4b31912fb37e23a5a8e5','e60d4259ab2a4d87868bd6cf0c965d00','4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc','2017-07-31 18:36:37'),
('534e0e70b38445a99e2b9309ceb5c974','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 17:10:27'),
('53842f0c23514dd5b1684a6dbb6b5377','admin','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-07-26 15:13:31'),
('5479d588137d413888c09274f2c39206','092fa3795ee6446a80e47a571ddd6ff0','5874','2017-07-04 15:50:15'),
('5599f9e3104348b5bed3c99bc6e7b1bc','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-08-10 11:10:41'),
('569c57a0398c4d049fd9fc634d0e2bda','107e509838074a07b783251de9d7bb1b','bbe59f47-c4fd-4817-8849-7149162c55e8','2017-07-14 18:52:28'),
('57b300029fcd4d31851a68f8e125cd33','e60d4259ab2a4d87868bd6cf0c965d00','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-27 11:32:06'),
('583d3425eb2f4440bc0e5b09fe899f55','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 18:28:00'),
('5c86e84000aa4951a817524a8ef93798','admin','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','2017-08-04 10:54:20'),
('5ca771fd6f06440088040bc327fe6838','154c5014943047ca9719313cd0eb2f26','5874','2017-07-13 15:56:09'),
('5e00a3cb97d9495fa9dd462efc8d7096','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:12:37'),
('5e1194c3b3a8465d83fe1e3fcf741607','0b2043c2512144b1886d22730dac52a0','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-16 10:36:33'),
('5e92545f866f4fd5866809babc373526','e60d4259ab2a4d87868bd6cf0c965d00','05b23faa-b771-4400-a27e-d156faa05455','2017-08-02 16:07:56'),
('5eadfdc2fa134edebf9a659ac5064fc1','d8a26cfffc7248f3b922e9812e734575','05b23faa-b771-4400-a27e-d156faa05455','2017-08-04 15:09:43'),
('5f5aa3acb5cc4c62ad2f33e11e2788da','3691bc3411904cb9ae3455faafbe8ffe','1fa4d900-4d98-4803-8f83-18a0889c34b2','2017-08-03 18:50:24'),
('5f5e3c107d684ff8a3707d49dee9a16e','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:13:48'),
('617a4745d6564a80a27d10b412837064','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 17:08:00'),
('62598da29b744d90bb8375569f038283','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 18:32:15'),
('6279c4ea10814751822a2bda7a84559c','admin','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-07-26 15:14:02'),
('63d907d81cf446d69e6d43a73b7157f6','4b8bc4e1d5d9472d891bcc3b3fc3c99a','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-11 17:22:40'),
('646660386e4047c2ae438e132f5dac8c','f2f23ec74ef34dba849e7636aa11226c','155d4f09-c2f4-4f48-8f82-cb8b4bb71a63','2017-08-08 19:57:23'),
('649191778ffe4b6790eb04d1822db320','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-07-19 11:07:07'),
('64e613eb8e524405bab563427394eae7','eadab53147b84b9883cb595502b5bac7','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 16:30:57'),
('65749eb586624a3bb4846fe780b76a13','464145fc778c4229804dd2a28bbabf32','bbe59f47-c4fd-4817-8849-7149162c55e8','2017-07-17 10:55:54'),
('673c1a29c5f14e1a87aa635319b1b323','1a61e9b7339f4f089ef7c3f6291698b6','05b23faa-b771-4400-a27e-d156faa05455','2017-08-09 09:08:34'),
('68283327b897484c99ed6b2b31718ab5','6962218c61ba41469320fb285f9f20d9','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:22:48'),
('68d1e31fb1d84ed48a78997e45f8159c','e60d4259ab2a4d87868bd6cf0c965d00','e68aea74-ad40-42ce-b962-68642048ba1d','2017-07-25 11:38:50'),
('691194b57e7e49068b931f0df8901b66','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-27 11:20:45'),
('6958d9acfe654019bb7f2079c7bb613c','e2ceda1c794f43adbcdf355356dcab05','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-25 18:50:31'),
('6978309109b34c11ae0ef9c8b700075e','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-27 11:24:43'),
('6a50d1e61e9b4077bad6a52eab1ec272','e60d4259ab2a4d87868bd6cf0c965d0f','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-19 17:11:16'),
('6c242648b1c44d26bbf98d9eaf6ffe5c','eadab53147b84b9883cb595502b5bac7','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:50:27'),
('6c3d0eaa84bf4f7eb4ef81a0e62fc25b','d8a26cfffc7248f3b922e9812e734575','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-08-04 12:44:06'),
('6c966ca95a8a464f9e4a9cd3a56c53e8','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:21:26'),
('6cf11eb16081402f8bafe1b31a523fcf','e60d4259ab2a4d87868bd6cf0c965d00','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-25 11:39:08'),
('6dbde9cca5614c528e2466c881b22dd7','092fa3795ee6446a80e47a571ddd6ff0','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-04 15:08:14'),
('6dbf3d38b84648a586ae8a532c642360','admin','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-28 17:05:14'),
('6f16028899174971a6afaa30da2d58eb','e60d4259ab2a4d87868bd6cf0c965d00','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-10 15:11:53'),
('7123e934f1674262949f37a901e28fa6','092fa3795ee6446a80e47a571ddd6ff0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-25 11:21:51'),
('7155ff3e04b543faa90608209d55b70d','7d0dc74cb6ac4c1ab13f27e8517c0aa7','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-07-26 17:19:01'),
('717cd939059c4de09a846dddfbd7a02f','0b2043c2512144b1886d22730dac52a0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-18 18:03:57'),
('71b49970c29846c88febc386d1aa4659','3691bc3411904cb9ae3455faafbe8ffe','05b23faa-b771-4400-a27e-d156faa05455','2017-07-19 18:10:56'),
('71cd1def4f16406d9a0f96d9f712582e','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-27 11:17:28'),
('723f880a7d654bafb96e6bfdfb69165e','e60d4259ab2a4d87868bd6cf0c965d00','4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc','2017-07-31 18:36:01'),
('728c6c991dff48238010d9f6d5e830b4','ea1f967878cf483987d534552b991758','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-13 10:59:45'),
('72b92fb8b2e54946909d72ee8f50036f','1a61e9b7339f4f089ef7c3f6291698b6','05b23faa-b771-4400-a27e-d156faa05455','2017-08-08 14:28:44'),
('72cc4de337c44c86a7407e16e2d2db60','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 18:40:07'),
('739ec55f99e54a2186f85e86c919ff4d','eadab53147b84b9883cb595502b5bac7','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:47:52'),
('743c6c16cb814fb5a9f8aacfefd5f5b2','e60d4259ab2a4d87868bd6cf0c965d00','05b23faa-b771-4400-a27e-d156faa05455','2017-07-31 18:04:24'),
('75c3f04aab24457189f42b0363e50cae','f2f23ec74ef34dba849e7636aa11226c','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-08 19:15:22'),
('7863f1f108ee46f2a5bbc20b01fcc2cf','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:25:56'),
('7a18483abe3b42f8869a4652cc25045a','092fa3795ee6446a80e47a571ddd6ff0','5874','2017-07-04 15:23:57'),
('7ac78fb60aed4b50a5c9cd7f5d504985','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:12:04'),
('7adebe175e974e069429f3a3f89caa89','admin','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-08-02 17:31:19'),
('7b09ffa528b74c8c937d040504362fbe','154c5014943047ca9719313cd0eb2f26','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-13 15:52:41'),
('7b548a1cb5ea4677b512910ec92b7cc9','2f273c1f25e648d08f62be259cc45093','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-07-21 16:28:15'),
('7d000f978b664712bb09f593a3b0531b','344550cf1c3a43d59f62f18f28845098','e715ef29-e892-4635-a0be-c028bf41b8d2','2017-07-20 11:52:33'),
('7d052d356636487ab280795d9ba95d8a','7d0dc74cb6ac4c1ab13f27e8517c0aa7','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-07-26 17:20:47'),
('7e13a78e95fd4735bf4d8e821744635f','e60d4259ab2a4d87868bd6cf0c965d00','05b23faa-b771-4400-a27e-d156faa05455','2017-07-31 18:04:40'),
('7e43b8f3c3cd4e77bae02178149f801a','e60d4259ab2a4d87868bd6cf0c965d00','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 16:10:56'),
('7f2eabf473ba45a1982f976d1624242b','092fa3795ee6446a80e47a571ddd6ff0','24ef8151-73d9-4ed3-a844-f7ae84f98bff','2017-07-04 15:24:18'),
('828723603a984d15ad1bc40e6cbe15f4','eadab53147b84b9883cb595502b5bac7','05b23faa-b771-4400-a27e-d156faa05455','2017-07-31 10:19:49'),
('83956fcf17c84d26a5affc5c07ce03f7','e60d4259ab2a4d87868bd6cf0c965d00','ceb79cd0-a389-4115-8546-67310d93cf14','2017-08-02 15:53:25'),
('83af7a6b634c421c97e4cf5d4b6ed770','e60d4259ab2a4d87868bd6cf0c965d00','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-25 11:39:27'),
('849c4fa6d4f3421a971cab937e0cc6be','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 17:54:36'),
('850e49b445074f63a230bb5593a329b1','83b49aa2cc2b4146a198ca5f1fde87cc','9999','2017-07-13 10:36:22'),
('85cbd8f6cb474b0fb9429508a0eac75a','1a61e9b7339f4f089ef7c3f6291698b6','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-26 17:20:01'),
('8724dc76388c4f38a18edae8ca991c92','107e509838074a07b783251de9d7bb1b','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:53:43'),
('87c70d3fe7304d429f213b2bd5d2a8e6','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 10:48:04'),
('88d86165bd9542048af74281a7a698d2','admin','9999','2017-07-03 19:19:11'),
('891b510a73324b4b98fc63fea171a99f','092fa3795ee6446a80e47a571ddd6ff0','9999','2017-07-04 15:09:41'),
('899cb7e68cbd435698b167e4d6bda4ad','e60d4259ab2a4d87868bd6cf0c965d00','155d4f09-c2f4-4f48-8f82-cb8b4bb71a63','2017-07-31 18:27:00'),
('8ae9b2036ae24c068f8849498379aa30','1a61e9b7339f4f089ef7c3f6291698b6','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-08-09 09:09:12'),
('8bb7050bada7434380d4b4758f82ad2a','092fa3795ee6446a80e47a571ddd6ff0','9999','2017-07-04 15:54:38'),
('8d58898643ba41ffa921d61c912dcb17','0b2043c2512144b1886d22730dac52a0','1ed90e16-847d-43de-9d5a-7d89571455e8','2017-07-18 17:46:19'),
('8e1b4c5255944af6ace95296773c5489','b8bac6f6cb544833ac69ed919e88e67d','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c','2017-08-11 18:42:56'),
('8f1f03037f64444ab28bfbde6c90b9e7','7d0dc74cb6ac4c1ab13f27e8517c0aa7','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-07-26 14:57:11'),
('8fa77d9e79f345f99c87f8a734bac9ab','e60d4259ab2a4d87868bd6cf0c965d00','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:32:43'),
('9060db78dff14d159fc036803aaf0497','464145fc778c4229804dd2a28bbabf32','aa43af8a-70bd-4b9d-aba8-347d5abb25de','2017-07-17 10:47:38'),
('9140cf939c944fcf9960b849ff8ca2a7','admin','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 18:28:50'),
('914ca91d0cd94ec9a6218cef34527628','80f2af0b7c7a443bb63c483ea3ec2723','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 18:06:02'),
('91522a011bff466ea15938e35291c2e1','2c5f974881b94c7c9811d25a500ec3eb','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:38:30'),
('91a43869741b400ab5c54fc42a74283b','10dc4599f55d4d5faffdb1e47393d48d','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 10:28:19'),
('92d57c6caf9a4e7e91e0d8494c87a6f5','092fa3795ee6446a80e47a571ddd6ff0','1','2017-07-04 15:50:37'),
('95ea46a89f744ee794a5d46096b8818e','0b2043c2512144b1886d22730dac52a0','4d81e88d-3021-4157-8d85-173ba6b142d9','2017-07-18 11:06:52'),
('961d88b82149424581de050fd4ff21a6','e60d4259ab2a4d87868bd6cf0c965d00','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 16:11:03'),
('969b8639aa0a468487dc8da4f4816b23','6962218c61ba41469320fb285f9f20d9','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:32:55'),
('96fa4491543d4af5b5fce43de20f8fd7','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-27 11:24:44'),
('974dd74fff194736a8c0a8f5a2c009f0','7d0dc74cb6ac4c1ab13f27e8517c0aa7','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-07-26 17:19:18'),
('97a092644ce04556a137f0a4a54d4c91','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-08-10 11:10:13'),
('97b320e5f3b34811acd9f5a7f5cc0233','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-27 11:26:57'),
('984a7b18a40a44089312190f79e8cc5b','80f2af0b7c7a443bb63c483ea3ec2723','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-04 20:50:58'),
('9a0d0c224533400ab3d7064434b96555','e60d4259ab2a4d87868bd6cf0c965d00','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-25 11:39:35'),
('9a2245820de64ea99e57387de516a767','7d0dc74cb6ac4c1ab13f27e8517c0aa7','05b23faa-b771-4400-a27e-d156faa05455','2017-07-26 15:14:20'),
('9b400afeed6748529f971fd212d0e1bf','admin','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','2017-08-04 10:57:40'),
('9c21bd6cd0d7417eac8ff6d2391bb09a','1a61e9b7339f4f089ef7c3f6291698b6','52f8a23f-5677-4b20-8364-5e170a83fe92','2017-07-19 10:58:16'),
('9ca5ab01c5414326aa36376e52feb661','4b8bc4e1d5d9472d891bcc3b3fc3c99a','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-08-11 17:24:17'),
('9d3710aa38394e7494ea8870c629f710','e60d4259ab2a4d87868bd6cf0c965d00','4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc','2017-07-31 18:36:36'),
('9d5fbaeb4f3043f08156bc027f73934a','2f273c1f25e648d08f62be259cc45093','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-07-21 16:28:16'),
('9dcc398466104cdabecc345118f010f3','eadab53147b84b9883cb595502b5bac7','1fa4d900-4d98-4803-8f83-18a0889c34b2','2017-07-31 18:47:38'),
('9ee29ce18c4147ed81f637add303bb25','3691bc3411904cb9ae3455faafbe8ffe','1fa4d900-4d98-4803-8f83-18a0889c34b2','2017-08-03 18:47:10'),
('9f05a677043648d3b6a95f39df4894c4','1a61e9b7339f4f089ef7c3f6291698b6','bbe59f47-c4fd-4817-8849-7149162c55e8','2017-07-14 18:09:12'),
('a00f2ef9a485428d8f93d359c4997c2c','7aec6c70d5b749e68c48c8dea2e9d773','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-10 20:17:13'),
('a17ac2366df74a589302db077e75ca8c','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 18:08:48'),
('a1e2d768214046e391c6a41321c3b402','6962218c61ba41469320fb285f9f20d9','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:29:57'),
('a2e0121d048f4f8da190ccd917cf3ec9','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 14:05:45'),
('a397430e340c47009cf5e71ebab738a1','4b8bc4e1d5d9472d891bcc3b3fc3c99a','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-07 14:17:51'),
('a41ad1557c764005bf95979c89c94e8a','e60d4259ab2a4d87868bd6cf0c965d00','9999','2017-07-10 15:12:24'),
('a5119a2727154432b8a16764b16e67b9','e60d4259ab2a4d87868bd6cf0c965d00','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 16:10:48'),
('a702aee26f7d47f7a6120e7f45f334e6','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 18:27:59'),
('a7494ac32d154fcd93466daae45d047d','092fa3795ee6446a80e47a571ddd6ff0','5876','2017-07-04 15:08:23'),
('a9a1f45b53404d63aefb5a028f5d8dd8','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-27 11:25:03'),
('aa2b310fb8f34ac3a3838fe0bbe09995','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 16:46:36'),
('ab8f315c2fb44a579ec9cb03137dff65','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 17:08:15'),
('ad6ad9d0cbcf4050bd57846e77e9b314','092fa3795ee6446a80e47a571ddd6ff0','24ef8151-73d9-4ed3-a844-f7ae84f98bff','2017-07-04 15:23:45'),
('ae5d766ce75c4611ad4ea9a986f9ecd6','092fa3795ee6446a80e47a571ddd6ff0','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-04 15:07:48'),
('aea66382706f407ca3d7dab770316d7c','107e509838074a07b783251de9d7bb1b','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 16:58:37'),
('aef18eabac2047abaddc78a9b1e00d56','admin','�ttp:','2017-08-04 10:54:22'),
('b04bf6023e8d4c819d6e1048496d8e8b','admin','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','2017-08-04 10:56:28'),
('b0a0cf9ae15f404e92a3def718b0106a','0b2043c2512144b1886d22730dac52a0','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 17:04:57'),
('b1aa6585f4564353b18a5fd026b2f85a','d8a26cfffc7248f3b922e9812e734575','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-18 11:02:56'),
('b233abd70b4c4be0bf2afdefc5ff036c','092fa3795ee6446a80e47a571ddd6ff0','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-04 15:12:46'),
('b259b3fa46a74643a1d3dbf83677da9e','admin','ceb79cd0-a389-4115-8546-67310d93cf14','2017-07-27 19:05:23'),
('b44d29c33d1d45f38d64146824eff2a7','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:11:17'),
('b4b35371e6cc4bc1acaa97a1c4021fb2','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:12:57'),
('b58cc3de69044ba29951bcd37a1e68ee','0b2043c2512144b1886d22730dac52a0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-18 17:50:29'),
('b59d12414dc340458cd4f77ce2187610','ea1f967878cf483987d534552b991758','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-13 09:56:21'),
('b719c461e7934930b4e0b59ac519a971','admin','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','2017-08-04 11:01:06'),
('b87ab3a0d2234ec49273caf259e08758','e60d4259ab2a4d87868bd6cf0c965d00','ceb79cd0-a389-4115-8546-67310d93cf14','2017-08-02 15:53:26'),
('b9c0c9a03566471aa13a26453fa4568e','0b2043c2512144b1886d22730dac52a0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-18 18:03:56'),
('bb326764a6da41a88e44190cffee05f0','1a61e9b7339f4f089ef7c3f6291698b6','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 18:31:10'),
('bee4b6e17f0b4c70a2b36b99efece9c6','admin','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-08 17:12:48'),
('bf06015747ad4991aa5b22fb2b0e8f7f','eadab53147b84b9883cb595502b5bac7','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 14:40:41'),
('bf5b800e30e8460a991a2eea0e8d2e04','e60d4259ab2a4d87868bd6cf0c965d00','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-10 15:12:33'),
('c0050c9f5a6d4f55a847625f16a1a6b1','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:19:55'),
('c0c1f98869a94ddf9439d5d92f23311b','7d0dc74cb6ac4c1ab13f27e8517c0aa7','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-26 15:06:02'),
('c11d989c3e2d4bf6b03e094fc8e978fe','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 16:47:52'),
('c1c97e448d5a43c0bb692213fffb0667','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-27 11:27:29'),
('c26afe9e6bfb4412a959f06b50e2860f','admin','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','2017-08-04 11:00:25'),
('c301089faefa455ca4801dfaa4694fbd','eadab53147b84b9883cb595502b5bac7','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 16:31:00'),
('c39b76b8852d42ea81a9b6c66e93883d','80f2af0b7c7a443bb63c483ea3ec2723','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-08-02 18:41:16'),
('c3eb474e073a4cd5a3c6031308659e2a','7d0dc74cb6ac4c1ab13f27e8517c0aa7','ceb79cd0-a389-4115-8546-67310d93cf14','2017-07-26 17:33:34'),
('c485b6daa5ca4c6d9059a401d1653e80','admin','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 18:28:51'),
('c4a1b81dc90a47cbbc2a30e3e7b13050','4b8bc4e1d5d9472d891bcc3b3fc3c99a','05b23faa-b771-4400-a27e-d156faa05455','2017-08-07 16:01:28'),
('c50abc47046f48d18ca46f17d8481d7a','80f2af0b7c7a443bb63c483ea3ec2723','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-08-02 18:42:19'),
('c54a8120177a4f828008b2a7243982f6','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-26 17:17:17'),
('c7338caea75a4cb48a6366228de3f0b0','092fa3795ee6446a80e47a571ddd6ff0','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-04 15:08:05'),
('c78cd0fc860742589a0ded2260f577db','6962218c61ba41469320fb285f9f20d9','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:24:39'),
('c79a9f92a885474fb694701793518b00','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-08-04 11:05:28'),
('c8c0e7c719c0453e9129305ff3fb8bd7','0b2043c2512144b1886d22730dac52a0','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-18 10:40:19'),
('cae889d1acf741599332fd43a4a085b2','e60d4259ab2a4d87868bd6cf0c965d0f','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:25:10'),
('cb4c26277c0e482cbbe0367854ae84f7','1a61e9b7339f4f089ef7c3f6291698b6','05b23faa-b771-4400-a27e-d156faa05455','2017-08-08 14:20:38'),
('cb56dfda6dc845e6a5dd1ff78c2d7b53','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 10:26:11'),
('cc66e2e1fac2443e872e16758c198d8c','3b378b06f5214388a70c65176e7ee490','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-19 12:49:28'),
('cd1185eed33448459c0e51948b39cb49','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:13:00'),
('cdaab5779650402bb18f8272c25ff9b2','admin','9999','2017-07-08 17:13:51'),
('cfebb78929694ab78e18fc69ed3ed461','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 10:26:08'),
('d01ed047fe724e66bfa3bea6ddc22ed6','e2ceda1c794f43adbcdf355356dcab05','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-25 18:49:25'),
('d0835752b7384c688cf7e3d1a2081e3e','1a61e9b7339f4f089ef7c3f6291698b6','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 18:31:03'),
('d0ffd49f51034808b6e1a2e396081f8a','130efc8f53e54e5a86b71c25de1fadb1','bbe59f47-c4fd-4817-8849-7149162c55e8','2017-07-16 16:26:03'),
('d29ea70cc0b740a79779cd719b48212f','0b2043c2512144b1886d22730dac52a0','9c2546ac-386d-4b45-bd90-a06c20ad82e4','2017-07-18 18:00:37'),
('d2ab66198ff34c75bf8e7086ef2f4aa6','eadab53147b84b9883cb595502b5bac7','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 16:31:23'),
('d321aa3f1119481fb96b75e1886e300e','130efc8f53e54e5a86b71c25de1fadb1','bbe59f47-c4fd-4817-8849-7149162c55e8','2017-07-16 16:21:49'),
('d367e42621ae41dc8f4b112190d35bb7','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:20:04'),
('d3f0f065b50f49eead32336122fca2ff','092fa3795ee6446a80e47a571ddd6ff0','1','2017-07-04 15:23:53'),
('d62d8834acad4bc5bf1f6edab9458913','107e509838074a07b783251de9d7bb1b','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 16:56:49'),
('d71b9acc74af4765acaf7e3e75bc61ee','e60d4259ab2a4d87868bd6cf0c965d00','05b23faa-b771-4400-a27e-d156faa05455','2017-07-25 11:38:27'),
('d75b564dcace47e59f4a5ca5722949df','0b2043c2512144b1886d22730dac52a0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-18 17:58:52'),
('d7ddae08cdf4420d98ebc3af7d96aefe','6962218c61ba41469320fb285f9f20d9','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:24:49'),
('d9221e36f822478da9e757252ee4ffcb','2c5f974881b94c7c9811d25a500ec3eb','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:04:34'),
('d9d383d46ba84cbea02d69dba33360e0','e60d4259ab2a4d87868bd6cf0c965d00','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:40:30'),
('db3c105c739b4f82bde2548fe41685dc','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-08-10 11:10:20'),
('dc99031337b6463e9748892a55695998','e60d4259ab2a4d87868bd6cf0c965d00','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-25 11:38:16'),
('dded244a013849b9994551ee781fe885','admin','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','2017-08-04 10:57:47'),
('def5015292134b16afa73b9ce44c9597','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:14:53'),
('dfe01c3ccbc7461db6285a79e1b80dd7','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-26 17:16:52'),
('dfe40db937a14c3f911eb3f4a1591068','2c5f974881b94c7c9811d25a500ec3eb','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:29:46'),
('e06dd4e7adef4444979dcd08bdf3a25d','80f2af0b7c7a443bb63c483ea3ec2723','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 18:00:24'),
('e214190d58064487b75408978b6b84ab','7d0dc74cb6ac4c1ab13f27e8517c0aa7','ceb79cd0-a389-4115-8546-67310d93cf14','2017-07-26 17:33:28'),
('e2a5d9ceffa347e490a6a119a6237808','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 10:08:21'),
('e300d93aa19f4962880eed81c164b103','7d0dc74cb6ac4c1ab13f27e8517c0aa7','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-07-26 17:22:24'),
('e3ccf774f1e04f0e9c7a9076ed63ab98','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 18:33:04'),
('e46e716a48cc470082a3d8d0a9196605','092fa3795ee6446a80e47a571ddd6ff0','24ef8151-73d9-4ed3-a844-f7ae84f98bff','2017-07-04 15:23:59'),
('e7687bafb03948e181f53d3d45bc7ca3','1a61e9b7339f4f089ef7c3f6291698b6','52f8a23f-5677-4b20-8364-5e170a83fe92','2017-07-19 10:58:17'),
('e7ef0ec498864b4ca657d427c9334799','admin','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-07-26 15:10:06'),
('e94028ccdfa041b7840b045018891e35','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:11:26'),
('e97113630dd5424a9266fd83802f651d','154c5014943047ca9719313cd0eb2f26','5874','2017-07-13 19:19:31'),
('e9c069307f6f44a6a985287a83a4b13d','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-26 17:17:33'),
('ea01a238d77d42d790fead754be0742b','80f2af0b7c7a443bb63c483ea3ec2723','ceb79cd0-a389-4115-8546-67310d93cf14','2017-08-08 19:37:29'),
('ea4e8c4824844667be30d2aa52f9c346','092fa3795ee6446a80e47a571ddd6ff0','bc32ce65-041a-4421-b73e-b009657ffa9b','2017-07-04 15:08:15'),
('ea5887604e5f4e8989aadc5074f7b782','e60d4259ab2a4d87868bd6cf0c965d00','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-31 18:42:36'),
('eb00b9a605e4443e84f1f263ea4e45b3','eadab53147b84b9883cb595502b5bac7','3a626ae5-1e86-4b48-8d7d-464d544d6abb','2017-07-31 18:47:46'),
('eba5ffbbd78d418ca876844cf7d9fc69','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 17:24:09'),
('ebb8b41b80444a4b99c18bbcd479cf1c','0b2043c2512144b1886d22730dac52a0','4d81e88d-3021-4157-8d85-173ba6b142d9','2017-07-18 10:30:34'),
('ebf3205258b54f77a5e4afc8f65d5c9e','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 17:22:02'),
('edca2a8cebc0427fbad40905a4b7ba32','eadab53147b84b9883cb595502b5bac7','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-28 16:27:56'),
('ef837135298e453f983f0dd087f4f35f','e60d4259ab2a4d87868bd6cf0c965d0f','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:31:28'),
('f02464fdb8124e169aab62f839edca17','092fa3795ee6446a80e47a571ddd6ff0','1','2017-07-04 15:24:22'),
('f0b41975128144f0bd38d50ba70e47cf','464145fc778c4229804dd2a28bbabf32','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-17 10:34:41'),
('f0d0eb1a24e94dacbaf55311810cecd3','0b2043c2512144b1886d22730dac52a0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-18 17:46:28'),
('f204bfcb8c1745eca58a71c6ba637269','0b2043c2512144b1886d22730dac52a0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-18 10:27:39'),
('f2b208edd2094b3aa0c3abcb18cc2b34','e60d4259ab2a4d87868bd6cf0c965d00','256450cc-26ef-4585-9083-e9f1dd572fec','2017-07-31 18:39:59'),
('f32f32feb0a7412eb1e615e8a9891c68','admin','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-08 17:12:54'),
('f495a69e9e574d5aa3c49ee7b5208dc2','7d0dc74cb6ac4c1ab13f27e8517c0aa7','075e1340-a3c7-4fba-adea-bf40f9e0737d','2017-07-26 17:17:55'),
('f58b5dbcef88442382329fc52871051f','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:26:25'),
('f5d9fd537c9f4801b251f794400ee2f6','d8a26cfffc7248f3b922e9812e734575','256450cc-26ef-4585-9083-e9f1dd572fec','2017-08-04 10:01:10'),
('f611d136d4314443be2cbb7f8a14adfa','83b49aa2cc2b4146a198ca5f1fde87cc','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-13 10:36:43'),
('f6a535806e0543b697c28d255b933d01','1a61e9b7339f4f089ef7c3f6291698b6','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:58:12'),
('f7ecb9a5a12a4619ab78ccb35ea4d8eb','1a61e9b7339f4f089ef7c3f6291698b6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2017-08-07 18:13:28'),
('f8dfb89e00af4861b1ea12df1c1f42c6','0b2043c2512144b1886d22730dac52a0','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-18 18:03:55'),
('f8ec5d07f25e44529764cd5f89a67789','e60d4259ab2a4d87868bd6cf0c965d00','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2017-07-27 11:26:43'),
('f9ef0366c5ab47acb1db59177d894784','2c5f974881b94c7c9811d25a500ec3eb','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-14 15:02:37'),
('fa8e05239c2b42c4a3408e88bd723cdc','e2ceda1c794f43adbcdf355356dcab05','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-07-23 17:20:45'),
('fb4f6dd028194248904efd5142e46202','0b2043c2512144b1886d22730dac52a0','47f48c15-e092-4bc9-97c3-369f1932a704','2017-07-18 18:00:51'),
('fc9c8518476e4c4b9ab09c1664dbb5df','83b49aa2cc2b4146a198ca5f1fde87cc','a93cde36-1e4b-4f69-b01f-7026c7102656','2017-07-13 10:35:46'),
('fca77945db3344c88d582f5ca301d679','d8a26cfffc7248f3b922e9812e734575','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-07-18 11:03:31'),
('fdb1777ac1614bf1bbdfb6c4f815165c','admin','05b23faa-b771-4400-a27e-d156faa05455','2017-07-28 18:33:05'),
('ff0c6a59a1b84fd495e0a2f0352fe1ba','1a61e9b7339f4f089ef7c3f6291698b6','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2017-08-11 14:17:14'),
('ff27e79966c549e0b9921bbf820d79a8','0b2043c2512144b1886d22730dac52a0','4d81e88d-3021-4157-8d85-173ba6b142d9','2017-07-17 17:28:39');

/*Table structure for table `goods_meublebasic` */

DROP TABLE IF EXISTS `goods_meublebasic`;

CREATE TABLE `goods_meublebasic` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `meubleName` varchar(220) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `minPrice` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品最小价格',
  `maxPrice` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品最大价格',
  `meubleReferred` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '商品别名（简称）',
  `meubleCoter` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '厂家产品编号（厂家的产品编号）',
  `meubleRecommander` text COLLATE utf8_bin COMMENT '商品介绍',
  `meubleParameter` text COLLATE utf8_bin COMMENT '产品参数',
  `meubleImage` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '商品默认图片',
  `isNotEms` tinyint(4) DEFAULT '0' COMMENT '是否免费邮费(包邮)（1:是  2:不是）',
  `ManufacturerId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联厂家ID',
  `isNotPreface` tinyint(4) DEFAULT '2' COMMENT '是否推荐（1:是 2:不推荐）',
  `isNotNew` tinyint(4) DEFAULT '2' COMMENT '是否新品（1:是 2:不是）',
  `isNotTeJia` tinyint(4) DEFAULT '2' COMMENT '是否特价（1:是 2:不是）',
  `isNotActif` tinyint(4) DEFAULT '2' COMMENT '是否活动（1:是 2:不是）',
  `isNotManJian` tinyint(4) DEFAULT '2' COMMENT '是否参与满减优惠（1:是 2:不是）',
  `isNotDiKou` tinyint(4) DEFAULT '2' COMMENT '是否参与抵扣优惠（1:是 2:不是）',
  `faitNumber` bigint(15) DEFAULT '0' COMMENT '实际销售量',
  `imaginerNumber` bigint(15) DEFAULT '0' COMMENT '虚拟销售量',
  `produitChaque` bigint(20) DEFAULT '0' COMMENT '商品浏览量',
  `environType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '上下架状态（1:下架 2:上架）',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `expirationStartTime` datetime DEFAULT NULL COMMENT '活动、特价到期 开始时间',
  `expirationOverTime` datetime DEFAULT NULL COMMENT '活动、特价到期 结束时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '产品编号（后台自动生成）',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='家具商品基础信息表';

/*Data for the table `goods_meublebasic` */

insert  into `goods_meublebasic`(`id`,`meubleName`,`minPrice`,`maxPrice`,`meubleReferred`,`meubleCoter`,`meubleRecommander`,`meubleParameter`,`meubleImage`,`isNotEms`,`ManufacturerId`,`isNotPreface`,`isNotNew`,`isNotTeJia`,`isNotActif`,`isNotManJian`,`isNotDiKou`,`faitNumber`,`imaginerNumber`,`produitChaque`,`environType`,`addTime`,`expirationStartTime`,`expirationOverTime`,`reserve1`,`reserve2`) values 
('05b23faa-b771-4400-a27e-d156faa05455','双面使用设计 1.5米床垫',1290.00,1290.00,'双面使用设计 1.5米床垫','YLL-XFSG-15CD','<img src=\"http://qiniuti.7secai.cn/20170717143741_590.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717143741_998.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717143742_353.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717143742_913.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717143743_205.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717143743_833.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717143744_380.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155317_461.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155318_633.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155320_214.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155321_842.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170717143910_840.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143320_568.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,199,0,2,'2017-07-17 14:39:11',NULL,NULL,'CX149',NULL),
('075e1340-a3c7-4fba-adea-bf40f9e0737d','时尚简约玻璃喷黑油三斗柜',1160.00,1160.00,'时尚简约玻璃喷黑油三斗柜','HF-DG045-3DG','<img src=\"http://qiniuti.7secai.cn/20170721110954_531.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721110955_504.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721110955_240.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721110956_192.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721110956_818.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721110956_220.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721110957_882.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151203_118.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151203_261.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151205_33.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151206_303.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721111010_360.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145648_605.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,201,0,2,'2017-07-21 11:10:18',NULL,NULL,'DX930',NULL),
('09ab1f2a-9af8-44c3-99d6-db52881bde7c','小户型餐桌折叠饭桌',1180.00,1180.00,'小户型餐桌折叠饭桌','M14002-RC','<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170721152921_337.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721152921_619.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721152922_762.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721152922_920.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721152922_169.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721152923_153.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721152923_785.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721153055_352.png\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151036_771.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151037_750.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151039_389.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151040_40.jpg\" alt=\"\" /> \r\n</p>','<img src=\"http://qiniuti.7secai.cn/20170721153038_692.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145842_695.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,122,0,2,'2017-07-21 15:30:59',NULL,NULL,'CX729',NULL),
('0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','美国进口白杨木 1.5米地中海',1799.00,1799.00,'美国进口白杨木 1.5米地中海','CM-341-15C','<img src=\"http://qiniuti.7secai.cn/20170718105835_52.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718105836_119.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718105836_478.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718105837_177.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718105837_851.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718105837_167.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718105838_341.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718105838_510.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155038_48.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155038_562.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155040_348.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155042_59.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170718092605_405.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143830_823.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,2,2,1,1,1,0,322,0,2,'2017-07-18 09:26:07','2017-08-10 00:00:00','2017-08-31 00:00:00','CO187',NULL),
('155d4f09-c2f4-4f48-8f82-cb8b4bb71a63','韩式风格书椅 软包布艺坐垫',735.00,735.00,'韩式风格书椅 软包布艺坐垫','JHT-825-SY','<img src=\"http://qiniuti.7secai.cn/20170723163342_228.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723163344_208.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723163345_859.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150154_720.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150155_754.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150157_863.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150158_10.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170723163356_472.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150935_811.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,224,0,2,'2017-07-23 16:33:57',NULL,NULL,'SX786',NULL),
('1c8f9782-1d44-4b23-a55b-4bd4c8af1cf8','书柜橱组 展示架简约置物架',1066.00,1066.00,'书柜橱组 展示架简约置物架','M555-5-X255C-WHT','<img src=\"http://qiniuti.7secai.cn/20170722182912_516.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722182912_901.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722182912_93.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722182913_937.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722182913_639.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722182913_663.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150537_146.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150538_302.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150540_77.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150541_275.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170722182923_322.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150433_508.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,235,0,2,'2017-07-22 18:29:25',NULL,NULL,'SX293',NULL),
('1ed90e16-847d-43de-9d5a-7d89571455e8','时尚潮流卧室梳妆台组合',1160.00,1160.00,'时尚潮流卧室梳妆台组合','GD-C001','<img src=\"http://qiniuti.7secai.cn/20170718154318_603.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154318_26.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154318_183.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154319_911.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154319_139.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154319_111.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154320_804.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154320_293.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154321_238.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718154321_868.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153442_545.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153443_938.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153445_642.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153446_401.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170718154347_26.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143932_98.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,233,0,2,'2017-07-18 15:43:51',NULL,NULL,'SX808',NULL),
('1fa4d900-4d98-4803-8f83-18a0889c34b2','黑色钢化玻璃 现代风格茶几',1470.00,1470.00,'黑色钢化玻璃 现代风格茶几','HF-C045-13CJ','<img src=\"http://qiniuti.7secai.cn/20170719153915_978.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719153915_383.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719153915_594.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719153916_15.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719153916_503.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719153917_792.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719153917_252.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719153918_676.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719153918_988.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811160744_515.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811160745_400.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811160746_238.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811160747_194.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719153927_278.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144406_819.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,1,2,2,2,0,102,0,2,'2017-07-19 15:39:31','2017-08-10 00:00:00','2017-08-31 00:00:00','CX189',NULL),
('22d7ce2c-21f5-4555-b24c-8b21a6db45a7','实木多功能烤漆玄关进门收纳柜',1690.00,1690.00,'实木多功能烤漆玄关进门收纳柜','F827XG','<img src=\"http://qiniuti.7secai.cn/20170720161628_403.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161628_924.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161629_342.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161629_796.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161630_38.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161630_594.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161630_681.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161631_205.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161631_431.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720161631_206.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151812_288.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151813_264.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151815_576.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151816_152.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720161724_133.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145301_133.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,122,0,2,'2017-07-20 16:17:27',NULL,NULL,'XX730',NULL),
('246cb90e-7731-496b-a3bb-926f6d500e4a','进口芬兰松木小书桌组合',1785.00,1785.00,'进口芬兰松木小书桌组合','HSJ-6303#-SZZH','<img src=\"http://qiniuti.7secai.cn/20170724151328_172.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724151328_393.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724151329_932.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724151329_752.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724151330_379.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724151330_713.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145433_557.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145434_412.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145436_793.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145437_885.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724151338_158.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151447_313.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,300,0,2,'2017-07-24 15:13:39',NULL,NULL,'EX842',NULL),
('247a8ae8-8829-49ea-9c09-19702a09bcf0','宜家大容量储物收纳抽屉柜',930.00,930.00,'宜家大容量储物收纳抽屉柜','M13U129-MHG','<img src=\"http://qiniuti.7secai.cn/20170721102604_529.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721102604_52.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721102605_468.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721102605_75.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721102605_971.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721102605_218.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721102606_115.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151254_547.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151255_698.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151256_898.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151258_677.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721102615_481.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145633_617.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,191,0,2,'2017-07-21 10:26:16',NULL,NULL,'DX172',NULL),
('256450cc-26ef-4585-9083-e9f1dd572fec','光滑凹槽拉手 现代风格折叠餐桌',2163.00,2163.00,'光滑凹槽拉手 现代风格折叠餐桌','HF-T122-CZ','<img src=\"http://qiniuti.7secai.cn/20170721155832_88.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721155832_191.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721155833_478.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721155833_751.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721155833_152.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721155834_75.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721155834_863.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151009_201.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151010_547.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151011_799.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151013_792.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721155849_865.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145913_667.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,188,0,2,'2017-07-21 15:58:50',NULL,NULL,'CX308',NULL),
('2c56e0f8-9ae8-430d-9d0d-091e8dd1e838','靠背雕花镂空 木书椅 妆椅',1059.00,1059.00,'靠背雕花镂空 木书椅 妆椅','MX-SY06-187Q-SY','<img src=\"http://qiniuti.7secai.cn/20170723170858_847.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723170859_211.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723170900_584.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723170902_460.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723170904_537.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150025_725.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150027_697.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150028_127.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150029_412.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170723170919_518.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151012_544.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,222,0,2,'2017-07-23 17:09:21',NULL,NULL,'',NULL),
('30be5535-56fa-4740-b868-4321eb186263','现代门厅鞋柜翻斗鞋柜大容量鞋柜',1529.00,1529.00,'现代门厅鞋柜翻斗鞋柜大容量鞋柜','WI910','<img src=\"http://qiniuti.7secai.cn/20170720170505_392.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720170505_91.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720170506_133.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720170506_757.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720170506_664.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720170507_339.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720170507_778.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720170507_517.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151456_130.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151458_731.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151459_891.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151501_318.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720170516_864.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145415_772.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,128,0,2,'2017-07-20 17:05:17',NULL,NULL,'XX797',NULL),
('3a626ae5-1e86-4b48-8d7d-464d544d6abb','透气绒布面料 现代风格贵妃沙发',1539.00,1539.00,'透气绒布面料 现代风格贵妃沙发','MR-RK06#-GFSF','<img src=\"http://qiniuti.7secai.cn/20170718165447_665.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165448_21.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165448_203.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165449_591.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165449_340.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165449_884.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165450_122.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165450_730.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165451_897.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165451_695.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165451_346.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718165452_797.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153409_262.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153410_270.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153412_459.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153413_696.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170718165614_192.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144003_381.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,124,0,2,'2017-07-18 16:56:17',NULL,NULL,'SX505',NULL),
('40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1','现代风格 时尚多用六层装饰柜',610.00,610.00,'现代风格 时尚多用六层装饰柜','M7ER-7SX2-WHT','<img src=\"http://qiniuti.7secai.cn/20170720110837_445.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720110837_658.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720110837_492.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720110838_478.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720110838_660.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720110839_87.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720110839_971.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152145_130.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152146_924.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152147_991.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152149_672.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720110850_86.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144922_382.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,99,0,2,'2017-07-20 11:08:53',NULL,NULL,'JX422',NULL),
('47f48c15-e092-4bc9-97c3-369f1932a704','中式四门平开衣柜',2440.00,2440.00,'中式四门平开衣柜','DDX-DFB502-4MYG','<img src=\"http://qiniuti.7secai.cn/20170811154855_512.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154857_434.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154857_611.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154859_547.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154900_38.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154902_988.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154904_466.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154906_66.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154907_578.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154909_964.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811154910_102.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170718095925_985.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143903_883.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,65,0,2,'2017-07-18 09:59:28',NULL,NULL,'YT576',NULL),
('49fb056f-7966-4323-b688-160fc119bd52','白色迷你茶几 欧式荷花白描金',1258.00,1258.00,'白色迷你茶几 欧式荷花白描金','F729','<img src=\"http://qiniuti.7secai.cn/20170719142120_608.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719142121_59.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719142121_178.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719142123_31.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719142125_837.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719142127_831.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719142129_828.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719142131_937.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152955_53.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152956_921.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152957_997.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152959_779.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719142227_395.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144320_599.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,1,1,1,0,109,0,2,'2017-07-19 14:22:30','2017-08-10 00:00:00','2017-08-31 00:00:00','CX537',NULL),
('4b67e210-b432-418b-a63b-443d00948522','客厅小户型原木色储物电视柜家具',1957.00,1957.00,'客厅小户型原木色储物电视柜家具','D029','<img src=\"http://qiniuti.7secai.cn/20170720101144_709.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720101144_728.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720101144_598.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720101145_353.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720101145_813.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720101146_887.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720101146_524.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152357_368.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152358_793.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152359_697.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152401_277.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720101158_715.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144725_618.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,96,0,2,'2017-07-20 10:11:59',NULL,NULL,'DX649',NULL),
('4d81e88d-3021-4157-8d85-173ba6b142d9','天然原木 中式风格1.5米双人床',1480.00,1480.00,'天然原木 中式风格1.5米双人床','DDX-DFB118-15C','<img src=\"http://qiniuti.7secai.cn/20170717112809_604.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717112810_109.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717112810_311.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717112811_356.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717112811_736.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717112812_887.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717112812_189.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170717112956_675.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143601_423.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,2,321,0,2,'2017-07-17 11:30:35',NULL,NULL,'CT229',NULL),
('4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc','结构坚固 古朴大气中式书椅转椅',999.00,999.00,'结构坚固 古朴大气中式书椅转椅','JHT-S9301-SY','<img src=\"http://qiniuti.7secai.cn/20170723160737_978.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150236_42.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150237_172.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150239_770.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150240_900.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170723161030_17.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150838_29.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,99,0,2,'2017-07-23 16:10:31',NULL,NULL,'SX951',NULL),
('4fd6f502-b89a-48aa-9beb-b36b3f95318f','独特设计多功能用途装饰架',846.00,846.00,'独特设计多功能用途装饰架','M29258-WHT','<img src=\"http://qiniuti.7secai.cn/20170720115105_250.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720115105_539.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720115105_234.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720115106_776.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152035_787.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152036_534.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152038_886.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152039_971.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720115115_436.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145016_780.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,146,0,2,'2017-07-20 11:51:15',NULL,NULL,'JX297',NULL),
('52f8a23f-5677-4b20-8364-5e170a83fe92','客厅公寓三人位拆洗布艺沙发',1786.00,1786.00,'客厅公寓三人位拆洗布艺沙发','JO-055C','<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170719104055_909.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170719104056_171.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170719104057_496.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104058_524.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104058_760.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104059_167.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104100_318.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104101_69.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104102_767.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104102_410.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104103_305.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719104103_62.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153147_696.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153148_356.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153149_739.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153151_13.jpg\" alt=\"\" /> \r\n</p>','<img src=\"http://qiniuti.7secai.cn/20170719104141_387.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144145_731.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,1,2,2,2,0,228,0,2,'2017-07-19 10:41:49','2017-08-10 00:00:00','2017-08-31 00:00:00','SX907',NULL),
('5829c0a5-06e4-43ef-80b6-37089d706b10','现代风格 书房家具 环保展示架',810.00,810.00,'现代风格 书房家具 环保展示架','M27091-WW','<img src=\"http://qiniuti.7secai.cn/20170723112731_143.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723112732_730.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723112732_714.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723112732_256.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723112733_990.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150429_493.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150430_738.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150433_307.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150434_107.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170723112740_793.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150723_917.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,220,0,2,'2017-07-23 11:27:41',NULL,NULL,'',NULL),
('5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c','立体锦簇雕花 欧式风格3RZGF',7169.00,7169.00,'立体锦簇雕花 欧式风格3RZGF','NDW-ND889-1R','<img src=\"http://qiniuti.7secai.cn/20170719112912_627.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719112913_820.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719112913_343.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719112913_81.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719112914_671.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719112914_630.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153056_985.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153057_921.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153059_332.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153100_417.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719113020_916.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144230_985.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,1,1,1,0,116,0,2,'2017-07-19 11:30:36','2017-08-10 00:00:00','2017-08-31 00:00:00','SX318',NULL),
('636b4a1f-603e-41a9-8472-2c59459b2cd9','地中海潮流风格无扶手餐椅',474.00,474.00,'地中海潮流风格无扶手餐椅','HS-341A-CY','<img src=\"http://qiniuti.7secai.cn/20170724175421_522.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175421_288.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175421_360.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175422_14.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175423_795.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175423_741.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175423_92.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175424_918.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175424_534.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175424_842.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175425_220.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724175425_385.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141822_690.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141823_331.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141824_545.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141826_422.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724175714_139.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151729_59.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,300,0,2,'2017-07-24 17:57:16',NULL,NULL,'CX821',NULL),
('64346f65-0850-4a5b-bc4e-4fd1ef1105f7','1.8米皇室宫廷欧式双人床',3650.00,3650.00,'1.8米皇室宫廷欧式双人床','KSHT-A011-18C','<img src=\"http://qiniuti.7secai.cn/20170714171002_904.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171003_620.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171003_309.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171004_709.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171004_28.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171005_499.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171005_102.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171006_566.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171007_109.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171007_169.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171007_974.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714171008_613.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155742_707.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155743_723.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155745_137.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155746_761.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170714164222_881.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143409_251.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,1,2,2,2,13,140,0,2,'2017-07-14 15:01:46','2017-08-10 00:00:00','2017-08-31 00:00:00','CO865',NULL),
('648fb5b4-2438-4956-b265-c5051855d649','韩式时尚潮流风格 舒适转椅',732.00,732.00,'韩式时尚潮流风格 舒适转椅','HQRC-HE904-SY','<img src=\"http://qiniuti.7secai.cn/20170723115507_733.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723115508_939.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723115509_744.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723115510_250.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150331_812.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150332_735.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150333_636.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150334_216.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170723115523_76.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150805_856.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,201,0,2,'2017-07-23 11:55:24',NULL,NULL,'SX884',NULL),
('64e8cb63-0a26-46d2-81af-6cea9e8c5de8','北欧风格鞋柜 客厅鞋柜',1999.00,1999.00,'北欧风格鞋柜 客厅鞋柜','JW-BO-XG','<img src=\"http://qiniuti.7secai.cn/20170720164359_614.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720164359_679.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720164359_147.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720164400_241.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720164400_86.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720164400_23.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151628_713.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151629_942.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151631_152.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151632_184.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720164410_947.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145341_429.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,120,0,2,'2017-07-20 16:44:12',NULL,NULL,'XX825',NULL),
('65ec5ae9-2de3-4978-abd3-372151d799da','韩式儿童写字台学习桌田园家用',1906.00,1906.00,'韩式儿童写字台学习桌田园家用','QF-H801-ZJST','<img src=\"http://qiniuti.7secai.cn/20170721180918_246.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721180919_260.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721180919_982.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721180920_199.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721180920_552.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721180921_284.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150728_303.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150729_791.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150730_484.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150732_665.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721180934_976.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150308_787.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,0,0,2,'2017-07-21 18:09:34',NULL,NULL,'EX700',NULL),
('66df33bc-d169-45aa-addc-230700b893bf','现代风格1.5米双层儿童床',4305.00,4305.00,'现代风格1.5米双层儿童床','HSJ-6202#-15C','<img src=\"http://qiniuti.7secai.cn/20170724170414_342.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724170414_644.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724170414_752.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724170415_644.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724170415_34.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724170416_623.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141857_454.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141857_703.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141859_718.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141900_625.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724170425_622.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151656_229.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,64,0,2,'2017-07-24 17:04:27',NULL,NULL,'',NULL),
('6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','手工实木雕花 欧式风格无扶手餐椅',1135.00,1135.00,'手工实木雕花 欧式风格无扶手餐椅','ML-FSCY-666','<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170725140102_512.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725140103_653.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725140104_987.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725140105_495.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725140106_529.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725140109_228.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725140320_689.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725140332_737.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170811140945_534.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811140946_756.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811140948_972.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811140949_689.jpg\" alt=\"\" /> \r\n</p>','<img src=\"http://qiniuti.7secai.cn/20170725140344_510.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151913_190.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,2,2,0,56,0,2,'2017-07-25 14:03:46','2017-07-31 00:00:00','2017-08-31 00:00:00','CX969',NULL),
('76161742-cfa2-4b8d-af4c-4501617fe499','个性功能分区 地中海定制转角衣柜',799.00,799.00,'个性功能分区 地中海定制转角衣柜','HL-C341-02-YMYG','<img src=\"http://qiniuti.7secai.cn/20170718113144_129.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113144_872.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113145_313.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113145_33.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113145_542.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113146_849.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113146_977.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113146_571.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113147_759.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113147_629.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113147_307.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718113148_177.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170718113316_492.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170718112959_37.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,402,0,1,'2017-07-18 11:33:21',NULL,NULL,'YO155',NULL),
('7fed01bd-f4ca-4a89-8466-f0a7a3ac5051','黑水晶灰镜 现代风格电视柜',1533.00,1533.00,'黑水晶灰镜 现代风格电视柜','HF-D045-DSG','<img src=\"http://qiniuti.7secai.cn/20170719173258_838.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719173259_891.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719173259_400.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719173300_408.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719173300_16.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719173301_75.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152712_385.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152713_770.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152715_783.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152716_117.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719173308_428.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144526_360.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,102,0,2,'2017-07-19 17:33:09',NULL,NULL,'DX839',NULL),
('8a756d88-2457-4888-9c7c-174e22a90c08','大理石电视柜 客厅地柜',2575.00,2575.00,'大理石电视柜 客厅地柜','C7004','<img src=\"http://qiniuti.7secai.cn/20170720095828_91.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720095828_937.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720095829_92.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720095829_130.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720095829_762.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152441_391.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152442_390.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152444_980.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152445_529.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720093118_85.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144650_841.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,203,0,2,'2017-07-20 09:31:20',NULL,NULL,'DX570',NULL),
('8b702180-3066-4603-b9c7-e1576d36baa3','自然清晰木纹 美式风格书桌',2100.00,2100.00,'自然清晰木纹 美式风格书桌','ZJ-7737-SZ','<img src=\"http://qiniuti.7secai.cn/20170721174204_121.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721174205_474.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721174205_687.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721174206_844.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721174206_256.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721174206_918.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150752_294.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150752_19.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150754_769.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150755_523.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721174213_421.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150210_506.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,222,0,2,'2017-07-21 17:42:14',NULL,NULL,'SX764',NULL),
('95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed','小户型简约客厅玻璃烤漆茶几',1830.00,1830.00,'小户型简约客厅玻璃烤漆茶几','C686-CJ','<img src=\"http://qiniuti.7secai.cn/20170719170602_985.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170603_90.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170603_52.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170604_238.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170604_407.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170604_178.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170605_99.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170605_895.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170605_780.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170606_653.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170606_968.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170606_322.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170607_88.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170607_871.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170607_237.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170608_944.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170608_447.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170609_672.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170609_455.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719170610_710.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811161754_183.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811161755_682.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811161756_97.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811161758_58.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719170620_525.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144501_532.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,306,0,2,'2017-07-19 17:06:21',NULL,NULL,'CX536',NULL),
('9c2546ac-386d-4b45-bd90-a06c20ad82e4','比利时 现代风格1.8米床',3360.00,3360.00,'比利时 现代风格1.8米床','FHT-B710-L-18C','<img src=\"http://qiniuti.7secai.cn/20170717120126_86.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717120127_338.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717120127_479.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717120128_402.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717120128_137.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155434_474.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155435_82.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155436_957.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155438_520.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170717120238_803.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143632_965.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,122,0,2,'2017-07-17 12:02:41','2017-08-11 00:00:00','2017-08-31 00:00:00','CX166',NULL),
('9c53d2e3-706c-4bd8-9cf5-9fef5b790c58','健康环保芬兰松木儿童两门衣柜',3045.00,3045.00,'健康环保芬兰松木儿童两门衣柜','HSJ-6809#-2MYG','<img src=\"http://qiniuti.7secai.cn/20170724103251_436.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724103251_57.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724103252_377.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724103252_58.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145832_834.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145833_428.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145835_178.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145836_999.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724103354_470.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151222_322.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,96,0,2,'2017-07-24 10:33:55',NULL,NULL,'EX337',NULL),
('a0087fc1-762a-4763-89e8-9dc6e5db973d','时尚简约带书架儿童书桌',1510.00,1510.00,'时尚简约带书架儿童书桌','SY-15-7-SZ','<img src=\"http://qiniuti.7secai.cn/20170724155238_947.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724155238_898.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724155239_222.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724155239_788.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724155239_507.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724155240_485.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724155240_873.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724155241_627.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724155241_571.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142147_871.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142148_484.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142149_756.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142151_902.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724155256_316.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151513_360.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,56,0,2,'2017-07-24 15:52:57',NULL,NULL,'EX819',NULL),
('a223f0d3-1e0e-4515-83ac-644db7f3571b','柜墙角柜新款酒柜 客厅角柜',345.00,345.00,'柜墙角柜新款酒柜 客厅角柜','M13600-WW','<img src=\"http://qiniuti.7secai.cn/20170720113217_207.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720113217_713.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720113217_612.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152112_707.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152113_117.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152115_143.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152116_571.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720113337_463.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144939_372.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,123,0,2,'2017-07-20 11:33:15',NULL,NULL,'JX376',NULL),
('a2de35d3-8e52-4095-b221-bd68df085df5','超大空间储物气质柜 四斗柜',2186.00,2186.00,'超大空间储物气质柜  四斗柜','ML-OSDG-4','<img src=\"http://qiniuti.7secai.cn/20170721151549_449.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721151550_859.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721151550_590.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721151551_776.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721151551_534.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721151551_327.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721151552_823.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151103_844.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151104_331.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151106_890.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151107_926.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721143727_328.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145709_560.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,299,0,2,'2017-07-21 14:37:29',NULL,NULL,'DX393',NULL),
('a7c6fcef-acf7-4740-94e1-d65d9a08dff5','圆润光滑拉手 现代风格茶几',845.00,845.00,'圆润光滑拉手 现代风格茶几','27114-WHT','<img src=\"http://qiniuti.7secai.cn/20170719145550_957.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719145550_476.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719145550_421.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719145551_318.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719145551_535.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719145551_48.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719145552_420.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152927_206.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152927_156.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152929_675.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152930_621.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719145602_104.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144339_549.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,203,0,2,'2017-07-19 14:56:03',NULL,NULL,'CX816',NULL),
('aa43af8a-70bd-4b9d-aba8-347d5abb25de','微弧释压靠背 现代风格1.8米床',3160.00,3160.00,'微弧释压靠背 现代风格1.8米床','FHT-P979-18C','<img src=\"http://qiniuti.7secai.cn/20170717104450_779.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717104451_938.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717104451_738.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717104452_934.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717104452_356.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717104453_256.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717104453_859.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170717104454_779.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155627_352.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155628_765.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155629_102.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155630_771.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170717113850_669.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143504_57.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,213,0,2,'2017-07-17 10:45:10','2017-07-17 00:00:00','2017-07-31 00:00:00','',NULL),
('adfc04ec-eeaa-4773-9189-94d2c2d24669','地中海定制趟门衣柜',899.00,1099.00,'地中海定制趟门衣柜','HL-C341-PMYG','<img src=\"http://qiniuti.7secai.cn/20170718093912_414.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093913_821.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093913_726.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093914_444.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093916_586.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093916_128.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093919_876.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093921_921.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093923_188.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093925_380.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093927_440.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718093929_922.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170718094230_716.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170718093648_512.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,509,0,1,'2017-07-18 09:42:38',NULL,NULL,'YT714',NULL),
('ae765dfc-d77e-434d-b119-2ca0ff3d66e4','经典紫红色软包门板 儿童衣柜',2310.00,2310.00,'经典紫红色软包门板 儿童衣柜','SY-15-3-3MYG','<img src=\"http://qiniuti.7secai.cn/20170724140702_977.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724140702_952.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724140703_236.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724140703_63.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724140704_247.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724140704_88.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724140704_662.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724140705_452.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724140705_968.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145649_633.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145650_455.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145651_894.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145653_631.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724140713_578.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151355_610.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,200,0,2,'2017-07-24 14:07:15',NULL,NULL,'',NULL),
('aeaace68-bb2d-42c3-bc68-10e1b360d873','白色钢化玻璃 现代风格角几',525.00,525.00,'白色钢化玻璃 现代风格角几','HF-C616-JJ','<img src=\"http://qiniuti.7secai.cn/20170719160444_589.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719160444_986.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719160444_127.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719160445_849.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719160445_235.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811160903_373.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811160903_205.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811160905_850.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811160906_760.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719160459_182.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144428_755.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,401,0,2,'2017-07-19 16:05:00',NULL,NULL,'CX455',NULL),
('aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc','海绵填充 现代风格沙发套装3RZGF',5200.00,5200.00,'海绵 现代风格沙发套装3RZGF','FLS-A1208-B-1R','<img src=\"http://qiniuti.7secai.cn/20170719094924_495.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719094924_625.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719094925_879.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719094925_553.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719094926_906.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719094926_584.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153238_446.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153239_365.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153241_767.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153242_950.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719095141_108.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144117_780.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,126,0,2,'2017-07-19 09:51:44',NULL,NULL,'SX374',NULL),
('b10e9ca4-6cfd-4536-8d49-c61b25b36893','现代风格 经典白色百搭儿童衣柜',2090.00,2090.00,'现代风格 经典白色百搭儿童衣柜','SY-15-7-3MYG','<img src=\"http://qiniuti.7secai.cn/20170724110825_29.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724110825_600.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724110826_41.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724110826_275.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724110827_210.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724110827_583.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724110828_928.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145805_981.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145806_817.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145807_281.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145809_771.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724110948_600.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151253_482.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,223,0,2,'2017-07-24 11:09:50',NULL,NULL,'EX352',NULL),
('b588c021-e269-4bdd-9a09-8c12dfc9476b','皮艺床屏 现代风格1.2米儿童床',1980.00,1980.00,'皮艺床屏 现代风格1.2米儿童床','SY-15-7-12C','<img src=\"http://qiniuti.7secai.cn/20170724100431_482.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724100432_553.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724100432_264.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724100433_14.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724100433_393.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724100433_228.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145900_502.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145901_364.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145903_958.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145904_89.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724100446_910.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151146_192.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,333,0,2,'2017-07-24 10:04:47',NULL,NULL,'EX418',NULL),
('b84718a2-7bd6-4ad1-a611-925d72834e6d','土豪金款玻璃 现代长方形餐桌',1420.00,1420.00,'土豪金款玻璃 现代长方形餐桌','HF-T103-CZ','<img src=\"http://qiniuti.7secai.cn/20170721164839_45.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721164839_815.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721164839_963.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150841_349.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150843_892.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150844_671.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150845_405.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721164851_563.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150024_142.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,242,0,2,'2017-07-21 16:48:51',NULL,NULL,'CX291',NULL),
('bbe59f47-c4fd-4817-8849-7149162c55e8','欧式风格1.8米双人床',4406.00,4406.00,'欧式风格1.8米双人床','CM-0291-B-18C','<img src=\"http://qiniuti.7secai.cn/20170714180206_65.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714180208_773.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714180209_587.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714180210_101.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714180212_370.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714180214_259.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170714180215_517.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170714180231_561.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808143430_928.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,3,144,0,2,'2017-07-14 18:02:33',NULL,NULL,'CB335',NULL),
('bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','现代简约白色实木靠背餐椅',406.00,406.00,'现代简约白色实木靠背餐椅','HF-Y23-CY','<img src=\"http://qiniuti.7secai.cn/20170725112011_6.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725112013_669.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725112015_136.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725112016_515.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725112018_83.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725112019_750.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141234_926.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141235_833.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141236_577.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141237_803.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170725112113_539.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151846_867.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,303,0,2,'2017-07-25 11:21:14',NULL,NULL,'CX173',NULL),
('bc95f692-25a2-438c-8ba1-90ce7a62d68b','现代风格1.2米原木色儿童床',1848.00,1848.00,'现代风格1.2米原木色儿童床','HSJ-6613-12C-1','<img src=\"http://qiniuti.7secai.cn/20170724163245_833.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724163246_197.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141959_40.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142000_240.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142001_409.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142003_376.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724163259_305.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151632_473.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,123,0,2,'2017-07-24 16:33:00',NULL,NULL,'EX691',NULL),
('c2fdb4db-41cb-4575-9741-687c33773254','门厅柜 特价鞋架玄关柜对开门',599.00,599.00,'门厅柜 特价鞋架玄关柜对开门','M106137-WW','<img src=\"http://qiniuti.7secai.cn/20170720154802_338.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720154802_35.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720154803_428.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720154803_501.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720154803_277.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720154804_327.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720154804_811.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151841_227.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151842_297.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151843_811.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151845_683.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720154815_670.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145238_937.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,200,0,2,'2017-07-20 15:48:17',NULL,NULL,'XX717',NULL),
('c5b2be18-6f05-4c22-afe4-b43c1a09a16b','现代时尚潮流黑白电视柜',1566.00,1566.00,'现代时尚潮流黑白电视柜','T669','<img src=\"http://qiniuti.7secai.cn/20170719181321_670.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719181322_456.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719181322_28.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719181323_522.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719181323_811.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170719181324_414.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811161947_831.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811161948_960.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811161950_716.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811161951_493.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170719181657_653.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144616_218.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,1,1,1,0,29,0,2,'2017-07-19 18:16:59','2017-08-10 00:00:00','2017-08-31 00:00:00','DX885',NULL),
('cae6d4e9-d785-423c-884c-8b242f7c44da','简约窗棂设计 典雅象牙白色储物柜',2899.00,2899.00,'简约窗棂设计 典雅象牙白色储物柜','MX-CW09-E-2MSG','<img src=\"http://qiniuti.7secai.cn/20170723105429_656.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723105429_855.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723105429_670.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723105430_123.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723105430_407.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150459_83.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150459_678.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150501_319.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150502_321.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170723105444_242.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150450_466.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,123,0,2,'2017-07-23 10:54:45',NULL,NULL,'SX446',NULL),
('ceb79cd0-a389-4115-8546-67310d93cf14','皮艺坐面靠背 不锈钢框架餐椅',198.00,198.00,'皮艺坐面靠背 不锈钢框架餐椅','HF-Y06B-CY','<img src=\"http://qiniuti.7secai.cn/20170811141640_297.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141640_901.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141641_197.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141642_690.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141644_179.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141645_333.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141647_536.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141648_456.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141649_332.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141650_602.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141652_820.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141653_386.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141655_627.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141657_139.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170725105014_260.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151823_330.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,202,0,2,'2017-07-25 10:50:15',NULL,NULL,'CX336',NULL),
('d04f501c-ffb8-4c97-b9e1-7d9adc583467','皇冠床 现代风格1.5M儿童床',2625.00,2625.00,'皇冠床 现代风格1.5M儿童床','SY-15-3-15C','<img src=\"http://qiniuti.7secai.cn/20170724161534_170.jpeg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724161534_793.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724161534_843.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724161535_477.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724161535_496.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724161536_721.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724161536_96.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724161536_309.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142101_229.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142102_528.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142103_884.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811142105_581.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724161554_297.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151600_552.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,0,0,2,'2017-07-24 16:15:56',NULL,NULL,'EX580',NULL),
('d3935bb9-4443-4d01-88ec-91162a53b787','儿童粉色系列衣柜，三门衣柜',1980.00,1980.00,'儿童粉色系列衣柜，三门衣柜','SY-15-2-3MYG','<img src=\"http://qiniuti.7secai.cn/20170724113725_677.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724113725_701.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724113726_564.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724113726_195.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724113726_630.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724113727_332.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724113727_397.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145740_785.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145741_258.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145743_914.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145744_945.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724113743_114.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151329_509.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,222,0,2,'2017-07-24 11:37:44',NULL,NULL,'EX678',NULL),
('d5cbe572-b343-4498-9770-ef0e80ea97d1','现代风格多功能沙发组合',2920.00,2920.00,'现代风格多功能沙发组合','YJG-MR-103#-3RGF','<img src=\"http://qiniuti.7secai.cn/20170718174406_706.gif\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174427_456.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174428_617.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174428_234.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174429_100.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174429_126.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174429_801.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174430_280.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174430_256.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174430_953.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174431_229.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174431_246.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174431_20.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174432_77.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174432_112.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718174433_489.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153323_528.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153324_882.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153325_189.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811153326_443.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170718174544_438.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144047_170.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,89,0,2,'2017-07-18 17:45:45',NULL,NULL,'SX279',NULL),
('d627acee-6b26-4f92-8a4d-377b0019345e','简约碗柜 酒柜茶水柜 储物柜子',1100.00,1100.00,'简约碗柜 酒柜茶水柜 储物柜子','GD-N001','<img src=\"http://qiniuti.7secai.cn/20170720181905_789.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181905_532.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181906_427.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181906_100.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181906_550.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181907_457.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181907_337.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181907_429.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181908_4.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181908_121.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181908_664.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181909_131.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181909_117.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720181909_130.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151422_189.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151422_47.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151425_200.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151426_889.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720181930_633.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145443_73.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,99,0,2,'2017-07-20 18:19:31',NULL,NULL,'DX797',NULL),
('dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23','创意组合白色书架 简易书柜',878.00,878.00,'创意组合白色书架 简易书柜','M27090-WHT','<img src=\"http://qiniuti.7secai.cn/20170722180125_609.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180125_178.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180125_164.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180126_901.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180126_233.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180126_817.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180127_928.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180127_364.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180127_446.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180128_381.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150622_386.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150623_933.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150625_776.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150626_308.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170722180350_396.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170722180350_702.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150408_425.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,125,0,2,'2017-07-22 18:03:56',NULL,NULL,'SX883',NULL),
('e31ee61c-e35d-479b-bf23-10367bb0c392','光滑凹槽拉手 现代风格餐桌',2359.00,2359.00,'光滑凹槽拉手 现代风格餐桌','HF-T122A-CZ','<img src=\"http://qiniuti.7secai.cn/20170721171200_474.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721171201_821.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721171201_648.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721171201_718.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721171202_854.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721171202_669.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721171203_462.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150819_931.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150820_433.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150822_420.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150823_322.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721171212_573.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808150112_503.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,223,0,2,'2017-07-21 17:12:13',NULL,NULL,'CX999',NULL),
('e33166ac-8fdb-4296-a75c-32ba11b701d0','天然乳胶抗菌防螨 1.8米床垫',1680.00,1680.00,'天然乳胶抗菌防螨 1.8米床垫','YLL-YZC-18CD','<img src=\"http://qiniuti.7secai.cn/20170718091615_421.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091616_615.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091616_704.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091617_404.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091617_883.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091617_804.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091618_728.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091618_544.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091619_323.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091619_788.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091619_640.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091620_917.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091620_2.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091620_615.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091621_503.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091621_202.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091621_998.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091622_974.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091622_292.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091623_697.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155219_272.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155220_155.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155222_190.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811155223_737.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170718091725_407.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170718091725_81.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170809095810_335.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,98,0,2,'2017-07-18 09:18:21',NULL,NULL,'CO280',NULL),
('e465fc07-7357-4a7a-b91e-ab1e9b31e259','老板椅升降转椅PU皮艺午休椅',1059.00,1059.00,'老板椅升降转椅PU皮艺午休椅','M004','<img src=\"http://qiniuti.7secai.cn/20170723173231_455.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723173231_891.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723173232_618.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723173232_491.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170723173233_634.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145952_729.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145953_121.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145955_145.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145956_863.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170723173252_304.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151045_257.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,230,0,2,'2017-07-23 17:32:53',NULL,NULL,'',NULL),
('e68aea74-ad40-42ce-b962-68642048ba1d','坚固耐用不锈钢框架餐椅',336.00,336.00,'坚固耐用不锈钢框架餐椅','HF-Y08-CY','<img src=\"http://qiniuti.7secai.cn/20170725095908_665.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725095908_353.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170725095908_391.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141746_738.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141747_916.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141749_908.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811141750_885.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170725095920_768.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151800_262.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,236,0,2,'2017-07-25 09:59:42','2017-07-25 00:00:00','2017-07-31 00:00:00','CX836',NULL),
('e715ef29-e892-4635-a0be-c028bf41b8d2','现代简约 创意时尚伸缩电视柜',1198.00,1198.00,'现代简约 创意时尚伸缩电视柜','M14976-RC','<img src=\"http://qiniuti.7secai.cn/20170720102933_160.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720102934_261.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720102934_345.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720102934_717.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152321_461.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152322_794.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152323_233.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152325_802.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720102944_283.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808144744_225.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,1,2,2,2,0,211,0,2,'2017-07-20 10:29:47','2017-08-10 00:00:00','2017-08-31 00:00:00','DX565',NULL),
('ec16e5f2-c398-4549-9b24-c022c2cf0d06','实木框架 带四抽儿童书桌组合',2020.00,2020.00,'实木框架 带四抽儿童书桌组合','SY-501-SZZH','<img src=\"http://qiniuti.7secai.cn/20170724144620_586.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144620_852.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144620_128.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144621_949.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144621_259.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144621_521.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144622_843.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144622_948.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144623_608.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144623_181.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170724144624_637.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145532_944.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145532_217.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145534_273.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811145536_554.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170724144657_314.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808151419_451.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,230,0,2,'2017-07-24 14:46:58',NULL,NULL,'EX288',NULL),
('ec47b4e8-b4a7-4604-939b-eaaf4deef359','现代风1.45米六人位方形餐桌',1339.00,1339.00,'现代风1.45米六人位方形餐桌','WF636','<img src=\"http://qiniuti.7secai.cn/20170721162906_233.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721162906_24.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721162906_584.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721162906_513.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170721162907_417.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150936_396.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150937_207.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150938_558.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811150940_33.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170721162914_578.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145958_39.jpeg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,202,0,2,'2017-07-21 16:29:15',NULL,NULL,'CX156',NULL),
('ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','翻开门超薄玄关可折叠鞋柜',975.00,975.00,'翻开门超薄玄关可折叠鞋柜','M161558-WHT','<img src=\"http://qiniuti.7secai.cn/20170720151918_991.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720151919_230.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720151919_632.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151917_262.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151918_293.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151920_725.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151921_677.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720151934_424.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145220_825.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,455,0,2,'2017-07-20 15:19:35',NULL,NULL,'XX273',NULL),
('eeddcc98-fb5c-4147-af33-59587d6548e8','现代卧室白色抽屉收纳家具',930.00,930.00,'现代卧室白色抽屉收纳家具','M13U126-WHT','<img src=\"http://qiniuti.7secai.cn/20170720182545_349.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720182545_16.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720182545_112.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151345_869.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151346_949.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151347_476.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151348_176.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720182557_363.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145555_887.jpg',1,'781ad64c95c842d39335f14c0bd394b4',2,1,2,2,1,1,0,145,0,2,'2017-07-20 18:25:59',NULL,NULL,'',NULL),
('f1fddf3f-92f3-4fab-a226-1fb61a3bc17d','时尚感足 北欧风格间厅柜',3200.00,3200.00,'时尚感足 北欧风格间厅柜','9J-01','<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170720145642_788.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170720145649_907.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170720145649_97.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://qiniuti.7secai.cn/20170720145649_799.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151945_326.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151946_748.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151948_887.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811151949_135.jpg\" alt=\"\" /> \r\n</p>','<img src=\"http://qiniuti.7secai.cn/20170720145352_118.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145110_742.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,0,0,2,'2017-07-20 14:54:12',NULL,NULL,'JX717',NULL),
('faf566d3-daff-4f9a-a1a4-5b8fa75b9e50','客厅镂空玄关柜 门厅柜 置物架',1656.00,1656.00,'客厅镂空玄关柜 门厅柜 置物架','M161579-WHT','<img src=\"http://qiniuti.7secai.cn/20170720141927_739.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720141927_658.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170720141928_804.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152012_220.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152013_748.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152015_314.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170811152016_118.jpg\" alt=\"\" />','<img src=\"http://qiniuti.7secai.cn/20170720142028_898.jpg\" alt=\"\" />','http://qiniuti.7secai.cn/20170808145040_691.jpg',1,'781ad64c95c842d39335f14c0bd394b4',1,1,2,2,1,1,0,65,0,2,'2017-07-20 14:20:31',NULL,NULL,'JX890',NULL);

/*Table structure for table `goods_meublebasictype` */

DROP TABLE IF EXISTS `goods_meublebasictype`;

CREATE TABLE `goods_meublebasictype` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `basicId` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '商品ID',
  `classify1` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '分类1级',
  `classify2` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '分类2级',
  `classify3` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '分类3级',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商品分类信息表';

/*Data for the table `goods_meublebasictype` */

insert  into `goods_meublebasictype`(`id`,`basicId`,`classify1`,`classify2`,`classify3`,`createTime`,`reserve1`,`reserve2`) values 
('00bf65e71be84e279a85204bc5dffe7a','09ab1f2a-9af8-44c3-99d6-db52881bde7c','2','aa12a85ed7614eb593ddc6deff1c6018',NULL,'2017-08-11 16:44:44',NULL,NULL),
('02711654e80942cc99f5b5a5d1267e83','bc95f692-25a2-438c-8ba1-90ce7a62d68b','2','2323',NULL,'2017-08-11 17:19:11',NULL,NULL),
('07a6502f0b6744918b3bde2900b5de72','09ab1f2a-9af8-44c3-99d6-db52881bde7c','1','b3b3','5154b3f43795439caef175382edd0c49','2017-08-11 16:44:44',NULL,NULL),
('08b3fcba17034a4f9ce9a3ff025cdcfc','4fd6f502-b89a-48aa-9beb-b36b3f95318f','2','2323',NULL,'2017-08-11 16:25:14',NULL,NULL),
('08bae271806d47cf946ab87dfa707075','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','2','2323',NULL,'2017-08-11 16:28:46',NULL,NULL),
('093e8ed38760483ebb6953b7cce2647d','ae765dfc-d77e-434d-b119-2ca0ff3d66e4','2','2323',NULL,'2017-08-11 17:17:19',NULL,NULL),
('0acc30cdd8204ca38965a0997b91043c','2c56e0f8-9ae8-430d-9d0d-091e8dd1e838','1','b4b4','ebafddb60dad47a98c1d5cc796579d74','2017-08-11 17:09:55',NULL,NULL),
('0ae6b36c02c44d44939cf00ebbb97d97','f1fddf3f-92f3-4fab-a226-1fb61a3bc17d','1','b2b2','0ff9c732e7cf4ab79816e67b1242027f','2017-08-11 16:26:59',NULL,NULL),
('0b3185166d024c939a65b5c831dbded8','e33166ac-8fdb-4296-a75c-32ba11b701d0','1','b1b1','b1b1a2','2017-08-11 15:52:42',NULL,NULL),
('11ba4ae925964c6ab5512a6ff8513c7f','bc95f692-25a2-438c-8ba1-90ce7a62d68b','1','6d4c5f6134ee495191c6d117c0f6a07f','d4d82b3c2f804822b56501cb9ff094b6','2017-08-11 17:19:11',NULL,NULL),
('136a293ff31b4803b45d35eb900c46df','2c56e0f8-9ae8-430d-9d0d-091e8dd1e838','2','a2a2',NULL,'2017-08-11 17:09:55',NULL,NULL),
('17fcc6a51bcc462a827afe13935ad565','aeaace68-bb2d-42c3-bc68-10e1b360d873','1','b2b2','ab5455010dff48729fb6210c4a448816','2017-08-11 16:16:26',NULL,NULL),
('1cab0f7ba018492da5269d3656438e9f','f1fddf3f-92f3-4fab-a226-1fb61a3bc17d','2','a4a4',NULL,'2017-08-11 16:26:59',NULL,NULL),
('1ece6ea0e43848f9b2204dfd4a82ce41','9c2546ac-386d-4b45-bd90-a06c20ad82e4','1','b1b1','b1b1a1','2017-08-11 17:30:56',NULL,NULL),
('1f0c6c40ce944761b1049072f9f4ccae','95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed','1','b2b2','ab5455010dff48729fb6210c4a448816','2017-08-11 16:18:36',NULL,NULL),
('2170c40e4a6d49949600ea98d2ad49de','aeaace68-bb2d-42c3-bc68-10e1b360d873','2','2323',NULL,'2017-08-11 16:16:26',NULL,NULL),
('230f9331cbf04e3ca712c6989f36eec6','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','1','b3b3','d8438bef7d184bc3918585560ded37f5','2017-08-11 17:28:20',NULL,NULL),
('2313cda627de48ec9bf358a0c2de8a0a','64e8cb63-0a26-46d2-81af-6cea9e8c5de8','2','a2a2',NULL,'2017-08-11 15:17:52',NULL,NULL),
('24081e03488b4f9ab36f4392dd531576','c5b2be18-6f05-4c22-afe4-b43c1a09a16b','1','b2b2','9d5f258c668b473e8f670ee89a9f8bf3','2017-08-11 17:37:58',NULL,NULL),
('248cf5b7825c4eeba32bda8cdc97d2c8','faf566d3-daff-4f9a-a1a4-5b8fa75b9e50','2','a2a2',NULL,'2017-08-11 15:20:23',NULL,NULL),
('2529faa4a9d2466cb88087f34709f346','b588c021-e269-4bdd-9a09-8c12dfc9476b','2','2323',NULL,'2017-08-11 17:10:28',NULL,NULL),
('257ee20528af42f787fe417929ff0b6f','246cb90e-7731-496b-a3bb-926f6d500e4a','2','a4a4',NULL,'2017-08-11 17:18:20',NULL,NULL),
('25a32556ebf147ef85cd62c17e35d691','bbe59f47-c4fd-4817-8849-7149162c55e8','1','b1b1','b1b1a1','2017-08-08 14:34:34',NULL,NULL),
('25a4fa52f1724692b7088a731b9b93a0','1fa4d900-4d98-4803-8f83-18a0889c34b2','1','b2b2','ab5455010dff48729fb6210c4a448816','2017-08-11 17:38:19',NULL,NULL),
('26699c034c5d4c09820829d3fc89c78f','1ed90e16-847d-43de-9d5a-7d89571455e8','2','8b51040452e9407b827d00bff3d94de2',NULL,'2017-08-11 15:59:06',NULL,NULL),
('26f4f0fe874440dfb694989854aea5d8','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c','1','b2b2','1cc8e58f977c4686b73c4fec555ec2c1','2017-08-11 17:38:38',NULL,NULL),
('280d98ccf00a4cb381961f947235e946','e31ee61c-e35d-479b-bf23-10367bb0c392','1','b3b3','5154b3f43795439caef175382edd0c49','2017-08-11 16:57:24',NULL,NULL),
('29455faaed25496886dbae3e575066b0','b588c021-e269-4bdd-9a09-8c12dfc9476b','1','6d4c5f6134ee495191c6d117c0f6a07f','d4d82b3c2f804822b56501cb9ff094b6','2017-08-11 17:10:28',NULL,NULL),
('294dd10c4f874bf4a551979ef8436013','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','2','c6ccdfefd092442eba4da2c0eb9ea0d7',NULL,'2017-08-11 17:41:04',NULL,NULL),
('2ab0b38958384bdbad072b020056af97','247a8ae8-8829-49ea-9c09-19702a09bcf0','2','aa12a85ed7614eb593ddc6deff1c6018',NULL,'2017-08-11 16:40:01',NULL,NULL),
('2ea8a7c1f8454298be86c276a1dacf7a','a223f0d3-1e0e-4515-83ac-644db7f3571b','1','b2b2','0ff9c732e7cf4ab79816e67b1242027f','2017-08-11 16:24:28',NULL,NULL),
('2ebce66255dd4c8e8f89d16331259403','5829c0a5-06e4-43ef-80b6-37089d706b10','2','a4a4',NULL,'2017-08-11 17:08:30',NULL,NULL),
('306d20b72bb74b7383dcce6e94c87e68','8b702180-3066-4603-b9c7-e1576d36baa3','1','b4b4','6747ed51a1854b8d8c42c012c4f73945','2017-08-11 17:02:15',NULL,NULL),
('30cbed0acee8492287ac8e5056023240','636b4a1f-603e-41a9-8472-2c59459b2cd9','1','b3b3','d8438bef7d184bc3918585560ded37f5','2017-08-11 17:19:41',NULL,NULL),
('318bd49657ed43e781d340a5490b626c','d04f501c-ffb8-4c97-b9e1-7d9adc583467','2','2323',NULL,'2017-08-11 17:18:51',NULL,NULL),
('32db05dad7d74692a6db62b3ca30ef11','49fb056f-7966-4323-b688-160fc119bd52','1','b2b2','ab5455010dff48729fb6210c4a448816','2017-08-11 17:38:29',NULL,NULL),
('33f479206349483e84e4a119431b8096','b84718a2-7bd6-4ad1-a611-925d72834e6d','1','b3b3','5154b3f43795439caef175382edd0c49','2017-08-11 16:56:34',NULL,NULL),
('3413205c4db347e0ac23f98f669a4ea6','9c2546ac-386d-4b45-bd90-a06c20ad82e4','2','2323',NULL,'2017-08-11 17:30:56',NULL,NULL),
('35a046d99a0241f49401d9cda748abf0','95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed','2','2323',NULL,'2017-08-11 16:18:36',NULL,NULL),
('3794cf36fcd944758da13824fda01b89','246cb90e-7731-496b-a3bb-926f6d500e4a','1','6d4c5f6134ee495191c6d117c0f6a07f','8abf4a4a9aa6483284da3be514c31437','2017-08-11 17:18:20',NULL,NULL),
('3798289c2a2a472ab4454ffdf7d1ff80','e33166ac-8fdb-4296-a75c-32ba11b701d0','2','2323',NULL,'2017-08-11 15:52:42',NULL,NULL),
('3925f86b044b489b965aefcf33fa6881','3a626ae5-1e86-4b48-8d7d-464d544d6abb','1','b2b2','1cc8e58f977c4686b73c4fec555ec2c1','2017-08-11 15:59:43',NULL,NULL),
('3f823ca8bc7d4a76bbfe4e2882a8d66a','7fed01bd-f4ca-4a89-8466-f0a7a3ac5051','2','2323',NULL,'2017-08-11 16:19:21',NULL,NULL),
('4051e9c2531d4343b8a5b19a10ccaa7c','4d81e88d-3021-4157-8d85-173ba6b142d9','2','a4a4',NULL,'2017-08-08 14:36:04',NULL,NULL),
('40773af482cc4026aa558fcc4a663bd6','eeddcc98-fb5c-4147-af33-59587d6548e8','2','2323',NULL,'2017-08-11 16:39:23',NULL,NULL),
('425cf04d41d945c38ab404ac82a6b12e','30be5535-56fa-4740-b868-4321eb186263','1','b2b2','7450a00ee56d4c7abcbcc7a848e2eaff','2017-08-11 16:32:37',NULL,NULL),
('427a4371b2ef4f37b55d17e0ef39194d','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2','76bd135206244c8b942dfda96e58edac',NULL,'2017-08-11 17:40:02',NULL,NULL),
('429bffb19d714a92800ec2e72c2793a2','ec47b4e8-b4a7-4604-939b-eaaf4deef359','1','b3b3','5154b3f43795439caef175382edd0c49','2017-08-11 16:45:28',NULL,NULL),
('43c549827bfb4bd2a41de21b2c57e2ff','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923','1','b2b2','7450a00ee56d4c7abcbcc7a848e2eaff','2017-08-11 16:28:46',NULL,NULL),
('4566f1d23f4247de80af266fc98db4c2','256450cc-26ef-4585-9083-e9f1dd572fec','1','b3b3','5154b3f43795439caef175382edd0c49','2017-08-11 15:10:22',NULL,NULL),
('4605911937734767af77ca096a4a98c9','bbe59f47-c4fd-4817-8849-7149162c55e8','2','2323',NULL,'2017-08-08 14:34:34',NULL,NULL),
('4955dfbd78ee443e8e406217b475e487','c2fdb4db-41cb-4575-9741-687c33773254','2','a4a4',NULL,'2017-08-11 16:31:20',NULL,NULL),
('49575ebda45040b2a0c6afedeef3f04e','1c8f9782-1d44-4b23-a55b-4bd4c8af1cf8','2','8b51040452e9407b827d00bff3d94de2',NULL,'2017-08-11 17:08:21',NULL,NULL),
('4a61a988aa7a402cb3d5d4a1036dcb27','4fd6f502-b89a-48aa-9beb-b36b3f95318f','1','b2b2','0ff9c732e7cf4ab79816e67b1242027f','2017-08-11 16:25:14',NULL,NULL),
('4e8c43a865784cebb5cadc612879995b','dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23','1','b4b4','22aa42ad361c45489b9e3bd61269a86c','2017-08-11 17:03:23',NULL,NULL),
('4f2c1b68cedb49faa910c1863cc420db','ceb79cd0-a389-4115-8546-67310d93cf14','2','2323',NULL,'2017-08-11 17:40:56',NULL,NULL),
('51e75dbae4314baf8e045ca9dc47b225','faf566d3-daff-4f9a-a1a4-5b8fa75b9e50','1','b2b2','0ff9c732e7cf4ab79816e67b1242027f','2017-08-11 15:20:23',NULL,NULL),
('527352580c9d449dae553e88815e439d','eeddcc98-fb5c-4147-af33-59587d6548e8','1','b2b2','4ddcb8033e5c476b840ab518322d0e6f','2017-08-11 16:39:23',NULL,NULL),
('5869ccf5c81d44cd9bc9b19f249fa229','d3935bb9-4443-4d01-88ec-91162a53b787','2','2323',NULL,'2017-08-11 17:17:04',NULL,NULL),
('5a2c2dfa94be43d3b7e6258b9cacdd9a','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','1','b1b1','b1b1a1','2017-08-11 17:40:02',NULL,NULL),
('5c49c8c3459d4400b025109fb2d6b7b7','1fa4d900-4d98-4803-8f83-18a0889c34b2','2','2323',NULL,'2017-08-11 17:38:19',NULL,NULL),
('5f2ec790db1a41adbd9678594689a903','40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1','1','b2b2','0ff9c732e7cf4ab79816e67b1242027f','2017-08-11 16:24:07',NULL,NULL),
('5fa486a7b2c846b4b119efd4cb1122f6','636b4a1f-603e-41a9-8472-2c59459b2cd9','2','2323',NULL,'2017-08-11 17:19:41',NULL,NULL),
('6265d9157e984e2ba09aca2e1b0720ac','8a756d88-2457-4888-9c7c-174e22a90c08','1','b2b2','9d5f258c668b473e8f670ee89a9f8bf3','2017-08-11 16:23:00',NULL,NULL),
('638dbc7597304cd295af40638d734cc2','e31ee61c-e35d-479b-bf23-10367bb0c392','2','2323',NULL,'2017-08-11 16:57:24',NULL,NULL),
('67b5ead8a2c749a6a572b5059df1dc76','05b23faa-b771-4400-a27e-d156faa05455','2','a2a2',NULL,'2017-08-11 17:42:14',NULL,NULL),
('682b64f702d44b32b6e5ce0fc35d3d12','1ed90e16-847d-43de-9d5a-7d89571455e8','1','b1b1','3e62178db1094537aa694eb79d1a165b','2017-08-11 15:59:06',NULL,NULL),
('6887c83f55554951a435aca51bd07629','c2fdb4db-41cb-4575-9741-687c33773254','1','b2b2','7450a00ee56d4c7abcbcc7a848e2eaff','2017-08-11 16:31:20',NULL,NULL),
('69d82adedb074f4e9c614f7208db0f74','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd','2','a2a2',NULL,'2017-08-11 17:28:20',NULL,NULL),
('6a8cec798ac14791a2c7c4ebff561f16','b84718a2-7bd6-4ad1-a611-925d72834e6d','2','2323',NULL,'2017-08-11 16:56:34',NULL,NULL),
('6cb12823886140098700e6114f772119','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','1','b1b1','b1b1a1','2017-08-11 17:40:15',NULL,NULL),
('6e7eddbd4a3c4ec6bfd17d3d9a776bab','e68aea74-ad40-42ce-b962-68642048ba1d','2','a2a2',NULL,'2017-08-11 17:40:45',NULL,NULL),
('6fffc3f726a642839a87485fc53304c4','cae6d4e9-d785-423c-884c-8b242f7c44da','2','a2a2',NULL,'2017-08-11 15:05:08',NULL,NULL),
('70e4fddb0061434a9aa023ea60f767c5','64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2','a2a2',NULL,'2017-08-11 17:40:15',NULL,NULL),
('75e90bb3e33c4d41880106a252c96a50','e465fc07-7357-4a7a-b91e-ab1e9b31e259','2','2323',NULL,'2017-08-11 17:09:43',NULL,NULL),
('7b4b54edf7724dd4849637a3e164b02b','47f48c15-e092-4bc9-97c3-369f1932a704','2','c6ccdfefd092442eba4da2c0eb9ea0d7',NULL,'2017-08-11 15:49:22',NULL,NULL),
('7df6dc0c44564971aa25ffe766fef8c3','a2de35d3-8e52-4095-b221-bd68df085df5','2','a2a2',NULL,'2017-08-11 15:11:25',NULL,NULL),
('83bf8b7972ec419f832c0b8369354d7a','47f48c15-e092-4bc9-97c3-369f1932a704','1','b1b1','76d6be7de60144dea578361500601074','2017-08-11 15:49:22',NULL,NULL),
('88b7c963282a4170b24e7bdbafff589e','cae6d4e9-d785-423c-884c-8b242f7c44da','1','b4b4','22aa42ad361c45489b9e3bd61269a86c','2017-08-11 15:05:08',NULL,NULL),
('8aaa559aa2a64daf97be9ca4ad4341ca','d627acee-6b26-4f92-8a4d-377b0019345e','2','8b51040452e9407b827d00bff3d94de2',NULL,'2017-08-11 16:38:56',NULL,NULL),
('8d30f3ceab8d4574a19705d6be4caa8b','a223f0d3-1e0e-4515-83ac-644db7f3571b','2','c6ccdfefd092442eba4da2c0eb9ea0d7',NULL,'2017-08-11 16:24:28',NULL,NULL),
('8ea56116ade64b3f841c6af9644a9e5f','ec47b4e8-b4a7-4604-939b-eaaf4deef359','2','2323',NULL,'2017-08-11 16:45:28',NULL,NULL),
('8f5e760448284ea88707885b1acfcdc7','52f8a23f-5677-4b20-8364-5e170a83fe92','1','b2b2','1cc8e58f977c4686b73c4fec555ec2c1','2017-08-11 17:38:51',NULL,NULL),
('8fc198712c454604ae25a82dd86b8b66','aa43af8a-70bd-4b9d-aba8-347d5abb25de','2','2323',NULL,'2017-08-11 15:56:52',NULL,NULL),
('908d1d7853a347d49124d79f7a2c86b5','3a626ae5-1e86-4b48-8d7d-464d544d6abb','2','2323',NULL,'2017-08-11 15:59:43',NULL,NULL),
('90d4978c26e9488ba948da61f17edc01','4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc','2','a4a4',NULL,'2017-08-11 17:09:09',NULL,NULL),
('9303d578596b4d1ea8675a7eb200d914','e715ef29-e892-4635-a0be-c028bf41b8d2','2','2323',NULL,'2017-08-11 17:37:45',NULL,NULL),
('949d211498f843d682ddd3573815aafc','4b67e210-b432-418b-a63b-443d00948522','1','b2b2','9d5f258c668b473e8f670ee89a9f8bf3','2017-08-11 16:23:21',NULL,NULL),
('9533d734517e44ce9c8d0e668f4846d2','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','2','c6ccdfefd092442eba4da2c0eb9ea0d7',NULL,'2017-08-11 16:32:08',NULL,NULL),
('95e6e1f8f9534a3daa67552f51173ca2','d627acee-6b26-4f92-8a4d-377b0019345e','1','b2b2','4ddcb8033e5c476b840ab518322d0e6f','2017-08-11 16:38:56',NULL,NULL),
('96486072780141ab92298cb1a8c6ddca','30be5535-56fa-4740-b868-4321eb186263','2','2323',NULL,'2017-08-11 16:32:37',NULL,NULL),
('984aab4daa224176b95d5e9c169b3f83','64e8cb63-0a26-46d2-81af-6cea9e8c5de8','1','b2b2','7450a00ee56d4c7abcbcc7a848e2eaff','2017-08-11 15:17:52',NULL,NULL),
('9a2518ae0603477384e88c5b3a4fbec5','a7c6fcef-acf7-4740-94e1-d65d9a08dff5','1','b2b2','ab5455010dff48729fb6210c4a448816','2017-08-11 16:02:26',NULL,NULL),
('a67759a5ecad4327973a62c7037d35ae','ec16e5f2-c398-4549-9b24-c022c2cf0d06','1','6d4c5f6134ee495191c6d117c0f6a07f','8abf4a4a9aa6483284da3be514c31437','2017-08-11 17:17:45',NULL,NULL),
('a88acbb8f0104a6aa85c1565f0719de1','d5cbe572-b343-4498-9770-ef0e80ea97d1','2','2323',NULL,'2017-08-11 16:00:27',NULL,NULL),
('ab617746c4df4cd8b45553402ddfe8dc','4b67e210-b432-418b-a63b-443d00948522','2','c6ccdfefd092442eba4da2c0eb9ea0d7',NULL,'2017-08-11 16:23:21',NULL,NULL),
('ab61baccb43d4e6791f69a1036d3b60f','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c','2','a2a2',NULL,'2017-08-11 17:38:38',NULL,NULL),
('ab760464e9334dfd97cfc694f9a2746e','5829c0a5-06e4-43ef-80b6-37089d706b10','1','b4b4','22aa42ad361c45489b9e3bd61269a86c','2017-08-11 17:08:30',NULL,NULL),
('abaf9f3a3742417b853140f06edf9c71','648fb5b4-2438-4956-b265-c5051855d649','2','a2a2',NULL,'2017-08-11 15:03:53',NULL,NULL),
('ade90f32790a497ead8f6fd6e6f71379','e715ef29-e892-4635-a0be-c028bf41b8d2','1','b2b2','9d5f258c668b473e8f670ee89a9f8bf3','2017-08-11 17:37:45',NULL,NULL),
('afa77b4baacf4d7eaed99b137d1d6b20','d5cbe572-b343-4498-9770-ef0e80ea97d1','1','b2b2','1cc8e58f977c4686b73c4fec555ec2c1','2017-08-11 16:00:27',NULL,NULL),
('b15b5f4dfbfd4a4b9247c8e42d6125c8','256450cc-26ef-4585-9083-e9f1dd572fec','2','a2a2',NULL,'2017-08-11 15:10:22',NULL,NULL),
('b3a55ff48d9b43c1913e676fef79f8eb','8b702180-3066-4603-b9c7-e1576d36baa3','2','a4a4',NULL,'2017-08-11 17:02:15',NULL,NULL),
('b4840b8d80db4f3a9578ab2e9ebbe202','66df33bc-d169-45aa-addc-230700b893bf','1','6d4c5f6134ee495191c6d117c0f6a07f','d4d82b3c2f804822b56501cb9ff094b6','2017-08-11 17:19:28',NULL,NULL),
('b54479da4a21469daf0abe49091fe8b1','4d81e88d-3021-4157-8d85-173ba6b142d9','1','b1b1','b1b1a1','2017-08-08 14:36:04',NULL,NULL),
('b6fa5a33792742c2a385922b66339d70','ae765dfc-d77e-434d-b119-2ca0ff3d66e4','1','6d4c5f6134ee495191c6d117c0f6a07f','293705dc09084976a210b50533c19967','2017-08-11 17:17:19',NULL,NULL),
('b7954d1b88274dd38ee2d9fb42b7bda3','aa43af8a-70bd-4b9d-aba8-347d5abb25de','1','b1b1','b1b1a1','2017-08-11 15:56:52',NULL,NULL),
('b7e2748943a34dd4909d909fd13fc0e0','76161742-cfa2-4b8d-af4c-4501617fe499','1','6d4c5f6134ee495191c6d117c0f6a07f','293705dc09084976a210b50533c19967','2017-08-08 11:05:03',NULL,NULL),
('bb032a47236f45a5b61f6f917bc9c953','9c53d2e3-706c-4bd8-9cf5-9fef5b790c58','2','a4a4',NULL,'2017-08-11 17:12:10',NULL,NULL),
('bea6a21ce1504c02afab12292575ee63','155d4f09-c2f4-4f48-8f82-cb8b4bb71a63','1','b4b4','ebafddb60dad47a98c1d5cc796579d74','2017-08-11 17:09:22',NULL,NULL),
('c22a2420daee4e35b0483c0a68e64b2e','c5b2be18-6f05-4c22-afe4-b43c1a09a16b','2','2323',NULL,'2017-08-11 17:37:58',NULL,NULL),
('c2c1ddb0f9d248a78022cec2edf77c96','ceb79cd0-a389-4115-8546-67310d93cf14','1','b3b3','d8438bef7d184bc3918585560ded37f5','2017-08-11 17:40:56',NULL,NULL),
('c2e577cf-2c94-4443-8074-38f2e0acd35e','d259f087-aead-41cc-9bf8-158c7c7ed78d','2','2323','5073a4ce94494972b8423d1ff8444656','2017-06-22 20:18:56',NULL,NULL),
('c405359689a6422eae7f241cbf4c4d17','dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23','2','2323',NULL,'2017-08-11 17:03:23',NULL,NULL),
('c447f8f0028e4062b2ac7b9b87471bca','a7c6fcef-acf7-4740-94e1-d65d9a08dff5','2','2323',NULL,'2017-08-11 16:02:26',NULL,NULL),
('c5397663-1779-42ce-ac80-c820c9e4413d','d259f087-aead-41cc-9bf8-158c7c7ed78d','1','b3b3','b1b1a2','2017-06-22 20:18:56',NULL,NULL),
('c7ea746171864c3d9d95141e579d9c85','aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc','1','b2b2','1cc8e58f977c4686b73c4fec555ec2c1','2017-08-11 16:01:02',NULL,NULL),
('c9e50d12581b42c6bd2c7c028cf8b917','247a8ae8-8829-49ea-9c09-19702a09bcf0','1','b2b2','4ddcb8033e5c476b840ab518322d0e6f','2017-08-11 16:40:01',NULL,NULL),
('cd073e14fc324c2980fad79e2ea91d05','1c8f9782-1d44-4b23-a55b-4bd4c8af1cf8','1','b4b4','22aa42ad361c45489b9e3bd61269a86c','2017-08-11 17:08:21',NULL,NULL),
('cd5d29bdba014eacb76a6cbad706a494','648fb5b4-2438-4956-b265-c5051855d649','1','b4b4','ebafddb60dad47a98c1d5cc796579d74','2017-08-11 15:03:53',NULL,NULL),
('ce762764298f4327b38c236003088232','d04f501c-ffb8-4c97-b9e1-7d9adc583467','1','6d4c5f6134ee495191c6d117c0f6a07f','d4d82b3c2f804822b56501cb9ff094b6','2017-08-11 17:18:51',NULL,NULL),
('cf4617057eaf4f39bfa8003754e03b45','49fb056f-7966-4323-b688-160fc119bd52','2','a2a2',NULL,'2017-08-11 17:38:29',NULL,NULL),
('d0cf7cca924447c6ba852732119a2bec','155d4f09-c2f4-4f48-8f82-cb8b4bb71a63','2','8b51040452e9407b827d00bff3d94de2',NULL,'2017-08-11 17:09:22',NULL,NULL),
('d13e2986cc09497d962553aab2043804','d3935bb9-4443-4d01-88ec-91162a53b787','1','6d4c5f6134ee495191c6d117c0f6a07f','293705dc09084976a210b50533c19967','2017-08-11 17:17:04',NULL,NULL),
('d4d69e27ad51469f97e64deea339b339','a2de35d3-8e52-4095-b221-bd68df085df5','1','b2b2','4ddcb8033e5c476b840ab518322d0e6f','2017-08-11 15:11:25',NULL,NULL),
('d4f153d30b714c82a6375d3c1d0f23fc','4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc','1','b4b4','ebafddb60dad47a98c1d5cc796579d74','2017-08-11 17:09:09',NULL,NULL),
('d513930142b9415baf06fe73f3a69cd1','e68aea74-ad40-42ce-b962-68642048ba1d','1','b3b3','d8438bef7d184bc3918585560ded37f5','2017-08-11 17:40:45',NULL,NULL),
('d9ab0dc4d9d247b1a9851f256675fbe1','40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1','2','2323',NULL,'2017-08-11 16:24:07',NULL,NULL),
('dafb5dcc53d543c6b15f7e052a73fbaa','7fed01bd-f4ca-4a89-8466-f0a7a3ac5051','1','b2b2','9d5f258c668b473e8f670ee89a9f8bf3','2017-08-11 16:19:21',NULL,NULL),
('e19ce1f6342d4998985d63c5ab5cbb10','65ec5ae9-2de3-4978-abd3-372151d799da','1','6d4c5f6134ee495191c6d117c0f6a07f','8abf4a4a9aa6483284da3be514c31437','2017-08-11 17:03:00',NULL,NULL),
('e383eed12d344d1fa1acfc54042a26b2','66df33bc-d169-45aa-addc-230700b893bf','2','aa12a85ed7614eb593ddc6deff1c6018',NULL,'2017-08-11 17:19:28',NULL,NULL),
('e3a53b623f2c48e1b7b3ee85576b2ca4','b10e9ca4-6cfd-4536-8d49-c61b25b36893','1','6d4c5f6134ee495191c6d117c0f6a07f','293705dc09084976a210b50533c19967','2017-08-11 17:13:02',NULL,NULL),
('e4590545bc924822a0e4c1024b5d02cf','9c53d2e3-706c-4bd8-9cf5-9fef5b790c58','1','6d4c5f6134ee495191c6d117c0f6a07f','293705dc09084976a210b50533c19967','2017-08-11 17:12:10',NULL,NULL),
('e7ba0f175a414909ac2908fc827d98df','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682','1','b3b3','d8438bef7d184bc3918585560ded37f5','2017-08-11 17:41:04',NULL,NULL),
('e9539c3d00904b1b91ddc7d5154ec015','22d7ce2c-21f5-4555-b24c-8b21a6db45a7','1','b2b2','7450a00ee56d4c7abcbcc7a848e2eaff','2017-08-11 16:32:08',NULL,NULL),
('e9e80eb70589418cbce639b2fef6829f','075e1340-a3c7-4fba-adea-bf40f9e0737d','2','2323',NULL,'2017-08-11 16:43:48',NULL,NULL),
('e9f16fc5d88742809b88d8634f969a2b','aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc','2','2323',NULL,'2017-08-11 16:01:02',NULL,NULL),
('ef435bf884664f80951df865ab9a6da3','a0087fc1-762a-4763-89e8-9dc6e5db973d','1','6d4c5f6134ee495191c6d117c0f6a07f','8abf4a4a9aa6483284da3be514c31437','2017-08-11 17:18:42',NULL,NULL),
('f10a68c30251475d8e69f9b4f678e89d','52f8a23f-5677-4b20-8364-5e170a83fe92','2','8b51040452e9407b827d00bff3d94de2',NULL,'2017-08-11 17:38:51',NULL,NULL),
('f221313fe1b84b279d24901287702db1','b10e9ca4-6cfd-4536-8d49-c61b25b36893','2','2323',NULL,'2017-08-11 17:13:02',NULL,NULL),
('f31fec8430eb434696a185d0b1e6043b','05b23faa-b771-4400-a27e-d156faa05455','1','b1b1','b1b1a2','2017-08-11 17:42:14',NULL,NULL),
('f6841f2659d04c0b8393fdab40706815','76161742-cfa2-4b8d-af4c-4501617fe499','2','aa12a85ed7614eb593ddc6deff1c6018',NULL,'2017-08-08 11:05:03',NULL,NULL),
('f6e11b153f3f4df887b7bbb882a9bd9e','8a756d88-2457-4888-9c7c-174e22a90c08','2','2323',NULL,'2017-08-11 16:23:00',NULL,NULL),
('f854ef23c8314033a9cf59bcadba486d','65ec5ae9-2de3-4978-abd3-372151d799da','2','c6ccdfefd092442eba4da2c0eb9ea0d7',NULL,'2017-08-11 17:03:00',NULL,NULL),
('f9d28c4546dc43ef97818ce5ef6b9ec6','e465fc07-7357-4a7a-b91e-ab1e9b31e259','1','b4b4','ebafddb60dad47a98c1d5cc796579d74','2017-08-11 17:09:43',NULL,NULL),
('fab6743856e4496b86986ad450aeefe6','ec16e5f2-c398-4549-9b24-c022c2cf0d06','2','76bd135206244c8b942dfda96e58edac',NULL,'2017-08-11 17:17:45',NULL,NULL),
('fc8a86f71efe4949bddb8572954a5bce','075e1340-a3c7-4fba-adea-bf40f9e0737d','1','b2b2','4ddcb8033e5c476b840ab518322d0e6f','2017-08-11 16:43:48',NULL,NULL),
('fcfecb5f27494063aef01db6205c7994','a0087fc1-762a-4763-89e8-9dc6e5db973d','2','2323',NULL,'2017-08-11 17:18:42',NULL,NULL);

/*Table structure for table `goods_meublecomment` */

DROP TABLE IF EXISTS `goods_meublecomment`;

CREATE TABLE `goods_meublecomment` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `acheteurEstimer` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '买家评价',
  `goodsNorms` varchar(850) COLLATE utf8_bin DEFAULT '' COMMENT '商品规格（有就填）',
  `pageRestituer` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '商家回复',
  `addTime` datetime DEFAULT NULL COMMENT '记录时间',
  `isNotState` tinyint(4) DEFAULT NULL COMMENT '评论是否展示（是：1 否：2）',
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联买家user_acount表主键编号',
  `bulletinId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联订单详情主键编号 如果是对订单评价则插入订单ID',
  `meubleId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联商品主键编号',
  `meubleCommentId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '如果是一级评价，则这个值为null',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `goods_meublecomment` */

/*Table structure for table `goods_meublecost` */

DROP TABLE IF EXISTS `goods_meublecost`;

CREATE TABLE `goods_meublecost` (
  `id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户标识值（主键）（唯一值）',
  `provinceId` int(11) DEFAULT NULL COMMENT '关联快递到的省份编号 默认为0',
  `marcheId` int(11) DEFAULT NULL COMMENT '关联快递到的市编号 默认为0',
  `districtId` int(11) DEFAULT NULL COMMENT '关联快递到的县编号 默认为0',
  `number` int(11) DEFAULT NULL COMMENT '默认运费的邮递数量',
  `fretTransport` decimal(10,2) DEFAULT NULL COMMENT '默认运费的邮递费用；单位：分',
  `augmenter` int(11) DEFAULT NULL COMMENT '超出默认运费的增加的邮递数量(每增加多少件)',
  `percevoirFret` decimal(10,2) DEFAULT NULL COMMENT '超出默认运费的增加的邮递费用(每增加多少件，额外增加多少费用)；单位：分',
  `isNotState` tinyint(4) DEFAULT NULL COMMENT '该省份邮费是否生效;1-生效；2-未生效；',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '对应的商品ID',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `goods_meublecost` */

/*Table structure for table `goods_meubleimage` */

DROP TABLE IF EXISTS `goods_meubleimage`;

CREATE TABLE `goods_meubleimage` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `meubleImage` varchar(220) COLLATE utf8_bin NOT NULL COMMENT '图片路径',
  `meubleId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '商品编号',
  `number` tinyint(4) DEFAULT '0' COMMENT '图片排序  值越小排在越前面',
  `isNotDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 1-未删除 2-已删除',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='家具商品头部图片';

/*Data for the table `goods_meubleimage` */

insert  into `goods_meubleimage`(`id`,`meubleImage`,`meubleId`,`number`,`isNotDelete`,`addTime`,`reserve1`,`reserve2`) values 
('0002920c49894a1a9489051ade404b44','http://qiniuti.7secai.cn/20170808102825_679.jpg','155d4f09-c2f4-4f48-8f82-cb8b4bb71a63',1,1,'2017-07-23 16:35:03',NULL,NULL),
('0063055ed0294be2aab40886805d088d','http://qiniuti.7secai.cn/20170714150648_251.jpg','64346f65-0850-4a5b-bc4e-4fd1ef1105f7',3,1,'2017-07-14 15:06:54',NULL,NULL),
('00c1f8ab585a40ea942aa1759f0ac40a','http://qiniuti.7secai.cn/20170723173323_703.jpeg','e465fc07-7357-4a7a-b91e-ab1e9b31e259',2,1,'2017-07-23 17:33:25',NULL,NULL),
('00eca599ef2f449f9cf25fa473c2fa87','http://qiniuti.7secai.cn/20170721165000_723.jpeg','b84718a2-7bd6-4ad1-a611-925d72834e6d',2,1,'2017-07-21 16:50:03',NULL,NULL),
('01b19cb0d9664e7eb063a97cf00ac140','http://qiniuti.7secai.cn/20170808114822_924.jpg','47f48c15-e092-4bc9-97c3-369f1932a704',1,1,'2017-07-18 10:00:10',NULL,NULL),
('01b3c9aa3a4d41a78ccb2808139044d6','http://qiniuti.7secai.cn/20170717113111_135.jpeg','4d81e88d-3021-4157-8d85-173ba6b142d9',2,1,'2017-07-17 11:31:14',NULL,NULL),
('0242f96b06fb4d4082e4064a151de61c','http://qiniuti.7secai.cn/20170723115632_851.jpg','648fb5b4-2438-4956-b265-c5051855d649',5,1,'2017-07-23 11:56:34',NULL,NULL),
('025105740ebc42079c7b1309f664d222','http://qiniuti.7secai.cn/20170808114853_475.jpg','47f48c15-e092-4bc9-97c3-369f1932a704',4,1,'2017-07-18 10:00:52',NULL,NULL),
('0478b5027fd64f9da5b617e0588e138d','http://qiniuti.7secai.cn/20170720111015_334.jpeg','40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1',3,2,'2017-07-20 11:10:18',NULL,NULL),
('04b940b1f04d4f4597984f0ff33dd649','http://qiniuti.7secai.cn/20170720161800_895.jpeg','22d7ce2c-21f5-4555-b24c-8b21a6db45a7',2,1,'2017-07-20 16:18:03',NULL,NULL),
('0564cfd62b164ae1ae43fe393e55ddfd','http://qiniuti.7secai.cn/20170725112154_476.jpeg','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682',3,1,'2017-07-25 11:21:56',NULL,NULL),
('064583bf74934b9d9c156a3a4bba0967','http://qiniuti.7secai.cn/20170720152045_540.jpg','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923',4,1,'2017-07-20 15:20:47',NULL,NULL),
('06ada84f82d74377a275fca2a158fb57','http://qiniuti.7secai.cn/20170808115336_738.jpg','9c2546ac-386d-4b45-bd90-a06c20ad82e4',4,1,'2017-07-17 12:05:07',NULL,NULL),
('080acfcbe1d54496bba7ce7916ce93b7','http://qiniuti.7secai.cn/20170808114214_635.jpg','3a626ae5-1e86-4b48-8d7d-464d544d6abb',2,1,'2017-07-18 16:56:55',NULL,NULL),
('0a37d622921f46f785d49fa99348a8c9','http://qiniuti.7secai.cn/20170808113956_660.jpg','aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc',4,1,'2017-07-19 09:52:41',NULL,NULL),
('0b0392400ba04c9683facb69ab04791e','http://qiniuti.7secai.cn/20170714150724_103.jpg','64346f65-0850-4a5b-bc4e-4fd1ef1105f7',5,1,'2017-07-14 15:07:28',NULL,NULL),
('0d532266ea204b2c9c81aef4093f27fd','http://qiniuti.7secai.cn/20170718165746_690.jpeg','3a626ae5-1e86-4b48-8d7d-464d544d6abb',4,1,'2017-07-18 16:57:49',NULL,NULL),
('0db2758dd45f41c8b6393d0067d8d3e8','http://qiniuti.7secai.cn/20170720182645_56.jpg','eeddcc98-fb5c-4147-af33-59587d6548e8',3,1,'2017-07-20 18:26:47',NULL,NULL),
('0dbd51f5f2314b8cacf58a5ded1c3736','http://qiniuti.7secai.cn/20170720182634_397.jpg','eeddcc98-fb5c-4147-af33-59587d6548e8',2,1,'2017-07-20 18:26:37',NULL,NULL),
('1059b3c617f74ff1a2c0a96b6f6aa9e1','http://qiniuti.7secai.cn/20170719113422_847.jpg','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c',4,1,'2017-07-19 11:34:25',NULL,NULL),
('10d584ba4e7946e18dc5d5e35d9662be','http://qiniuti.7secai.cn/20170720115220_489.jpeg','4fd6f502-b89a-48aa-9beb-b36b3f95318f',1,1,'2017-07-20 11:52:23',NULL,NULL),
('1129295accdf4c999ada07d470b33529','http://qiniuti.7secai.cn/20170808102037_931.jpg','d3935bb9-4443-4d01-88ec-91162a53b787',1,1,'2017-07-24 11:38:10',NULL,NULL),
('120732e9a2db46dd914307fc38b586fb','http://qiniuti.7secai.cn/20170808115313_558.jpg','9c2546ac-386d-4b45-bd90-a06c20ad82e4',2,1,'2017-07-17 12:04:37',NULL,NULL),
('136381df087441c09332b60bbc1df8b1','http://qiniuti.7secai.cn/20170724155340_571.jpg','a0087fc1-762a-4763-89e8-9dc6e5db973d',2,1,'2017-07-24 15:53:42',NULL,NULL),
('152c22023e4a40518fb7aba98bc643d5','http://qiniuti.7secai.cn/20170722183224_659.jpg','1c8f9782-1d44-4b23-a55b-4bd4c8af1cf8',3,1,'2017-07-22 18:32:26',NULL,NULL),
('156d267313c24bf1888bbd29793f7aed','http://qiniuti.7secai.cn/20170720115250_354.jpeg','4fd6f502-b89a-48aa-9beb-b36b3f95318f',4,1,'2017-07-20 11:52:52',NULL,NULL),
('15be5bf9b45c464fb5ce53f302edce3b','http://qiniuti.7secai.cn/20170721111108_186.jpg','075e1340-a3c7-4fba-adea-bf40f9e0737d',3,1,'2017-07-21 11:11:10',NULL,NULL),
('1868d54eed104b939cdd318911372a8d','http://qiniuti.7secai.cn/20170721153233_231.jpg','09ab1f2a-9af8-44c3-99d6-db52881bde7c',4,1,'2017-07-21 15:32:35',NULL,NULL),
('19a3d049fb0c49d6a736a8352080011a','http://qiniuti.7secai.cn/20170722183124_316.jpeg','dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23',2,1,'2017-07-22 18:31:28',NULL,NULL),
('1a9bc65e89eb488197fee1775279500a','http://qiniuti.7secai.cn/20170718154504_194.jpeg','1ed90e16-847d-43de-9d5a-7d89571455e8',3,1,'2017-07-18 15:45:06',NULL,NULL),
('1c488dadd73b405aba37d65c37bfaf1f','http://qiniuti.7secai.cn/20170808102732_898.jpg','2c56e0f8-9ae8-430d-9d0d-091e8dd1e838',1,1,'2017-07-23 17:09:48',NULL,NULL),
('1c724772b28f4eb7b8585f340583ef66','http://qiniuti.7secai.cn/20170721174252_71.jpeg','8b702180-3066-4603-b9c7-e1576d36baa3',3,1,'2017-07-21 17:42:54',NULL,NULL),
('1d77e45e97394169b09b24fbf041e68f','http://qiniuti.7secai.cn/20170722183111_537.jpeg','dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23',1,1,'2017-07-22 18:31:13',NULL,NULL),
('1e2383d4c8714dc382e41cbee6e33199','http://qiniuti.7secai.cn/20170724175833_499.jpg','636b4a1f-603e-41a9-8472-2c59459b2cd9',5,1,'2017-07-24 17:58:35',NULL,NULL),
('1f2c2291bf8140bf975e1ae79cc6f4e4','http://qiniuti.7secai.cn/20170808115349_782.jpg','9c2546ac-386d-4b45-bd90-a06c20ad82e4',5,1,'2017-07-17 12:05:22',NULL,NULL),
('210684f0d24f44f39c7743eebd04e254','http://qiniuti.7secai.cn/20170720145617_500.jpg','f1fddf3f-92f3-4fab-a226-1fb61a3bc17d',3,1,'2017-07-20 14:56:20',NULL,NULL),
('22f7f942f7884f1a86e26c16675d7ecd','http://qiniuti.7secai.cn/20170714150629_549.jpg','64346f65-0850-4a5b-bc4e-4fd1ef1105f7',2,1,'2017-07-14 15:06:36',NULL,NULL),
('23bbf6a6b89d449d827ce529035c2f34','http://qiniuti.7secai.cn/20170720142101_757.jpeg','faf566d3-daff-4f9a-a1a4-5b8fa75b9e50',2,1,'2017-07-20 14:21:04',NULL,NULL),
('25720d7b56854238ac4b1ec5636ead99','http://qiniuti.7secai.cn/20170718091946_85.jpeg','e33166ac-8fdb-4296-a75c-32ba11b701d0',5,1,'2017-07-18 09:19:49',NULL,NULL),
('267647ba158f4359ba913a2de686f66d','http://qiniuti.7secai.cn/20170808142403_789.jpg','075e1340-a3c7-4fba-adea-bf40f9e0737d',1,1,'2017-07-21 11:10:42',NULL,NULL),
('287cc75973654ffe8a379200918ad6bd','http://qiniuti.7secai.cn/20170808113945_775.jpg','aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc',1,1,'2017-07-19 09:52:10',NULL,NULL),
('2a188fa7e58746579deba89a55dddef3','http://qiniuti.7secai.cn/20170719145910_508.jpeg','a7c6fcef-acf7-4740-94e1-d65d9a08dff5',5,1,'2017-07-19 14:59:14',NULL,NULL),
('2b0d8eadfc7444ba95c12bf350381e6f','http://qiniuti.7secai.cn/20170808115901_225.jpg','bbe59f47-c4fd-4817-8849-7149162c55e8',2,1,'2017-07-14 18:03:12',NULL,NULL),
('2b3ba3adf691457c94b29c47878f9a31','http://qiniuti.7secai.cn/20170719095218_307.jpeg','aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc',2,1,'2017-07-19 09:52:20',NULL,NULL),
('2cbba55fcfe54099991c076f2fd84d14','http://qiniuti.7secai.cn/20170719170743_147.jpeg','95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed',1,1,'2017-07-19 17:07:45',NULL,NULL),
('2da3ee41391a4c4abf55dc0768546f2b','http://qiniuti.7secai.cn/20170808142201_902.jpeg','05b23faa-b771-4400-a27e-d156faa05455',1,1,'2017-07-17 14:39:32',NULL,NULL),
('2db2d19f3dcb4a54aa29ccde039db0b1','http://qiniuti.7secai.cn/20170724144935_855.jpg','ec16e5f2-c398-4549-9b24-c022c2cf0d06',3,1,'2017-07-24 14:49:38',NULL,NULL),
('2e4815958dd94c2398257d22344521a8','http://qiniuti.7secai.cn/20170808104912_805.jpg','faf566d3-daff-4f9a-a1a4-5b8fa75b9e50',3,1,'2017-07-20 14:21:16',NULL,NULL),
('2eaeeae989b440ca9f670dedb6776234','http://qiniuti.7secai.cn/20170808114843_912.jpg','47f48c15-e092-4bc9-97c3-369f1932a704',3,1,'2017-07-18 10:00:32',NULL,NULL),
('2ecf4b323cbc4f9ead3abc01f99c9aa6','http://qiniuti.7secai.cn/20170720161749_646.jpeg','22d7ce2c-21f5-4555-b24c-8b21a6db45a7',1,1,'2017-07-20 16:17:53',NULL,NULL),
('2f027bd982b74ac8b3d314dd70613133','http://qiniuti.7secai.cn/20170721162934_481.jpeg','ec47b4e8-b4a7-4604-939b-eaaf4deef359',1,1,'2017-07-21 16:29:37',NULL,NULL),
('2f5db913912141168bdf1c2c146f6e14','http://qiniuti.7secai.cn/20170722183146_216.jpeg','dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23',4,1,'2017-07-22 18:31:49',NULL,NULL),
('311758acc6b74759aa05e0ecb45b3ca5','http://qiniuti.7secai.cn/20170808115327_339.jpg','9c2546ac-386d-4b45-bd90-a06c20ad82e4',3,1,'2017-07-17 12:04:49',NULL,NULL),
('32209f8bc7b44406ad543d55d33405ff','http://qiniuti.7secai.cn/20170723115623_313.jpg','648fb5b4-2438-4956-b265-c5051855d649',4,1,'2017-07-23 11:56:25',NULL,NULL),
('32757740cd47448b95e74242b904e448','http://qiniuti.7secai.cn/20170720152035_108.jpg','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923',3,1,'2017-07-20 15:20:37',NULL,NULL),
('3279f1743d27424e94fba5450580c683','http://qiniuti.7secai.cn/20170724151453_216.jpg','246cb90e-7731-496b-a3bb-926f6d500e4a',5,1,'2017-07-24 15:14:55',NULL,NULL),
('32b21124c545441e96dfafad8371c46b','http://qiniuti.7secai.cn/20170719142353_345.jpeg','49fb056f-7966-4323-b688-160fc119bd52',2,1,'2017-07-19 14:23:55',NULL,NULL),
('32bb2801cabc47c2bd4100222e4dc6b7','http://qiniuti.7secai.cn/20170721143845_270.jpg','a2de35d3-8e52-4095-b221-bd68df085df5',5,1,'2017-07-21 14:38:47',NULL,NULL),
('32c1617e670546e3b0ac6dcc537399dc','http://qiniuti.7secai.cn/20170718092700_186.jpg','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8',3,1,'2017-07-18 09:27:03',NULL,NULL),
('34b9d9faf6964b74aabc7854a02733a3','http://qiniuti.7secai.cn/20170723161102_388.jpeg','4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc',1,1,'2017-07-23 16:11:04',NULL,NULL),
('36e93f9cfdf54d90bfab88f1ac6d791f','http://qiniuti.7secai.cn/20170808110107_264.jpg','4b67e210-b432-418b-a63b-443d00948522',1,1,'2017-07-20 10:12:23',NULL,NULL),
('39c8b60c5b2548d7985fb16833d44fdc','http://qiniuti.7secai.cn/20170719160527_88.jpeg','aeaace68-bb2d-42c3-bc68-10e1b360d873',1,1,'2017-07-19 16:05:30',NULL,NULL),
('3a0674de61b345b9bc7cc6291271585f','http://qiniuti.7secai.cn/20170719173545_654.jpg','7fed01bd-f4ca-4a89-8466-f0a7a3ac5051',5,1,'2017-07-19 17:35:47',NULL,NULL),
('3a4a78d43c6444748fd78f6d1541b04d','http://qiniuti.7secai.cn/20170719104536_259.jpeg','52f8a23f-5677-4b20-8364-5e170a83fe92',2,1,'2017-07-19 10:45:39',NULL,NULL),
('3a8f0ed2cc794b9b89f121ec068aa2bf','http://qiniuti.7secai.cn/20170714150708_969.jpg','64346f65-0850-4a5b-bc4e-4fd1ef1105f7',4,1,'2017-07-14 15:07:13',NULL,NULL),
('3b628d62865f4868a37e4de1c69dad28','http://qiniuti.7secai.cn/20170718091906_278.jpeg','e33166ac-8fdb-4296-a75c-32ba11b701d0',2,1,'2017-07-18 09:19:09',NULL,NULL),
('3b89c4e26eac442d805edc85d3792271','http://qiniuti.7secai.cn/20170724140814_623.jpeg','ae765dfc-d77e-434d-b119-2ca0ff3d66e4',4,1,'2017-07-24 14:08:17',NULL,NULL),
('3c386a073f904dbfb4ffffb3c02ffca7','http://qiniuti.7secai.cn/20170808095637_611.jpg','e68aea74-ad40-42ce-b962-68642048ba1d',1,1,'2017-07-25 10:00:08',NULL,NULL),
('3d59da2735cd4a61a4b5db866f011f67','http://qiniuti.7secai.cn/20170724111041_3.jpg','b10e9ca4-6cfd-4536-8d49-c61b25b36893',4,1,'2017-07-24 11:10:44',NULL,NULL),
('3dd51b3b225749a2bf0bb6c690bb8644','http://qiniuti.7secai.cn/20170721174233_50.jpeg','8b702180-3066-4603-b9c7-e1576d36baa3',1,1,'2017-07-21 17:42:35',NULL,NULL),
('3fb884b17c944c119db344d89c3870db','http://qiniuti.7secai.cn/20170724175823_198.jpg','636b4a1f-603e-41a9-8472-2c59459b2cd9',4,1,'2017-07-24 17:58:26',NULL,NULL),
('3fd8e2631f664c2f917712adc9531ca8','http://qiniuti.7secai.cn/20170718113420_492.jpg','76161742-cfa2-4b8d-af4c-4501617fe499',3,1,'2017-07-18 11:34:22',NULL,NULL),
('401301840f8e44fe9ec7b64a58b6a5ac','http://qiniuti.7secai.cn/20170724155423_548.jpg','a0087fc1-762a-4763-89e8-9dc6e5db973d',5,1,'2017-07-24 15:54:26',NULL,NULL),
('402f68cd067c4e50bb1dcfcdfd1fab60','http://qiniuti.7secai.cn/20170722183136_141.jpeg','dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23',3,1,'2017-07-22 18:31:39',NULL,NULL),
('4262b7aaab7b4316948deca639b67379','http://qiniuti.7secai.cn/20170719154057_630.jpg','1fa4d900-4d98-4803-8f83-18a0889c34b2',2,1,'2017-07-19 15:41:00',NULL,NULL),
('42caa53e275447fba8eae349b68b1119','http://qiniuti.7secai.cn/20170718094332_434.jpg','adfc04ec-eeaa-4773-9189-94d2c2d24669',3,1,'2017-07-18 09:43:35',NULL,NULL),
('43b79bf14cf4453bb52c332cc9dec798','http://qiniuti.7secai.cn/20170720155006_199.jpg','c2fdb4db-41cb-4575-9741-687c33773254',3,1,'2017-07-20 15:50:14',NULL,NULL),
('444da51a49f0477daedc4c658bb874e4','http://qiniuti.7secai.cn/20170808103249_44.jpg','1c8f9782-1d44-4b23-a55b-4bd4c8af1cf8',1,1,'2017-07-22 18:32:05',NULL,NULL),
('44e65524d0d545748488983916d67bb8','http://qiniuti.7secai.cn/20170720113511_382.jpg','a223f0d3-1e0e-4515-83ac-644db7f3571b',5,1,'2017-07-20 11:35:14',NULL,NULL),
('4713d61e098d4f7da899747ec2928596','http://qiniuti.7secai.cn/20170723115612_61.jpg','648fb5b4-2438-4956-b265-c5051855d649',3,1,'2017-07-23 11:56:14',NULL,NULL),
('47c7bff39a42493cb5280fa20715a2c2','http://qiniuti.7secai.cn/20170719145900_321.jpeg','a7c6fcef-acf7-4740-94e1-d65d9a08dff5',4,1,'2017-07-19 14:59:03',NULL,NULL),
('481d4527ab5d40a28fd2cacdbad64a83','http://qiniuti.7secai.cn/20170723112848_107.jpg','5829c0a5-06e4-43ef-80b6-37089d706b10',5,1,'2017-07-23 11:28:51',NULL,NULL),
('4883f01976c34abfab466758ae04d80f','http://qiniuti.7secai.cn/20170723170957_220.jpeg','2c56e0f8-9ae8-430d-9d0d-091e8dd1e838',2,1,'2017-07-23 17:09:59',NULL,NULL),
('4973ba5ff1ab43ccb6384b7d3fac9695','http://qiniuti.7secai.cn/20170720164520_649.jpeg','64e8cb63-0a26-46d2-81af-6cea9e8c5de8',2,1,'2017-07-20 16:45:22',NULL,NULL),
('4a7fd31ee86b4ec48e05aa4314bad23b','http://qiniuti.7secai.cn/20170724155412_655.jpg','a0087fc1-762a-4763-89e8-9dc6e5db973d',4,1,'2017-07-24 15:54:03',NULL,NULL),
('4c596b6d3a68469889148dd8f3031327','http://qiniuti.7secai.cn/20170724170537_193.jpg','66df33bc-d169-45aa-addc-230700b893bf',4,1,'2017-07-24 17:05:28',NULL,NULL),
('4cad37c1e0cc41e0a7857736c05484a3','http://qiniuti.7secai.cn/20170724100615_656.jpeg','b588c021-e269-4bdd-9a09-8c12dfc9476b',1,1,'2017-07-24 10:06:18',NULL,NULL),
('4cb41d22050145829173c23fc25ddea6','http://qiniuti.7secai.cn/20170723163513_54.jpeg','155d4f09-c2f4-4f48-8f82-cb8b4bb71a63',2,1,'2017-07-23 16:35:15',NULL,NULL),
('4ce5aa86c1374e51bc9c9f0431a799ab','http://qiniuti.7secai.cn/20170725105054_541.jpeg','ceb79cd0-a389-4115-8546-67310d93cf14',2,1,'2017-07-25 10:50:56',NULL,NULL),
('4f0163c5f1f84b0cb9f820fa6ae4de7d','http://qiniuti.7secai.cn/20170720182655_154.jpg','eeddcc98-fb5c-4147-af33-59587d6548e8',4,1,'2017-07-20 18:26:57',NULL,NULL),
('501bf26f1133454daa62da23af6a39c2','http://qiniuti.7secai.cn/20170721155919_235.jpeg','256450cc-26ef-4585-9083-e9f1dd572fec',2,1,'2017-07-21 15:59:21',NULL,NULL),
('51b20917bcbe4bf28f65cb52b3ab6985','http://qiniuti.7secai.cn/20170718092712_955.jpg','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8',4,1,'2017-07-18 09:27:16',NULL,NULL),
('52c2f974e446454e8b1e8e6194e72380','http://qiniuti.7secai.cn/20170724113817_37.jpg','d3935bb9-4443-4d01-88ec-91162a53b787',2,1,'2017-07-24 11:38:20',NULL,NULL),
('53a5514610aa4710aff8ae05cc328d2d','http://qiniuti.7secai.cn/20170725112135_731.jpeg','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682',1,1,'2017-07-25 11:21:37',NULL,NULL),
('54b8c6465a7944dda86a255881539578','http://qiniuti.7secai.cn/20170808114204_553.jpg','3a626ae5-1e86-4b48-8d7d-464d544d6abb',1,1,'2017-07-18 16:56:44',NULL,NULL),
('55da0eefde2c4fed884342cc2b09597e','http://qiniuti.7secai.cn/20170808143806_583.jpeg','e33166ac-8fdb-4296-a75c-32ba11b701d0',1,1,'2017-07-18 09:18:55',NULL,NULL),
('582560517918423788a46f6f2be268db','http://qiniuti.7secai.cn/20170724144739_128.jpg','ec16e5f2-c398-4549-9b24-c022c2cf0d06',2,1,'2017-07-24 14:47:42',NULL,NULL),
('591329c8c183446f8240581ae6148b25','http://qiniuti.7secai.cn/20170719160549_768.jpeg','aeaace68-bb2d-42c3-bc68-10e1b360d873',3,1,'2017-07-19 16:05:52',NULL,NULL),
('5924473a0fa74ecca4e9f3950e8e9448','http://qiniuti.7secai.cn/20170808103824_89.jpg','09ab1f2a-9af8-44c3-99d6-db52881bde7c',1,1,'2017-07-21 15:31:30',NULL,NULL),
('5a7a24f9ce454be8b2e3c4ebed3d1fb8','http://qiniuti.7secai.cn/20170720111036_687.jpeg','40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1',4,1,'2017-07-20 11:10:39',NULL,NULL),
('5c1d92544419425ba665dcbbd992182f','http://qiniuti.7secai.cn/20170718091932_758.jpeg','e33166ac-8fdb-4296-a75c-32ba11b701d0',4,1,'2017-07-18 09:19:35',NULL,NULL),
('5c706341006443638f028ec77335eba3','http://qiniuti.7secai.cn/20170714180323_111.jpg','bbe59f47-c4fd-4817-8849-7149162c55e8',3,1,'2017-07-14 18:03:27',NULL,NULL),
('5d3e1795834442a190f2689394e7ef47','http://qiniuti.7secai.cn/20170724140747_401.jpeg','ae765dfc-d77e-434d-b119-2ca0ff3d66e4',2,1,'2017-07-24 14:07:49',NULL,NULL),
('5da25f3ea81f4fa88347a1b9c2df2223','http://qiniuti.7secai.cn/20170724175811_828.jpg','636b4a1f-603e-41a9-8472-2c59459b2cd9',3,1,'2017-07-24 17:58:14',NULL,NULL),
('5dcdce1ca3224d478727a7903832ca21','http://qiniuti.7secai.cn/20170724100817_884.jpeg','b588c021-e269-4bdd-9a09-8c12dfc9476b',3,1,'2017-07-24 10:08:19',NULL,NULL),
('5e92259db8704de989752276e50c7a28','http://qiniuti.7secai.cn/20170719170828_991.jpeg','95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed',5,1,'2017-07-19 17:08:31',NULL,NULL),
('5f1b71aad6054f96be0e59125593e4ff','http://qiniuti.7secai.cn/20170808110116_618.jpg','4b67e210-b432-418b-a63b-443d00948522',2,1,'2017-07-20 10:12:33',NULL,NULL),
('5f1d32cf841e4f709812bd670a4da907','http://qiniuti.7secai.cn/20170724151432_577.jpg','246cb90e-7731-496b-a3bb-926f6d500e4a',3,1,'2017-07-24 15:14:35',NULL,NULL),
('5f2ee5563082478d9a2d83dd26e915c1','http://qiniuti.7secai.cn/20170718094322_71.jpg','adfc04ec-eeaa-4773-9189-94d2c2d24669',2,1,'2017-07-18 09:43:24',NULL,NULL),
('5f63419fe400448891a8f9264655231f','http://qiniuti.7secai.cn/20170719170816_216.jpeg','95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed',4,1,'2017-07-19 17:08:19',NULL,NULL),
('601579c152ba45e688865224fdbc7678','http://qiniuti.7secai.cn/20170723105518_615.jpeg','cae6d4e9-d785-423c-884c-8b242f7c44da',1,1,'2017-07-23 10:55:20',NULL,NULL),
('6120659653ec4b26b8cfb33b7564237e','http://qiniuti.7secai.cn/20170808101128_540.jpg','246cb90e-7731-496b-a3bb-926f6d500e4a',1,1,'2017-07-24 15:14:13',NULL,NULL),
('6126787f613c44c38fc2fbb296c8cf3a','http://qiniuti.7secai.cn/20170721171243_490.jpeg','e31ee61c-e35d-479b-bf23-10367bb0c392',2,1,'2017-07-21 17:12:46',NULL,NULL),
('62e45816b70a46af8a66ad0c8428d050','http://qiniuti.7secai.cn/20170719113400_349.jpeg','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c',2,1,'2017-07-19 11:34:02',NULL,NULL),
('635ef47b726a46f29f59d492fe008eba','http://qiniuti.7secai.cn/20170808112941_486.jpg','8a756d88-2457-4888-9c7c-174e22a90c08',4,1,'2017-07-20 09:33:45',NULL,NULL),
('63ef36c1657e4085adf3c87882e7777c','http://qiniuti.7secai.cn/20170718165703_949.jpeg','3a626ae5-1e86-4b48-8d7d-464d544d6abb',3,1,'2017-07-18 16:57:05',NULL,NULL),
('643855f69436462b84e1b6bec6852f6a','http://qiniuti.7secai.cn/20170723161051_595.jpeg','4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc',2,1,'2017-07-23 16:10:53',NULL,NULL),
('6524c388355c480a925ac823a7ba9b9d','http://qiniuti.7secai.cn/20170724100805_133.jpeg','b588c021-e269-4bdd-9a09-8c12dfc9476b',2,1,'2017-07-24 10:08:09',NULL,NULL),
('65564b43520140aca3b5eb360288445d','http://qiniuti.7secai.cn/20170718154451_567.jpeg','1ed90e16-847d-43de-9d5a-7d89571455e8',2,1,'2017-07-18 15:44:53',NULL,NULL),
('673cff0203ce4487bbce1514c476e3d6','http://qiniuti.7secai.cn/20170808120017_870.jpg','64346f65-0850-4a5b-bc4e-4fd1ef1105f7',1,1,'2017-07-14 15:06:12',NULL,NULL),
('68a440af15184efc81a6a30e23dc581c','http://qiniuti.7secai.cn/20170721155950_263.jpeg','256450cc-26ef-4585-9083-e9f1dd572fec',5,1,'2017-07-21 15:59:52',NULL,NULL),
('693195c1b7c7431abf9f75cefbbfa851','http://qiniuti.7secai.cn/20170723105546_95.jpeg','cae6d4e9-d785-423c-884c-8b242f7c44da',3,1,'2017-07-23 10:55:49',NULL,NULL),
('6944bded6a854ddd8b37edee195ef69f','http://qiniuti.7secai.cn/20170719113411_320.jpeg','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c',3,1,'2017-07-19 11:34:14',NULL,NULL),
('6a2c06281ae641f290227216835eb34b','http://qiniuti.7secai.cn/20170725112214_24.jpeg','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682',5,1,'2017-07-25 11:22:16',NULL,NULL),
('6aad4aa09a144a868594d3b0522c3df9','http://qiniuti.7secai.cn/20170721143835_666.jpg','a2de35d3-8e52-4095-b221-bd68df085df5',4,1,'2017-07-21 14:38:37',NULL,NULL),
('6b2ec5e9ebd04da6bb60f465c0f0a195','http://qiniuti.7secai.cn/20170721171254_196.jpeg','e31ee61c-e35d-479b-bf23-10367bb0c392',3,1,'2017-07-21 17:12:57',NULL,NULL),
('6ce00bbec78a4012b46c2ff5c467c0ad','http://qiniuti.7secai.cn/20170808112855_232.jpg','8a756d88-2457-4888-9c7c-174e22a90c08',2,1,'2017-07-20 09:33:23',NULL,NULL),
('6d2291dac9d54f3ab66df9cfa010fc72','http://qiniuti.7secai.cn/20170721165009_443.jpeg','b84718a2-7bd6-4ad1-a611-925d72834e6d',3,1,'2017-07-21 16:50:11',NULL,NULL),
('6d4281f57a4f4d88aff373b2153a3a9b','http://qiniuti.7secai.cn/20170721143805_290.jpg','a2de35d3-8e52-4095-b221-bd68df085df5',2,1,'2017-07-21 14:38:08',NULL,NULL),
('6d96795c63a4443ba85f008459c1a81d','http://qiniuti.7secai.cn/20170721153220_783.jpeg','09ab1f2a-9af8-44c3-99d6-db52881bde7c',3,1,'2017-07-21 15:32:22',NULL,NULL),
('6eee81737c9b4d20a57959782733be62','http://qiniuti.7secai.cn/20170808115715_484.jpg','aa43af8a-70bd-4b9d-aba8-347d5abb25de',1,1,'2017-07-17 10:45:42',NULL,NULL),
('6fca49793f1b4e79b065dab4b2ba2b58','http://qiniuti.7secai.cn/20170720113428_142.jpg','a223f0d3-1e0e-4515-83ac-644db7f3571b',2,1,'2017-07-20 11:34:30',NULL,NULL),
('70d176d8766d405bb2450a7dfafa255a','http://qiniuti.7secai.cn/20170721111121_850.jpg','075e1340-a3c7-4fba-adea-bf40f9e0737d',4,1,'2017-07-21 11:11:24',NULL,NULL),
('73fbb4031b7d495389e38da282682c03','http://qiniuti.7secai.cn/20170808104812_353.jpg','faf566d3-daff-4f9a-a1a4-5b8fa75b9e50',1,1,'2017-07-20 14:20:54',NULL,NULL),
('749f7dba5ae04d7eaf9bda612ef892eb','http://qiniuti.7secai.cn/20170718094353_740.jpg','adfc04ec-eeaa-4773-9189-94d2c2d24669',5,1,'2017-07-18 09:43:56',NULL,NULL),
('76c5dab2324044e6a110d38dd11ad1af','http://qiniuti.7secai.cn/20170724140800_2.jpeg','ae765dfc-d77e-434d-b119-2ca0ff3d66e4',3,1,'2017-07-24 14:08:03',NULL,NULL),
('76cae28def9a46b7aee8321a5b4ef032','http://qiniuti.7secai.cn/20170721164952_189.jpeg','b84718a2-7bd6-4ad1-a611-925d72834e6d',1,1,'2017-07-21 16:49:54',NULL,NULL),
('77d6cd92b31646c982b0260a48d717f8','http://qiniuti.7secai.cn/20170718174608_630.jpeg','d5cbe572-b343-4498-9770-ef0e80ea97d1',1,1,'2017-07-18 17:46:11',NULL,NULL),
('78931ad3aa2448e090bafaa1b8068f63','http://qiniuti.7secai.cn/20170808113225_416.jpg','c5b2be18-6f05-4c22-afe4-b43c1a09a16b',2,1,'2017-07-19 18:18:00',NULL,NULL),
('79a76ed5ab1043d08dac64f3690be32c','http://qiniuti.7secai.cn/20170719145827_941.jpg','a7c6fcef-acf7-4740-94e1-d65d9a08dff5',2,1,'2017-07-19 14:58:29',NULL,NULL),
('79af7373dfe74ef88ee3dbb2ab94a219','http://qiniuti.7secai.cn/20170723112811_371.jpg','5829c0a5-06e4-43ef-80b6-37089d706b10',2,1,'2017-07-23 11:28:13',NULL,NULL),
('7a122fdd677d48bbb0dcc1ec9df8a51e','http://qiniuti.7secai.cn/20170725112144_466.jpeg','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682',2,1,'2017-07-25 11:21:46',NULL,NULL),
('7a9e803e48814932afb1129803a2824c','http://qiniuti.7secai.cn/20170720145605_210.jpg','f1fddf3f-92f3-4fab-a226-1fb61a3bc17d',2,1,'2017-07-20 14:56:08',NULL,NULL),
('7ab492236b9640e6a0a8ca4690cd51e6','http://qiniuti.7secai.cn/20170718091919_667.jpeg','e33166ac-8fdb-4296-a75c-32ba11b701d0',3,1,'2017-07-18 09:19:22',NULL,NULL),
('7bcba660c9fd4e5f906199893bd5e754','http://qiniuti.7secai.cn/20170724113850_78.jpg','d3935bb9-4443-4d01-88ec-91162a53b787',5,1,'2017-07-24 11:38:57',NULL,NULL),
('7c11437552f44e71b6d69ec74a5d9c8b','http://qiniuti.7secai.cn/20170718094343_935.jpg','adfc04ec-eeaa-4773-9189-94d2c2d24669',4,1,'2017-07-18 09:43:45',NULL,NULL),
('7cc32814901f47afab8711f4f78e93cd','http://qiniuti.7secai.cn/20170721155940_412.jpeg','256450cc-26ef-4585-9083-e9f1dd572fec',4,1,'2017-07-21 15:59:42',NULL,NULL),
('7d2013f7af034b8d8c5006c73802af27','http://qiniuti.7secai.cn/20170717143941_841.jpeg','05b23faa-b771-4400-a27e-d156faa05455',2,1,'2017-07-17 14:39:44',NULL,NULL),
('7d4767277f41458f9852d68646394133','http://qiniuti.7secai.cn/20170808115436_572.jpeg','4d81e88d-3021-4157-8d85-173ba6b142d9',1,1,'2017-07-17 11:30:58',NULL,NULL),
('7d6d539d1f2547a9ac4656715e9e8c6a','http://qiniuti.7secai.cn/20170719154044_222.jpg','1fa4d900-4d98-4803-8f83-18a0889c34b2',1,1,'2017-07-19 15:40:46',NULL,NULL),
('7f3c50cfd19a444cb5b375007d214b33','http://qiniuti.7secai.cn/20170808102236_761.jpg','b10e9ca4-6cfd-4536-8d49-c61b25b36893',1,1,'2017-07-24 11:10:13',NULL,NULL),
('7f931cfe7e8e447294615e9607d3633a','http://qiniuti.7secai.cn/20170718174619_644.jpeg','d5cbe572-b343-4498-9770-ef0e80ea97d1',2,1,'2017-07-18 17:46:21',NULL,NULL),
('7f9a3e976e7a434ab83200134b2a0330','http://qiniuti.7secai.cn/20170719173504_574.jpg','7fed01bd-f4ca-4a89-8466-f0a7a3ac5051',1,1,'2017-07-19 17:35:07',NULL,NULL),
('80f44d92a15d447fbd9b4e13116e81a6','http://qiniuti.7secai.cn/20170718092637_704.jpeg','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8',1,1,'2017-07-18 09:26:40',NULL,NULL),
('811a1fc7005f4c15a48e4f951ed56435','http://qiniuti.7secai.cn/20170719145813_798.jpeg','a7c6fcef-acf7-4740-94e1-d65d9a08dff5',1,1,'2017-07-19 14:58:16',NULL,NULL),
('8138585af1044137958227a53b5229c4','http://qiniuti.7secai.cn/20170721102823_868.jpg','247a8ae8-8829-49ea-9c09-19702a09bcf0',2,1,'2017-07-21 10:28:26',NULL,NULL),
('81f1f49d18104fe88c895335626138a5','http://qiniuti.7secai.cn/20170720181949_783.jpeg','d627acee-6b26-4f92-8a4d-377b0019345e',1,1,'2017-07-20 18:19:51',NULL,NULL),
('854625390e2a40cdbc79ff2f30cc83d3','http://qiniuti.7secai.cn/20170725140533_383.jpg','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd',5,1,'2017-07-25 14:05:36',NULL,NULL),
('88c4ffb0653844869b94d7370f5d15e4','http://qiniuti.7secai.cn/20170717143953_31.jpeg','05b23faa-b771-4400-a27e-d156faa05455',3,1,'2017-07-17 14:39:57',NULL,NULL),
('88c5e18cc9e741458e95e3a49e5565d4','http://qiniuti.7secai.cn/20170724113828_230.jpg','d3935bb9-4443-4d01-88ec-91162a53b787',3,1,'2017-07-24 11:38:30',NULL,NULL),
('8a35439284374a548a8bb658cb1214a4','http://qiniuti.7secai.cn/20170719154124_458.jpeg','1fa4d900-4d98-4803-8f83-18a0889c34b2',4,1,'2017-07-19 15:41:27',NULL,NULL),
('8ab1478efb464309a1e65b9fdd972751','http://qiniuti.7secai.cn/20170721171234_932.jpeg','e31ee61c-e35d-479b-bf23-10367bb0c392',1,1,'2017-07-21 17:12:36',NULL,NULL),
('8afa9a8ba1cb48fc91c89a3e86fe3c6e','http://qiniuti.7secai.cn/20170719113347_403.jpeg','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c',1,1,'2017-07-19 11:33:49',NULL,NULL),
('8bd0af4258fd466e9e7a2c8ec590234c','http://qiniuti.7secai.cn/20170724103420_267.jpg','9c53d2e3-706c-4bd8-9cf5-9fef5b790c58',1,1,'2017-07-24 10:34:23',NULL,NULL),
('8dad97794089451f945084d147cfc126','http://qiniuti.7secai.cn/20170808115736_387.jpg','aa43af8a-70bd-4b9d-aba8-347d5abb25de',3,1,'2017-07-17 10:46:13',NULL,NULL),
('8dfd400425ae43b5a6ba7b376839beb7','http://qiniuti.7secai.cn/20170725140505_234.jpg','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd',3,1,'2017-07-25 14:05:08',NULL,NULL),
('8e21964eb506497a9e2fb8ac03619dd8','http://qiniuti.7secai.cn/20170724111030_158.jpg','b10e9ca4-6cfd-4536-8d49-c61b25b36893',3,1,'2017-07-24 11:10:33',NULL,NULL),
('8f344a6c0fd746d9a078cb6b202a9127','http://qiniuti.7secai.cn/20170724140735_643.jpeg','ae765dfc-d77e-434d-b119-2ca0ff3d66e4',1,1,'2017-07-24 14:07:38',NULL,NULL),
('8f3d85bd65204392b5b2c58bfa97eabf','http://qiniuti.7secai.cn/20170721153155_800.jpeg','09ab1f2a-9af8-44c3-99d6-db52881bde7c',2,1,'2017-07-21 15:32:02',NULL,NULL),
('8f58647745de4aa0a34836d5f9f04569','http://qiniuti.7secai.cn/20170720164510_780.jpeg','64e8cb63-0a26-46d2-81af-6cea9e8c5de8',1,1,'2017-07-20 16:44:39',NULL,NULL),
('90a8e31555f64f91b86c169090c63e14','http://qiniuti.7secai.cn/20170720170538_709.jpeg','30be5535-56fa-4740-b868-4321eb186263',1,1,'2017-07-20 17:05:41',NULL,NULL),
('914ec0e271bd4d3c99bd3a07f3039b0f','http://qiniuti.7secai.cn/20170719154112_114.jpeg','1fa4d900-4d98-4803-8f83-18a0889c34b2',3,1,'2017-07-19 15:41:15',NULL,NULL),
('9174cb2ef18c4826a97e991a4e0a4276','http://qiniuti.7secai.cn/20170719104547_54.jpeg','52f8a23f-5677-4b20-8364-5e170a83fe92',3,1,'2017-07-19 10:45:50',NULL,NULL),
('92da2f45ea914dd1bdd5eb92a6b2897e','http://qiniuti.7secai.cn/20170808115848_301.jpg','bbe59f47-c4fd-4817-8849-7149162c55e8',1,1,'2017-07-14 18:02:55',NULL,NULL),
('94cd5366bdf34e329a7783d80dc07330','http://qiniuti.7secai.cn/20170719104558_585.jpeg','52f8a23f-5677-4b20-8364-5e170a83fe92',4,1,'2017-07-19 10:46:01',NULL,NULL),
('96a5d3604bc642d9a70322996c80737d','http://qiniuti.7secai.cn/20170723115602_212.jpg','648fb5b4-2438-4956-b265-c5051855d649',2,1,'2017-07-23 11:56:04',NULL,NULL),
('96b32b1d452b4a168d7d08e7782c2f47','http://qiniuti.7secai.cn/20170723112834_664.jpg','5829c0a5-06e4-43ef-80b6-37089d706b10',4,1,'2017-07-23 11:28:37',NULL,NULL),
('96f1e0cc7ae740cd92bc307beaa1c2da','http://qiniuti.7secai.cn/20170721143816_462.jpg','a2de35d3-8e52-4095-b221-bd68df085df5',3,1,'2017-07-21 14:38:19',NULL,NULL),
('9814ba66685f41f3b7320520e838df71','http://qiniuti.7secai.cn/20170720161811_455.jpeg','22d7ce2c-21f5-4555-b24c-8b21a6db45a7',3,1,'2017-07-20 16:18:14',NULL,NULL),
('98d66a19a51343198743a9cbc3db4129','http://qiniuti.7secai.cn/20170720170548_513.jpeg','30be5535-56fa-4740-b868-4321eb186263',2,1,'2017-07-20 17:05:50',NULL,NULL),
('9a550ffa26d14ba7b50be3963f239d1f','http://qiniuti.7secai.cn/20170724144956_558.jpg','ec16e5f2-c398-4549-9b24-c022c2cf0d06',4,1,'2017-07-24 14:49:58',NULL,NULL),
('9a9d1fd984024d5d9fdea6f726a00c9d','http://qiniuti.7secai.cn/20170808112925_276.jpg','8a756d88-2457-4888-9c7c-174e22a90c08',3,1,'2017-07-20 09:33:34',NULL,NULL),
('9aeed8ec6129485fb78d84d8cb270837','http://qiniuti.7secai.cn/20170719170753_311.jpeg','95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed',2,1,'2017-07-19 17:07:56',NULL,NULL),
('9c0520c0d0f34a09901a23ba9f9caf67','http://qiniuti.7secai.cn/20170808112847_621.jpg','8a756d88-2457-4888-9c7c-174e22a90c08',1,1,'2017-07-20 09:33:13',NULL,NULL),
('9c093ee2845b4328b6a2550dc3b9a1df','http://qiniuti.7secai.cn/20170720155054_594.jpg','c2fdb4db-41cb-4575-9741-687c33773254',4,1,'2017-07-20 15:50:57',NULL,NULL),
('9c1eb1edda9e4f73acc3ea6da610ff54','http://qiniuti.7secai.cn/20170720161831_695.jpeg','22d7ce2c-21f5-4555-b24c-8b21a6db45a7',5,1,'2017-07-20 16:18:33',NULL,NULL),
('9f28e5138ea340fca4d312ee62ba30e2','http://qiniuti.7secai.cn/20170722183300_99.jpg','1c8f9782-1d44-4b23-a55b-4bd4c8af1cf8',4,1,'2017-07-22 18:33:03',NULL,NULL),
('9f48934affa0431ca70a4807374a2512','http://qiniuti.7secai.cn/20170808101029_338.jpg','a0087fc1-762a-4763-89e8-9dc6e5db973d',1,1,'2017-07-24 15:53:33',NULL,NULL),
('9fa81edaba2e419daee5d1df44fee1a7','http://qiniuti.7secai.cn/20170719173526_981.jpg','7fed01bd-f4ca-4a89-8466-f0a7a3ac5051',3,1,'2017-07-19 17:35:28',NULL,NULL),
('9fbddf919f8a45c09642ad9c4d401ef5','http://qiniuti.7secai.cn/20170718165758_892.jpeg','3a626ae5-1e86-4b48-8d7d-464d544d6abb',5,1,'2017-07-18 16:58:00',NULL,NULL),
('a078c3c236db4fbf903e6c0dc97dcf84','http://qiniuti.7secai.cn/20170717144007_601.jpeg','05b23faa-b771-4400-a27e-d156faa05455',4,1,'2017-07-17 14:40:13',NULL,NULL),
('a15f394a5e094539b54949a59d3cd01e','http://qiniuti.7secai.cn/20170808101532_666.jpg','ec16e5f2-c398-4549-9b24-c022c2cf0d06',1,1,'2017-07-24 14:47:30',NULL,NULL),
('a4071dba2ae543eda0384b92756318ff','http://qiniuti.7secai.cn/20170718113431_38.jpg','76161742-cfa2-4b8d-af4c-4501617fe499',4,1,'2017-07-18 11:34:34',NULL,NULL),
('a4fe8fdca5bf4c1582b1ab2a594653fd','http://qiniuti.7secai.cn/20170723171007_723.jpeg','2c56e0f8-9ae8-430d-9d0d-091e8dd1e838',3,1,'2017-07-23 17:10:09',NULL,NULL),
('a588d0dd57ae4450bffbf33e6ce384b8','http://qiniuti.7secai.cn/20170723171017_373.jpeg','2c56e0f8-9ae8-430d-9d0d-091e8dd1e838',4,1,'2017-07-23 17:10:19',NULL,NULL),
('a73fcb3fb7c843aeb1f81c006c38537f','http://qiniuti.7secai.cn/20170724100837_233.jpeg','b588c021-e269-4bdd-9a09-8c12dfc9476b',5,1,'2017-07-24 10:08:39',NULL,NULL),
('a74c26a3e02547eb9e399d961d54b423','http://qiniuti.7secai.cn/20170718092648_459.jpg','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8',2,1,'2017-07-18 09:26:51',NULL,NULL),
('a78cb6ab205e469683c7ebc918522823','http://qiniuti.7secai.cn/20170725105044_406.jpeg','ceb79cd0-a389-4115-8546-67310d93cf14',1,1,'2017-07-25 10:50:46',NULL,NULL),
('a8a861fdf227471f80b786852fa6da0c','http://qiniuti.7secai.cn/20170719170805_430.jpeg','95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed',3,1,'2017-07-19 17:08:07',NULL,NULL),
('a947a0db68974deab13958262c53b7dd','http://qiniuti.7secai.cn/20170808115747_113.jpg','aa43af8a-70bd-4b9d-aba8-347d5abb25de',4,1,'2017-07-17 10:46:26',NULL,NULL),
('acf754ba8ef7477eb55379dd79b309e2','http://qiniuti.7secai.cn/20170808114833_147.jpg','47f48c15-e092-4bc9-97c3-369f1932a704',2,1,'2017-07-18 10:00:20',NULL,NULL),
('ae28f6e9d4f1486abdbd8779505cc81f','http://qiniuti.7secai.cn/20170719142402_527.jpeg','49fb056f-7966-4323-b688-160fc119bd52',3,1,'2017-07-19 14:24:05',NULL,NULL),
('ae39906a5ae342b18151cf8f223c731b','http://qiniuti.7secai.cn/20170808104318_111.jpg','eeddcc98-fb5c-4147-af33-59587d6548e8',1,1,'2017-07-20 18:26:26',NULL,NULL),
('afd1de675eb44d7dbcdd5edd375b0541','http://qiniuti.7secai.cn/20170721165018_848.jpeg','b84718a2-7bd6-4ad1-a611-925d72834e6d',4,1,'2017-07-21 16:50:19',NULL,NULL),
('b0b71478dbff42cc90ce53d08f6bde94','http://qiniuti.7secai.cn/20170808105833_317.jpg','e715ef29-e892-4635-a0be-c028bf41b8d2',1,1,'2017-07-20 10:32:25',NULL,NULL),
('b0c2a2bf0a8542fd9e176863fdaebda8','http://qiniuti.7secai.cn/20170725112203_953.jpeg','bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682',4,1,'2017-07-25 11:22:05',NULL,NULL),
('b0d112299da34545868d64de33febec6','http://qiniuti.7secai.cn/20170723112822_381.jpg','5829c0a5-06e4-43ef-80b6-37089d706b10',3,1,'2017-07-23 11:28:25',NULL,NULL),
('b0dc9e34c23e4f31bc765711ec814a75','http://qiniuti.7secai.cn/20170808110128_516.jpg','4b67e210-b432-418b-a63b-443d00948522',3,1,'2017-07-20 10:12:46',NULL,NULL),
('b0fd687b07f5404382c595059bbd5849','http://qiniuti.7secai.cn/20170808105127_434.jpg','a223f0d3-1e0e-4515-83ac-644db7f3571b',1,1,'2017-07-20 11:33:49',NULL,NULL),
('b1743bdfaf2f47d8ac3d9b0af4c1d5b8','http://qiniuti.7secai.cn/20170808104220_780.jpg','247a8ae8-8829-49ea-9c09-19702a09bcf0',1,1,'2017-07-21 10:28:12',NULL,NULL),
('b2691f645d4040d5ae8f4e36e0cd7654','http://qiniuti.7secai.cn/20170720115231_684.jpeg','4fd6f502-b89a-48aa-9beb-b36b3f95318f',2,1,'2017-07-20 11:52:33',NULL,NULL),
('b2bf4c945dbb4262bbc16ede854fa2b8','http://qiniuti.7secai.cn/20170718174629_203.jpeg','d5cbe572-b343-4498-9770-ef0e80ea97d1',3,1,'2017-07-18 17:46:32',NULL,NULL),
('b3c017e6ecb54b298ee9a6f3714dbde6','http://qiniuti.7secai.cn/20170718092726_858.jpg','0c60fa7a-79e2-4fef-ac1c-1cb4577165d8',5,1,'2017-07-18 09:27:28',NULL,NULL),
('b5859afc9aff471abd73360becabbc00','http://qiniuti.7secai.cn/20170718154440_460.jpeg','1ed90e16-847d-43de-9d5a-7d89571455e8',1,1,'2017-07-18 15:44:42',NULL,NULL),
('b69710afbb674e3fa61213022d81376c','http://qiniuti.7secai.cn/20170808113236_626.jpg','c5b2be18-6f05-4c22-afe4-b43c1a09a16b',3,1,'2017-07-19 18:18:10',NULL,NULL),
('b6a4bce74de74f47aa0a8177973e28ef','http://qiniuti.7secai.cn/20170719095228_598.jpeg','aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc',3,1,'2017-07-19 09:52:31',NULL,NULL),
('b78e9ee71d6a450b8cb15b33f35e5217','http://qiniuti.7secai.cn/20170725100017_484.jpg','e68aea74-ad40-42ce-b962-68642048ba1d',2,1,'2017-07-25 10:00:21',NULL,NULL),
('b7fed00d71ab4775884719bbd913f23c','http://qiniuti.7secai.cn/20170721155910_840.jpeg','256450cc-26ef-4585-9083-e9f1dd572fec',1,1,'2017-07-21 15:59:12',NULL,NULL),
('b93488f452d842d4a1615075b55b77fd','http://qiniuti.7secai.cn/20170808114007_266.jpg','aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc',5,1,'2017-07-19 09:52:54',NULL,NULL),
('b98bb0c3121040dd8b367822ad8b784a','http://qiniuti.7secai.cn/20170808104638_85.jpg','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923',1,1,'2017-07-20 15:20:12',NULL,NULL),
('bb121e2e883f4cc3b1074a0f945b42bf','http://qiniuti.7secai.cn/20170720154955_228.jpg','c2fdb4db-41cb-4575-9741-687c33773254',1,1,'2017-07-20 15:49:58',NULL,NULL),
('bb1222fc478745219da0d4b2dbb12be7','http://qiniuti.7secai.cn/20170721180949_915.jpg','65ec5ae9-2de3-4978-abd3-372151d799da',2,1,'2017-07-21 18:09:55',NULL,NULL),
('bb18068ed0a3421a887fe317fc21c756','http://qiniuti.7secai.cn/20170721171327_443.jpeg','e31ee61c-e35d-479b-bf23-10367bb0c392',5,1,'2017-07-21 17:13:30',NULL,NULL),
('bccf9f479af846d9954dd30ffaa317dd','http://qiniuti.7secai.cn/20170720152025_474.jpg','ecd8e6ca-a7ec-44e8-ac41-1ca97c453923',2,1,'2017-07-20 15:20:27',NULL,NULL),
('bdbfc59280044f219ddc72c4ed24f827','http://qiniuti.7secai.cn/20170719113434_137.jpeg','5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c',5,1,'2017-07-19 11:34:38',NULL,NULL),
('bfeeb8c0c5214522918d32c3717df9d0','http://qiniuti.7secai.cn/20170719160610_419.jpeg','aeaace68-bb2d-42c3-bc68-10e1b360d873',5,1,'2017-07-19 16:06:13',NULL,NULL),
('c2fc916e8caf48b99c42bd14819f4581','http://qiniuti.7secai.cn/20170724111020_574.jpg','b10e9ca4-6cfd-4536-8d49-c61b25b36893',2,1,'2017-07-24 11:10:23',NULL,NULL),
('c30ac85831414ce088011cd13e8d1713','http://qiniuti.7secai.cn/20170808113215_423.jpg','c5b2be18-6f05-4c22-afe4-b43c1a09a16b',1,1,'2017-07-19 18:17:51',NULL,NULL),
('c354b4d2def740aa9d8905c7f5892887','http://qiniuti.7secai.cn/20170808110148_944.jpg','4b67e210-b432-418b-a63b-443d00948522',5,1,'2017-07-20 10:13:13',NULL,NULL),
('c43bd49fbc774e628b1b7a76a1a1d76c','http://qiniuti.7secai.cn/20170723163532_293.jpg','155d4f09-c2f4-4f48-8f82-cb8b4bb71a63',3,1,'2017-07-23 16:35:17',NULL,NULL),
('c4ea20b1af4742b491ef24b3a8830172','http://qiniuti.7secai.cn/20170725140454_552.jpeg','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd',2,1,'2017-07-25 14:04:26',NULL,NULL),
('c5f218c80912429baf0717723b4ef63d','http://qiniuti.7secai.cn/20170721153250_768.jpg','09ab1f2a-9af8-44c3-99d6-db52881bde7c',5,1,'2017-07-21 15:32:53',NULL,NULL),
('c655cbb6951d4cfb90d10f47ad68a9cd','http://qiniuti.7secai.cn/20170719154134_210.jpeg','1fa4d900-4d98-4803-8f83-18a0889c34b2',5,1,'2017-07-19 15:41:36',NULL,NULL),
('c66d4d25fd44411085a364d71b366123','http://qiniuti.7secai.cn/20170724144946_120.jpg','ec16e5f2-c398-4549-9b24-c022c2cf0d06',4,1,'2017-07-24 14:49:49',NULL,NULL),
('c6ff9a91e34c459582c13f63c9311477','http://qiniuti.7secai.cn/20170719142342_614.jpeg','49fb056f-7966-4323-b688-160fc119bd52',1,1,'2017-07-19 14:23:45',NULL,NULL),
('c86a7044ea7343a49c64d817ac838027','http://qiniuti.7secai.cn/20170720115240_164.jpeg','4fd6f502-b89a-48aa-9beb-b36b3f95318f',3,1,'2017-07-20 11:52:42',NULL,NULL),
('c8bdce604c5e4c30a2ce96dac909a67b','http://qiniuti.7secai.cn/20170721111137_718.jpg','075e1340-a3c7-4fba-adea-bf40f9e0737d',5,1,'2017-07-21 11:11:40',NULL,NULL),
('c900927b907f4f2abf79c7127de1e736','http://qiniuti.7secai.cn/20170725140521_580.jpg','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd',4,1,'2017-07-25 14:05:23',NULL,NULL),
('ca8cf860fa1949dd80ee9455daa96fe6','http://qiniuti.7secai.cn/20170720170557_381.jpeg','30be5535-56fa-4740-b868-4321eb186263',3,1,'2017-07-20 17:06:00',NULL,NULL),
('cac97091d4ee48afa4b8b0dee47d7cc4','http://qiniuti.7secai.cn/20170808105842_648.jpg','e715ef29-e892-4635-a0be-c028bf41b8d2',2,1,'2017-07-20 10:32:08',NULL,NULL),
('cb44c00b388e46fb8eb6cc74f2a3355a','http://qiniuti.7secai.cn/20170721155928_888.jpeg','256450cc-26ef-4585-9083-e9f1dd572fec',3,1,'2017-07-21 15:59:31',NULL,NULL),
('cc11e0aa264f4704937be5e80afe493b','http://qiniuti.7secai.cn/20170724170504_76.jpg','66df33bc-d169-45aa-addc-230700b893bf',2,1,'2017-07-24 17:05:06',NULL,NULL),
('cca0d4ab45174a9bae38eedd4e8fe137','http://qiniuti.7secai.cn/20170721102753_213.jpg','247a8ae8-8829-49ea-9c09-19702a09bcf0',3,1,'2017-07-21 10:27:57',NULL,NULL),
('cfa95fd44b1147fc999cbd87692f7fea','http://qiniuti.7secai.cn/20170720161821_596.jpeg','22d7ce2c-21f5-4555-b24c-8b21a6db45a7',4,1,'2017-07-20 16:18:24',NULL,NULL),
('d0e66435e6414632b809f29f872ebe8d','http://qiniuti.7secai.cn/20170719173515_87.jpg','7fed01bd-f4ca-4a89-8466-f0a7a3ac5051',2,1,'2017-07-19 17:35:18',NULL,NULL),
('d16c92a2dcf74c4d84cbba487142b54d','http://qiniuti.7secai.cn/20170724113838_479.jpg','d3935bb9-4443-4d01-88ec-91162a53b787',4,1,'2017-07-24 11:38:41',NULL,NULL),
('d37d9886a70144498978c99e1deaf4b7','http://qiniuti.7secai.cn/20170720182000_326.jpeg','d627acee-6b26-4f92-8a4d-377b0019345e',2,1,'2017-07-20 18:20:02',NULL,NULL),
('d3a85ddcff4145aa85a1fabc19347c74','http://qiniuti.7secai.cn/20170808110138_690.jpg','4b67e210-b432-418b-a63b-443d00948522',4,1,'2017-07-20 10:13:03',NULL,NULL),
('d436f62ab74a44d88bf104bc96516e5f','http://qiniuti.7secai.cn/20170808105139_70.jpg','a223f0d3-1e0e-4515-83ac-644db7f3571b',3,1,'2017-07-20 11:34:44',NULL,NULL),
('d485ce98ecc74164b82144b28dc280b6','http://qiniuti.7secai.cn/20170721174243_945.jpeg','8b702180-3066-4603-b9c7-e1576d36baa3',2,1,'2017-07-21 17:42:44',NULL,NULL),
('d4aa806a141149c3b8dda35e95bf3b80','http://qiniuti.7secai.cn/20170808095816_415.jpg','66df33bc-d169-45aa-addc-230700b893bf',1,1,'2017-07-24 17:04:56',NULL,NULL),
('d4cadccc8dcf490caf480ea07921dcdb','http://qiniuti.7secai.cn/20170717120559_127.jpeg','4d81e88d-3021-4157-8d85-173ba6b142d9',5,1,'2017-07-17 12:05:46',NULL,NULL),
('d505f3c61b5e4143b75bbce5847dd2fb','http://qiniuti.7secai.cn/20170719173535_454.jpg','7fed01bd-f4ca-4a89-8466-f0a7a3ac5051',4,1,'2017-07-19 17:35:37',NULL,NULL),
('d6f84eb2ecc54718b19a0a41895e45a2','http://qiniuti.7secai.cn/20170723173313_478.jpeg','e465fc07-7357-4a7a-b91e-ab1e9b31e259',1,1,'2017-07-23 17:33:15',NULL,NULL),
('d71cd836ff944b119cc4286590cfed0e','http://qiniuti.7secai.cn/20170719160539_459.jpeg','aeaace68-bb2d-42c3-bc68-10e1b360d873',2,1,'2017-07-19 16:05:42',NULL,NULL),
('d726296843444cc88f7988d0f16fc675','http://qiniuti.7secai.cn/20170724103441_308.jpg','9c53d2e3-706c-4bd8-9cf5-9fef5b790c58',3,1,'2017-07-24 10:34:44',NULL,NULL),
('d919af3d8d5d4819bb4fe02403271452','http://qiniuti.7secai.cn/20170808095417_236.jpg','6f54add5-6bc6-4dbc-9ce7-4b56ff514edd',1,1,'2017-07-25 14:04:16',NULL,NULL),
('d95e78578c184bf09bc751f893f6801b','http://qiniuti.7secai.cn/20170808100322_870.jpg','bc95f692-25a2-438c-8ba1-90ce7a62d68b',1,1,'2017-07-24 16:33:54',NULL,NULL),
('d988464c08cb4761a9deebbcb9da081f','http://qiniuti.7secai.cn/20170717113122_976.jpeg','4d81e88d-3021-4157-8d85-173ba6b142d9',3,1,'2017-07-17 11:31:26',NULL,NULL),
('d9de16c19b7a43d3a4547d27fe64cefb','http://qiniuti.7secai.cn/20170724111051_567.jpg','b10e9ca4-6cfd-4536-8d49-c61b25b36893',5,1,'2017-07-24 11:10:54',NULL,NULL),
('dc7b939772c04f5fbda7ff78f6a44cc9','http://qiniuti.7secai.cn/20170719160559_611.jpeg','aeaace68-bb2d-42c3-bc68-10e1b360d873',4,1,'2017-07-19 16:06:02',NULL,NULL),
('dc7ef75be5ee4c829cab8a22d36a936c','http://qiniuti.7secai.cn/20170717113451_335.jpeg','4d81e88d-3021-4157-8d85-173ba6b142d9',4,1,'2017-07-17 11:34:56',NULL,NULL),
('dc83a027cd8443569f4c04a214be9d7d','http://qiniuti.7secai.cn/20170717104636_702.jpeg','aa43af8a-70bd-4b9d-aba8-347d5abb25de',5,1,'2017-07-17 10:46:39',NULL,NULL),
('dd56a4eea1fa488ca53a0760828f102c','http://qiniuti.7secai.cn/20170720111026_109.jpeg','40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1',3,1,'2017-07-20 11:10:28',NULL,NULL),
('dd5dbfa3d025469fac2aa2806d548f96','http://qiniuti.7secai.cn/20170718113408_38.jpg','76161742-cfa2-4b8d-af4c-4501617fe499',2,1,'2017-07-18 11:34:11',NULL,NULL),
('dde44787c06940c3b49141bfdeb264a7','http://qiniuti.7secai.cn/20170721162944_483.jpeg','ec47b4e8-b4a7-4604-939b-eaaf4deef359',2,1,'2017-07-21 16:29:46',NULL,NULL),
('ddef3a7f386b4b96846150692932d1bd','http://qiniuti.7secai.cn/20170808103001_380.jpg','648fb5b4-2438-4956-b265-c5051855d649',1,1,'2017-07-23 11:55:51',NULL,NULL),
('de0ef43bcdea4f49a487c784eb1dc359','http://qiniuti.7secai.cn/20170725100030_424.jpg','e68aea74-ad40-42ce-b962-68642048ba1d',3,1,'2017-07-25 10:00:34',NULL,NULL),
('e00a2c2fdf9749caaf20389cba43d507','http://qiniuti.7secai.cn/20170724103430_449.jpg','9c53d2e3-706c-4bd8-9cf5-9fef5b790c58',2,1,'2017-07-24 10:34:33',NULL,NULL),
('e6712ca2918c4d808652fe72e8163c4b','http://qiniuti.7secai.cn/20170808112635_324.jpg','65ec5ae9-2de3-4978-abd3-372151d799da',3,1,'2017-07-21 18:10:04',NULL,NULL),
('e6a4e5272f8e4befad43772ce5210df8','http://qiniuti.7secai.cn/20170808103431_702.jpg','65ec5ae9-2de3-4978-abd3-372151d799da',1,1,'2017-07-21 18:10:19',NULL,NULL),
('e82e64971db44f56a250a01560ae26ce','http://qiniuti.7secai.cn/20170808115253_65.jpeg','9c2546ac-386d-4b45-bd90-a06c20ad82e4',1,1,'2017-07-17 12:04:26',NULL,NULL),
('e878c2c5f7c3449386bd4d551db741b3','http://qiniuti.7secai.cn/20170724175748_388.jpg','636b4a1f-603e-41a9-8472-2c59459b2cd9',2,1,'2017-07-24 17:57:51',NULL,NULL),
('e8ed0b4811cc455991301f7208d965d7','http://qiniuti.7secai.cn/20170720142124_748.jpg','faf566d3-daff-4f9a-a1a4-5b8fa75b9e50',4,1,'2017-07-20 14:21:28',NULL,NULL),
('e9e107276e40493b9865c63488ac402e','http://qiniuti.7secai.cn/20170721171318_621.jpeg','e31ee61c-e35d-479b-bf23-10367bb0c392',4,1,'2017-07-21 17:13:08',NULL,NULL),
('eb2663d16f1641c0979958c83453fa0c','http://qiniuti.7secai.cn/20170714180350_756.jpeg','bbe59f47-c4fd-4817-8849-7149162c55e8',5,1,'2017-07-14 18:03:53',NULL,NULL),
('eb75d5baee2241bc99f4ffc5fb5c23da','http://qiniuti.7secai.cn/20170718113442_73.jpg','76161742-cfa2-4b8d-af4c-4501617fe499',5,1,'2017-07-18 11:34:45',NULL,NULL),
('ec742461b7c54880a53bd7a7be0d43f0','http://qiniuti.7secai.cn/20170718094311_936.jpg','adfc04ec-eeaa-4773-9189-94d2c2d24669',1,1,'2017-07-18 09:43:15',NULL,NULL),
('ec771db9926840f59bff5510c52964ec','http://qiniuti.7secai.cn/20170718113356_838.jpg','76161742-cfa2-4b8d-af4c-4501617fe499',1,1,'2017-07-18 11:33:58',NULL,NULL),
('ed3a1f54f60f4ab3bbe3f9c4e9f50584','http://qiniuti.7secai.cn/20170719104526_299.jpeg','52f8a23f-5677-4b20-8364-5e170a83fe92',1,1,'2017-07-19 10:45:29',NULL,NULL),
('eed87ea272c7445fab1d9cfb1103fa01','http://qiniuti.7secai.cn/20170721162953_945.jpeg','ec47b4e8-b4a7-4604-939b-eaaf4deef359',3,1,'2017-07-21 16:29:55',NULL,NULL),
('eff6f02b3f604db2a8081b39d3764797','http://qiniuti.7secai.cn/20170714180337_999.jpeg','bbe59f47-c4fd-4817-8849-7149162c55e8',4,1,'2017-07-14 18:03:40',NULL,NULL),
('f06f2818d7af49f9838856665836106b','http://qiniuti.7secai.cn/20170724100828_540.jpeg','b588c021-e269-4bdd-9a09-8c12dfc9476b',4,1,'2017-07-24 10:08:30',NULL,NULL),
('f0ba4d2e9a2b4dc59b42486f25d006b6','http://qiniuti.7secai.cn/20170808115726_533.jpg','aa43af8a-70bd-4b9d-aba8-347d5abb25de',2,1,'2017-07-17 10:46:00',NULL,NULL),
('f0da77353dd04e758d766078a6ecdb1f','http://qiniuti.7secai.cn/20170724151443_531.jpg','246cb90e-7731-496b-a3bb-926f6d500e4a',4,1,'2017-07-24 15:14:45',NULL,NULL),
('f0eb27e316b044cabdc934ee8a6577e3','http://qiniuti.7secai.cn/20170808114905_305.jpg','47f48c15-e092-4bc9-97c3-369f1932a704',5,1,'2017-07-18 10:01:03',NULL,NULL),
('f296f8cc9c98442bb282f4956697acca','http://qiniuti.7secai.cn/20170720111000_353.jpeg','40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1',2,1,'2017-07-20 11:10:03',NULL,NULL),
('f2a1a376e46e41419e6ad51120509008','http://qiniuti.7secai.cn/20170724151422_959.jpg','246cb90e-7731-496b-a3bb-926f6d500e4a',2,1,'2017-07-24 15:14:24',NULL,NULL),
('f37c27897f9f40af9fb4cbc6b9b75d10','http://qiniuti.7secai.cn/20170724155349_830.jpg','a0087fc1-762a-4763-89e8-9dc6e5db973d',3,1,'2017-07-24 15:53:51',NULL,NULL),
('f67bb61d381644ea874f650e74af6b2f','http://qiniuti.7secai.cn/20170720145555_204.jpg','f1fddf3f-92f3-4fab-a226-1fb61a3bc17d',1,1,'2017-07-20 14:55:57',NULL,NULL),
('f6a4ad7d8e014ef7b0201f5ab9b87f34','http://qiniuti.7secai.cn/20170723105537_271.jpeg','cae6d4e9-d785-423c-884c-8b242f7c44da',2,1,'2017-07-23 10:55:40',NULL,NULL),
('f7e77cedec4a4a94ab20de9b65224107','http://qiniuti.7secai.cn/20170808104032_330.jpg','a2de35d3-8e52-4095-b221-bd68df085df5',1,1,'2017-07-21 14:37:54',NULL,NULL),
('f7e8ff32d3b147a7925d2ae486702250','http://qiniuti.7secai.cn/20170719145843_546.jpg','a7c6fcef-acf7-4740-94e1-d65d9a08dff5',3,1,'2017-07-19 14:58:49',NULL,NULL),
('f94fd47ba4c04560b190f9afad3a970d','http://qiniuti.7secai.cn/20170721111059_206.jpeg','075e1340-a3c7-4fba-adea-bf40f9e0737d',2,1,'2017-07-21 11:11:01',NULL,NULL),
('f9b8611aae984bef9226fa71219282ec','http://qiniuti.7secai.cn/20170724175738_578.jpg','636b4a1f-603e-41a9-8472-2c59459b2cd9',1,1,'2017-07-24 17:57:40',NULL,NULL),
('f9d99df85e8e414194f70cf6cd6f380a','http://qiniuti.7secai.cn/20170722183214_527.jpg','1c8f9782-1d44-4b23-a55b-4bd4c8af1cf8',2,1,'2017-07-22 18:32:17',NULL,NULL),
('fadaf61330f04b86b801418fa8936d95','http://qiniuti.7secai.cn/20170724170513_574.jpg','66df33bc-d169-45aa-addc-230700b893bf',3,1,'2017-07-24 17:05:16',NULL,NULL),
('fbad40cffb0d44f3a60c607d6ab95e13','http://qiniuti.7secai.cn/20170808103138_343.jpg','5829c0a5-06e4-43ef-80b6-37089d706b10',1,1,'2017-07-23 11:28:03',NULL,NULL),
('fbd0a15c37c64a50993d47fb90278483','http://qiniuti.7secai.cn/20170720113500_392.jpg','a223f0d3-1e0e-4515-83ac-644db7f3571b',4,1,'2017-07-20 11:35:03',NULL,NULL),
('fbd946d9a5c748198e41ea29e7fa0b89','http://qiniuti.7secai.cn/20170720155041_46.jpg','c2fdb4db-41cb-4575-9741-687c33773254',2,1,'2017-07-20 15:50:28',NULL,NULL),
('fe5e789474a44cc5ae6f86818a221d95','http://qiniuti.7secai.cn/20170717144023_406.jpg','05b23faa-b771-4400-a27e-d156faa05455',5,1,'2017-07-17 14:40:27',NULL,NULL),
('feba92861e6a44c5a4596a35d2799bcd','http://qiniuti.7secai.cn/20170720110950_647.jpeg','40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1',1,1,'2017-07-20 11:09:53',NULL,NULL);

/*Table structure for table `goods_meublekeep` */

DROP TABLE IF EXISTS `goods_meublekeep`;

CREATE TABLE `goods_meublekeep` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `meubleId` bigint(20) NOT NULL COMMENT '产品ID',
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '会员ID',
  `addTime` datetime DEFAULT NULL COMMENT '收藏时间',
  `isNotDelete` tinyint(4) DEFAULT '0' COMMENT '是否删除 1-未删除 2-已删除',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户收藏家具商品表';

/*Data for the table `goods_meublekeep` */

/*Table structure for table `goods_meublemanufacturer` */

DROP TABLE IF EXISTS `goods_meublemanufacturer`;

CREATE TABLE `goods_meublemanufacturer` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `account` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '账号',
  `passWord` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `facturerName` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '厂商名称',
  `facturerLogo` varchar(220) COLLATE utf8_bin DEFAULT '' COMMENT '厂商形象图片LOGO',
  `facturerAdd` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '厂商联系地址',
  `businessImage` varchar(220) COLLATE utf8_bin NOT NULL COMMENT '营业执照（需上传）',
  `facturerMan` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '厂商联系人',
  `facturerPhone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '厂商联系电话',
  `orderAcceptanceName` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '订单受理人姓名',
  `orderAcceptancePhone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '订单受理人电话',
  `orderAcceptanceChat` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '订单受理人微信',
  `orderAcceptanceQQ` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '订单受理人QQ',
  `orderAcceptanceEmail` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '订单受理人微信',
  `facturerSate` tinyint(4) DEFAULT NULL COMMENT '厂商可用状态 1-可用，2-不可用',
  `facturerType` tinyint(4) DEFAULT NULL COMMENT '厂商类型',
  `facturerText` text COLLATE utf8_bin COMMENT '厂商介绍',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='家具厂商信息表';

/*Data for the table `goods_meublemanufacturer` */

insert  into `goods_meublemanufacturer`(`id`,`account`,`passWord`,`facturerName`,`facturerLogo`,`facturerAdd`,`businessImage`,`facturerMan`,`facturerPhone`,`orderAcceptanceName`,`orderAcceptancePhone`,`orderAcceptanceChat`,`orderAcceptanceQQ`,`orderAcceptanceEmail`,`facturerSate`,`facturerType`,`facturerText`,`addTime`,`reserve1`,`reserve2`) values 
('781ad64c95c842d39335f14c0bd394b4','youjiagou','b7a363c8676490c879bd8138fd9c5b4a','优家购','http://qiniuti.7secai.cn/20170714144855_926.png','优家购','http://qiniuti.7secai.cn/20170714144946_410.png','优家购','优家购','优家购','优家购','优家购','优家购','优家购',1,NULL,'优家购优家购优家购优家购优家购优家购优家购优家购优家购','2017-07-14 14:49:47',NULL,NULL);

/*Table structure for table `goods_meublerunningwater` */

DROP TABLE IF EXISTS `goods_meublerunningwater`;

CREATE TABLE `goods_meublerunningwater` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '标识值（主键）（唯一值）',
  `manufacturerId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '厂家主键ID',
  `number` int(10) DEFAULT NULL COMMENT '订单数量(未用)',
  `payAmount` decimal(20,2) DEFAULT NULL COMMENT '支付金额',
  `countyId` int(10) DEFAULT '1' COMMENT '是否支付 1-未支付 2-已支付',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `payTime` datetime DEFAULT NULL COMMENT '支付时间',
  `reserve1` varchar(5) COLLATE utf8_bin DEFAULT '1' COMMENT '是否取消支付 1-未取消 2-已取消',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='供应商 结算统计';

/*Data for the table `goods_meublerunningwater` */

insert  into `goods_meublerunningwater`(`id`,`manufacturerId`,`number`,`payAmount`,`countyId`,`createTime`,`payTime`,`reserve1`,`reserve2`) values 
('a32150072fd04ed7aeeb31bea623ae8d','781ad64c95c842d39335f14c0bd394b4',NULL,500.00,2,'2017-08-07 09:15:20','2017-08-11 17:31:57','1',NULL);

/*Table structure for table `goods_meublerunningwater_sub` */

DROP TABLE IF EXISTS `goods_meublerunningwater_sub`;

CREATE TABLE `goods_meublerunningwater_sub` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '主键id',
  `compOrderId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '厂家订单id主键',
  `supplierId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商结算id主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='供应算结算详情表，对应的厂家订单 ';

/*Data for the table `goods_meublerunningwater_sub` */

insert  into `goods_meublerunningwater_sub`(`id`,`compOrderId`,`supplierId`) values 
('08a91ad25c8a4fb9b9b1c5f98dbeb164','4ccb67d7e3e04e878f9872eeb0aa3e42','a32150072fd04ed7aeeb31bea623ae8d'),
('679e619a6d81498f8a98a57884f66dfb','7e8e33ead288417788ffd54fe2f1e0ac','a32150072fd04ed7aeeb31bea623ae8d'),
('6cf0e7b171934897b57a14cd85d5b8e5','46a8870ad75e4cd1807a04a5508c1ec5','a32150072fd04ed7aeeb31bea623ae8d'),
('afb9f0290dd34917a8938a7b3bba55ab','b4d7e8112a434903babbc78eddfafa42','a32150072fd04ed7aeeb31bea623ae8d'),
('d502dfefc1884858887fc21c02c26ce3','84c2ef7a3f12446aa88d523162525763','a32150072fd04ed7aeeb31bea623ae8d');

/*Table structure for table `goods_meublespecifications` */

DROP TABLE IF EXISTS `goods_meublespecifications`;

CREATE TABLE `goods_meublespecifications` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `meubleImage` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '未使用（使用本表reserve1字段）',
  `norme1` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '商品一类规格（规格）名称',
  `norme2` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '商品二类规格（颜色）名称',
  `meublerNumber` int(10) DEFAULT NULL COMMENT '商品库存数量',
  `meublerOutinePrix` decimal(20,2) DEFAULT NULL COMMENT '商品出厂价格',
  `meublePrix` decimal(20,2) DEFAULT NULL COMMENT '商品商城价格',
  `meubleActifPrix` decimal(20,2) DEFAULT NULL COMMENT '商品活动特价价格',
  `meubleId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联商品主键编号',
  `meubleType` tinyint(4) DEFAULT NULL COMMENT '是否可用 1-可用 2-不可用',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '规格图片信息，同时也放在底部滚动图片中',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商品规格价格表';

/*Data for the table `goods_meublespecifications` */

insert  into `goods_meublespecifications`(`id`,`meubleImage`,`norme1`,`norme2`,`meublerNumber`,`meublerOutinePrix`,`meublePrix`,`meubleActifPrix`,`meubleId`,`meubleType`,`addTime`,`reserve1`,`reserve2`) values 
('064a909dc8b048719496dbf5e470ab6e',NULL,'890*760*480mm','白色',701,NULL,2186.00,2186.00,'a2de35d3-8e52-4095-b221-bd68df085df5',1,'2017-07-21 14:39:43','http://qiniuti.7secai.cn/20170721143920_3.jpg',NULL),
('0b867db9680747bc8db745846099d9ae',NULL,'1200*590*1940mm','白色',778,NULL,1906.00,1906.00,'65ec5ae9-2de3-4978-abd3-372151d799da',1,'2017-07-21 18:11:10','http://qiniuti.7secai.cn/20170721181057_702.jpg',NULL),
('0e90b7bf1c2e49e2b9cf611b9624a7c9',NULL,'1450X800X760mm','经典双色拼接',898,NULL,1339.00,1339.00,'ec47b4e8-b4a7-4604-939b-eaaf4deef359',1,'2017-07-21 16:30:52','http://qiniuti.7secai.cn/20170721163040_453.jpeg',NULL),
('164feb5ca62a4414b7ffb428c277f024',NULL,'2000*450*400mm','黑+白色',889,NULL,1566.00,1566.00,'c5b2be18-6f05-4c22-afe4-b43c1a09a16b',1,'2017-07-19 18:17:37','http://qiniuti.7secai.cn/20170719181732_466.jpg',NULL),
('194e761c56f04b08bbd62c22f21b3142',NULL,'1.8m*2.0m','卡其色',786,NULL,3160.00,3160.00,'aa43af8a-70bd-4b9d-aba8-347d5abb25de',1,'2017-07-17 10:50:00','http://qiniuti.7secai.cn/20170717104938_23.jpg',NULL),
('197105613bed4adeaf87c0eb6f71252d',NULL,'974*395*500mm','黑色',889,NULL,1198.00,1198.00,'e715ef29-e892-4635-a0be-c028bf41b8d2',1,'2017-07-20 10:31:17','http://qiniuti.7secai.cn/20170720103059_733.jpg',NULL),
('1be1c6f0646941518c3f7dc2325dc239',NULL,'440*400*900mm','橡胶木喷高亮光白漆+MDF板贴木纹',697,NULL,406.00,406.00,'bc3b8f98-3d4b-4a31-ab2d-5dd807f5a682',1,'2017-07-25 11:22:57','http://qiniuti.7secai.cn/20170725112246_611.jpeg',NULL),
('1d35f21b5a8b4b41a632f2a37426f688',NULL,'1000*450*1950mm','白色',877,NULL,2899.00,2899.00,'cae6d4e9-d785-423c-884c-8b242f7c44da',1,'2017-07-23 10:56:35','http://qiniuti.7secai.cn/20170723105619_32.jpeg',NULL),
('1f92d65f982641229150a8d6a90d2250',NULL,'480*420*930mm','黑色',707,NULL,198.00,198.00,'ceb79cd0-a389-4115-8546-67310d93cf14',1,'2017-07-25 10:51:36','http://qiniuti.7secai.cn/20170725105124_32.jpeg',NULL),
('221010a22c8549d4b7c36c9165718a7a',NULL,'体积：1.100','象牙白',491,NULL,1099.00,899.00,'adfc04ec-eeaa-4773-9189-94d2c2d24669',1,'2017-07-18 09:45:10','http://qiniuti.7secai.cn/20170718094456_673.jpg',NULL),
('2520ded517624ab29fd08ae717e0e486',NULL,'2150*1600*1500mm','',996,NULL,2625.00,2625.00,'d04f501c-ffb8-4c97-b9e1-7d9adc583467',1,'2017-08-07 18:48:36','http://qiniuti.7secai.cn/20170807184819_676.jpeg',NULL),
('25ad3ff3487b4b64bb3d412f2c92389d',NULL,'1.8m*2.0m','卡其色+浅蓝色',824,NULL,4406.00,4406.00,'bbe59f47-c4fd-4817-8849-7149162c55e8',1,'2017-07-14 18:05:37','http://qiniuti.7secai.cn/20170714180510_50.jpg',NULL),
('2e317d3b0bf34a9fa4eb4c11f372453b',NULL,'浅棕色','1.8m*2.0m',878,NULL,3360.00,3360.00,'9c2546ac-386d-4b45-bd90-a06c20ad82e4',1,'2017-07-17 12:04:08','http://qiniuti.7secai.cn/20170717120355_296.jpeg',NULL),
('2f623dd40f2d481b9c8603650f76da45',NULL,'2200*400*400mm','黑色',898,NULL,1533.00,1533.00,'7fed01bd-f4ca-4a89-8466-f0a7a3ac5051',1,'2017-07-19 17:34:53','http://qiniuti.7secai.cn/20170719173430_218.jpg',NULL),
('38571f4e84d74f1da33fe9398a32233d',NULL,'针织面料 可拆洗1.8米床垫','针织面料 可拆洗1.8米床垫',880,NULL,1680.00,1680.00,'e33166ac-8fdb-4296-a75c-32ba11b701d0',1,'2017-08-07 18:27:07','http://qiniuti.7secai.cn/20170807182648_535.jpeg',NULL),
('3fcf5880dd59402795217d3112e9397f',NULL,'2000*400*420mm','原木色',904,NULL,1957.00,1957.00,'4b67e210-b432-418b-a63b-443d00948522',1,'2017-07-20 10:14:06','http://qiniuti.7secai.cn/20170720101347_612.jpg',NULL),
('40d092a643ec400c8ca209dfd28beaf0',NULL,'体积：0.350','柠檬黄',767,NULL,1160.00,1160.00,'1ed90e16-847d-43de-9d5a-7d89571455e8',1,'2017-07-18 15:46:50','http://qiniuti.7secai.cn/20170718154621_35.jpeg',NULL),
('4766fe20cd2c48938ba170bd0293c23a',NULL,'1200*298*1900mm','白色',945,NULL,1656.00,1656.00,'faf566d3-daff-4f9a-a1a4-5b8fa75b9e50',1,'2017-07-20 14:22:10','http://qiniuti.7secai.cn/20170720142158_898.jpg',NULL),
('48dd1da7173640608ac57753a04ab246',NULL,'780*395*1120mm','白色',901,NULL,930.00,930.00,'eeddcc98-fb5c-4147-af33-59587d6548e8',1,'2017-07-20 18:29:15','http://qiniuti.7secai.cn/20170720182903_65.jpg',NULL),
('4afd1f8d0a5c474787a4ca4ffc799545',NULL,'1456*706*760mm','',890,NULL,2100.00,2100.00,'8b702180-3066-4603-b9c7-e1576d36baa3',1,'2017-08-07 18:44:52','http://qiniuti.7secai.cn/20170807184433_788.jpeg',NULL),
('4c46c81467d24184b07405a73b726259',NULL,'1600*2050*1800mm','全芬兰松',955,NULL,4305.00,4305.00,'66df33bc-d169-45aa-addc-230700b893bf',1,'2017-07-24 17:06:30','http://qiniuti.7secai.cn/20170724170608_928.jpg',NULL),
('542829cf4d434922bc4528f1ede5a25a',NULL,'520*480*1060mm','无扶手餐椅',994,NULL,1135.00,1135.00,'6f54add5-6bc6-4dbc-9ce7-4b56ff514edd',1,'2017-07-25 14:06:53','http://qiniuti.7secai.cn/20170725140549_669.jpeg',NULL),
('5633ae6b060c4681a1d37f9c0e047538',NULL,'997*302*高1100mm','原木色+白色',877,NULL,1529.00,1529.00,'30be5535-56fa-4740-b868-4321eb186263',1,'2017-07-20 17:07:22','http://qiniuti.7secai.cn/20170720170646_34.jpeg',NULL),
('56d2d6424f9d4929bb46390325439f9d',NULL,'体积：0.580','翡翠绿',876,NULL,1539.00,1539.00,'3a626ae5-1e86-4b48-8d7d-464d544d6abb',1,'2017-07-18 16:58:58','http://qiniuti.7secai.cn/20170718165829_260.jpg',NULL),
('57ca82418d3748ba9876d2fd0714e460',NULL,'体积：1.392','白色',598,NULL,799.00,799.00,'76161742-cfa2-4b8d-af4c-4501617fe499',1,'2017-07-18 11:35:44','http://qiniuti.7secai.cn/20170718113527_127.jpg',NULL),
('5be47d4575aa4674a65064078e4e9e8a',NULL,'1500*2000*200mm','卡其色',800,NULL,1290.00,1290.00,'05b23faa-b771-4400-a27e-d156faa05455',1,'2017-07-17 14:41:35','http://qiniuti.7secai.cn/20170717144101_981.jpeg',NULL),
('5d35b821b24847d089a3802e9abf7af6',NULL,'长680*宽180*高1153','白色',545,NULL,975.00,975.00,'ecd8e6ca-a7ec-44e8-ac41-1ca97c453923',1,'2017-07-20 15:21:41','http://qiniuti.7secai.cn/20170720152106_132.jpg',NULL),
('5ed7e17ec5324d709dc8f1df3fac2d43',NULL,'1.5m*2.0m','棕色',674,NULL,1480.00,1480.00,'4d81e88d-3021-4157-8d85-173ba6b142d9',1,'2017-07-17 11:36:34','http://qiniuti.7secai.cn/20170717113612_896.jpeg',NULL),
('6ac1e09d186942618ef8da334f0cede7',NULL,'800*300*988mm','黄色',901,NULL,1100.00,1100.00,'d627acee-6b26-4f92-8a4d-377b0019345e',1,'2017-07-20 18:23:21','http://qiniuti.7secai.cn/20170720182216_721.jpeg',NULL),
('6cc9262fd2634f17b6c42ba898e3d1c1',NULL,'600*400*680mm','黑色',798,NULL,1160.00,1160.00,'075e1340-a3c7-4fba-adea-bf40f9e0737d',1,'2017-07-21 11:12:25','http://qiniuti.7secai.cn/20170808142822_424.jpg',NULL),
('72526537b70143e191cfccb9bf1e73e6',NULL,'3610*2000*1100mm','卡其色',884,NULL,7169.00,7169.00,'5ada5c34-fe8c-4da5-8c85-c48ef84f0b1c',1,'2017-07-19 11:37:17','http://qiniuti.7secai.cn/20170719113656_328.jpeg',NULL),
('74a141f6025e42238fbc09940d401399',NULL,'620*540*930mm','胡桃色',901,NULL,999.00,999.00,'4e18229f-e6cf-4b5d-ab1b-ea6a192c91dc',1,'2017-07-23 16:11:56','http://qiniuti.7secai.cn/20170723161145_521.jpeg',NULL),
('76506802e0a64aa5bceadaf6e446de2d',NULL,'1200*590*425mm','白色',891,NULL,845.00,845.00,'a7c6fcef-acf7-4740-94e1-d65d9a08dff5',1,'2017-07-19 14:57:58','http://qiniuti.7secai.cn/20170719145745_971.jpeg',NULL),
('76d776646d984446a907980f3bda82e9',NULL,'570*590*1090mm','黑色',770,NULL,1059.00,1059.00,'e465fc07-7357-4a7a-b91e-ab1e9b31e259',1,'2017-07-23 17:34:08','http://qiniuti.7secai.cn/20170723173356_205.jpeg',NULL),
('788b3d3ac0f44029bfe395bcf6771e98',NULL,'900*303*1801mm','实木颗粒板',780,NULL,810.00,810.00,'5829c0a5-06e4-43ef-80b6-37089d706b10',1,'2017-07-23 11:29:47','http://qiniuti.7secai.cn/20170723112936_302.jpg',NULL),
('7962df61c9c3460c853d6188818d2963',NULL,'1300*600*1970mm','白色',777,NULL,2090.00,2090.00,'b10e9ca4-6cfd-4536-8d49-c61b25b36893',1,'2017-07-24 11:13:09','http://qiniuti.7secai.cn/20170724111246_255.jpg',NULL),
('7a08277aea4742579544194b9c541b7d',NULL,'体积：0.600','白色',778,NULL,1059.00,1059.00,'2c56e0f8-9ae8-430d-9d0d-091e8dd1e838',1,'2017-07-23 17:11:34','http://qiniuti.7secai.cn/20170723171109_380.jpeg',NULL),
('7b9b5f69aafb4680ba73d17cf4a50d54',NULL,'780*395*1120mm','红色',809,NULL,930.00,930.00,'247a8ae8-8829-49ea-9c09-19702a09bcf0',1,'2017-07-21 10:27:23','http://qiniuti.7secai.cn/20170721102717_39.jpg',NULL),
('7e62f443dd644b59bb08d43b220fad81',NULL,'1110*292*1350mm','白色',854,NULL,846.00,846.00,'4fd6f502-b89a-48aa-9beb-b36b3f95318f',1,'2017-07-20 11:52:09','http://qiniuti.7secai.cn/20170720115156_852.jpeg',NULL),
('84871d7316384490b382b82dd2e8d298',NULL,'900*620*2000mm','平拉门',904,NULL,3045.00,3045.00,'9c53d2e3-706c-4bd8-9cf5-9fef5b790c58',1,'2017-07-24 10:35:43','http://qiniuti.7secai.cn/20170724103525_598.jpg',NULL),
('84cbcbee1bfc4b6cbfeb54ea27216e44',NULL,'2140*1655*1050mm','象牙白',664,NULL,1799.00,1799.00,'0c60fa7a-79e2-4fef-ac1c-1cb4577165d8',1,'2017-07-18 09:28:52','http://qiniuti.7secai.cn/20170718092820_27.jpeg',NULL),
('87390cd54df74f9591432c2076305056',NULL,'1342*290*1800mm','白色',845,NULL,1066.00,1066.00,'1c8f9782-1d44-4b23-a55b-4bd4c8af1cf8',1,'2017-07-22 18:33:59','http://qiniuti.7secai.cn/20170722183340_284.jpg',NULL),
('87868e58ac674561a882fb2ca7edbd3d',NULL,'443*443*1830mm','原木色',876,NULL,345.00,345.00,'a223f0d3-1e0e-4515-83ac-644db7f3571b',1,'2017-07-20 11:36:57','http://qiniuti.7secai.cn/20170720113553_31.jpg',NULL),
('88810070083749868b86d98ae6959cad',NULL,'1210*400*2000mm','原木色',955,NULL,3200.00,3200.00,'f1fddf3f-92f3-4fab-a226-1fb61a3bc17d',1,'2017-07-20 14:55:07','http://qiniuti.7secai.cn/20170720145451_369.jpg',NULL),
('93864800759c45d68efbd053ffba5e51',NULL,'1000*670*1230mm','木纹纹理',780,NULL,1785.00,1785.00,'246cb90e-7731-496b-a3bb-926f6d500e4a',1,'2017-07-24 15:15:42','http://qiniuti.7secai.cn/20170724151528_974.jpg',NULL),
('95ef880740064673a497e7ab2c6f7e57',NULL,'820*335*1048mm','',855,NULL,599.00,599.00,'c2fdb4db-41cb-4575-9741-687c33773254',1,'2017-08-07 18:40:39','http://qiniuti.7secai.cn/20170807184021_379.jpg',NULL),
('a0ca7201a39f411b90aba16e462ab8a0',NULL,'880*400*1150mm','白色',845,NULL,1999.00,1999.00,'64e8cb63-0a26-46d2-81af-6cea9e8c5de8',1,'2017-07-20 16:46:11','http://qiniuti.7secai.cn/20170720164548_519.jpeg',NULL),
('a42d92d4dda94c9e99aedc8a8a9d07d6',NULL,'600*450*920mm','',774,NULL,336.00,336.00,'e68aea74-ad40-42ce-b962-68642048ba1d',1,'2017-07-25 10:02:52','http://qiniuti.7secai.cn/20170725100238_539.jpg',NULL),
('a8f4cc7a6a334014ba7eade61ffd8c60',NULL,'1300*700*420mm','黑色',594,NULL,1830.00,1830.00,'95bf2325-e6c5-4c7e-b99e-ad4cfe31a4ed',1,'2017-07-19 17:07:30','http://qiniuti.7secai.cn/20170719170710_323.jpeg',NULL),
('ae33db2f643a4f968b8c03207be26308',NULL,'1350*800*750mm','土豪金',758,NULL,1420.00,1420.00,'b84718a2-7bd6-4ad1-a611-925d72834e6d',1,'2017-07-21 16:49:42','http://qiniuti.7secai.cn/20170721164935_358.jpeg',NULL),
('af0da1e6cfcf4f3f9e58a64c18e0e021',NULL,'1350*810*750mm','白色',889,NULL,2163.00,2163.00,'256450cc-26ef-4585-9083-e9f1dd572fec',1,'2017-07-31 19:05:40','http://qiniuti.7secai.cn/20170731190524_941.jpeg',NULL),
('b09e09ac36a24b8d86c25744122f04e3',NULL,'1330*580*865mm','蓝白双色拼接',770,NULL,2020.00,2020.00,'ec16e5f2-c398-4549-9b24-c022c2cf0d06',1,'2017-07-24 14:50:46','http://qiniuti.7secai.cn/20170724145035_137.jpg',NULL),
('b4efcd7741534e76910aab7502be1703',NULL,'1.8m*2.0m','卡其色',742,NULL,3650.00,3650.00,'64346f65-0850-4a5b-bc4e-4fd1ef1105f7',1,'2017-07-14 15:50:11','http://qiniuti.7secai.cn/20170714154907_611.jpg',NULL),
('b5b3bfab85b8418996027f5458c37681',NULL,'475*545*930mm','白色',800,NULL,474.00,474.00,'636b4a1f-603e-41a9-8472-2c59459b2cd9',1,'2017-07-24 17:59:25','http://qiniuti.7secai.cn/20170724175915_519.jpg',NULL),
('b9c130b90a25486b909219d4d857231b',NULL,'1476*800*760mm','红色',871,NULL,1180.00,1180.00,'09ab1f2a-9af8-44c3-99d6-db52881bde7c',1,'2017-07-21 15:34:03','http://qiniuti.7secai.cn/20170721153346_854.jpg',NULL),
('be778f04e07f45fcbf6f5dca8b746f49',NULL,'1300*600*1970mm','紫红色',800,NULL,2310.00,2310.00,'ae765dfc-d77e-434d-b119-2ca0ff3d66e4',1,'2017-07-24 14:09:06','http://qiniuti.7secai.cn/20170724140854_31.jpeg',NULL),
('bef0d5fb2d774923ba130a8191998e3e',NULL,'580*500*1000mm','象牙白',776,NULL,735.00,735.00,'155d4f09-c2f4-4f48-8f82-cb8b4bb71a63',1,'2017-07-23 16:34:49','http://qiniuti.7secai.cn/20170723163440_281.jpg',NULL),
('c53bfca7c1fc476fa30e6a88dc393fa8',NULL,'1600*600*2180mm','原木色',935,NULL,2440.00,2440.00,'47f48c15-e092-4bc9-97c3-369f1932a704',1,'2017-07-18 10:02:03','http://qiniuti.7secai.cn/20170718100150_138.jpg',NULL),
('c559f3a69fb34bb5be5e479712f7dcb9',NULL,'1200*600*1900mm','书桌+书架',945,NULL,1510.00,1510.00,'a0087fc1-762a-4763-89e8-9dc6e5db973d',1,'2017-07-24 15:55:10','http://qiniuti.7secai.cn/20170724155459_229.jpg',NULL),
('c6c9f24adaac4791b8981bd2a3c13e49',NULL,'1350*810*750mm','白色',777,NULL,2359.00,2359.00,'e31ee61c-e35d-479b-bf23-10367bb0c392',1,'2017-07-21 17:14:15','http://qiniuti.7secai.cn/20170721171401_637.jpeg',NULL),
('cb58a0af5fe448de96232bf8a7be8406',NULL,'2100*1300*1150mm','全芬兰松',873,NULL,1848.00,1848.00,'bc95f692-25a2-438c-8ba1-90ce7a62d68b',1,'2017-07-24 16:34:31','http://qiniuti.7secai.cn/20170724163420_648.jpg',NULL),
('d2ce2de8c13f4e6cb1435d0081fd5223',NULL,'900*292*1801mm','白色',875,NULL,878.00,878.00,'dc7479bb-3b6d-4eec-a41d-ed8e0d6a0c23',1,'2017-07-22 18:30:58','http://qiniuti.7secai.cn/20170722183040_696.jpeg',NULL),
('d33dc18aafd74a2fa3252b51a4fc8889',NULL,'体积：3.500','深灰色',874,NULL,5200.00,5200.00,'aff955d1-590d-48c9-b7d8-2ae1b7fc3ccc',1,'2017-07-19 09:54:01','http://qiniuti.7secai.cn/20170719095342_856.jpg',NULL),
('d665ac047684413e8dfc26c96db4cb93',NULL,'1350*700*400mm','黑色',898,NULL,1470.00,1470.00,'1fa4d900-4d98-4803-8f83-18a0889c34b2',1,'2017-07-19 15:40:32','http://qiniuti.7secai.cn/20170719154018_703.jpg',NULL),
('db4c53d01a3a43dcac120665bea87440',NULL,'421*390*1677mm','白色',901,NULL,610.00,610.00,'40ce6ed7-2778-41c2-96d9-8a72e1a2d2e1',1,'2017-07-20 11:09:38','http://qiniuti.7secai.cn/20170720110927_197.jpeg',NULL),
('df83e0183d9649db9bdf5bbc8eadf9c0',NULL,'2200*1290*1130mm','床板床',667,NULL,1980.00,1980.00,'b588c021-e269-4bdd-9a09-8c12dfc9476b',1,'2017-07-24 10:05:59','http://qiniuti.7secai.cn/20170724100551_286.jpeg',NULL),
('e1c1b68085ba45f5889bffd97acdf58d',NULL,'730*730*550MM','米黄色',891,NULL,1258.00,1258.00,'49fb056f-7966-4323-b688-160fc119bd52',1,'2017-07-19 14:23:30','http://qiniuti.7secai.cn/20170719142305_578.jpeg',NULL),
('e274eddcaba34dcf84ee5b872f5a6665',NULL,'480*420*930mm','白色',696,NULL,198.00,198.00,'ceb79cd0-a389-4115-8546-67310d93cf14',1,'2017-07-25 10:51:57','http://qiniuti.7secai.cn/20170725105148_819.jpeg',NULL),
('ecfdbbe5ac02436e91ae5b62f5b9f0e3',NULL,'1000*385*1000mm','象牙白',899,NULL,1690.00,1690.00,'22d7ce2c-21f5-4555-b24c-8b21a6db45a7',1,'2017-07-20 16:19:24','http://qiniuti.7secai.cn/20170720161909_530.jpeg',NULL),
('f079941cc58d4955979391634441af92',NULL,'590*500*820mm','白色',799,NULL,723.00,723.00,'648fb5b4-2438-4956-b265-c5051855d649',1,'2017-07-23 11:57:26','http://qiniuti.7secai.cn/20170723115707_883.jpg',NULL),
('f20a936eef4f4e8e9da14743f6f6d1a7',NULL,'2000*400*450mm','白色',897,NULL,2575.00,2575.00,'8a756d88-2457-4888-9c7c-174e22a90c08',1,'2017-07-20 09:32:58','http://qiniuti.7secai.cn/20170720093241_309.jpg',NULL),
('f271386802e54da7baabafda3e417496',NULL,'500*500*500mm','白色钢化玻璃',591,NULL,525.00,525.00,'aeaace68-bb2d-42c3-bc68-10e1b360d873',1,'2017-07-19 16:07:10','http://qiniuti.7secai.cn/20170719160658_193.jpeg',NULL),
('f4d2f00673e5452898640d33f578e6a7',NULL,'长260*宽160*高82cm','米色+棕色',916,NULL,2920.00,2920.00,'d5cbe572-b343-4498-9770-ef0e80ea97d1',1,'2017-07-18 17:51:17','http://qiniuti.7secai.cn/20170718175047_13.jpeg',NULL),
('f4d494c65f9747cb954666f4120aa0c6',NULL,'2160*830*700cm','四色 可选',762,NULL,1786.00,1786.00,'52f8a23f-5677-4b20-8364-5e170a83fe92',1,'2017-07-19 10:47:32','http://qiniuti.7secai.cn/20170719104707_246.jpeg',NULL),
('fb0cb2ae53c84cb68f0c564fe65289c5',NULL,'1300*600*2000mm','粉紫色',778,NULL,1980.00,1980.00,'d3935bb9-4443-4d01-88ec-91162a53b787',1,'2017-07-24 11:40:04','http://qiniuti.7secai.cn/20170724113942_577.jpg',NULL);

/*Table structure for table `goods_meubletype` */

DROP TABLE IF EXISTS `goods_meubletype`;

CREATE TABLE `goods_meubletype` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `typeName` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '分类名称',
  `titreName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '副标题',
  `typeId` varchar(64) COLLATE utf8_bin DEFAULT '1' COMMENT '父级分类Id',
  `typeImage` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '分类图片',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='家具商品分类信息表';

/*Data for the table `goods_meubletype` */

insert  into `goods_meubletype`(`id`,`typeName`,`titreName`,`typeId`,`typeImage`,`addTime`,`reserve1`,`reserve2`) values 
('0ff9c732e7cf4ab79816e67b1242027f','酒柜','酒柜','b2b2','http://qiniuti.7secai.cn/20170726105904_519.jpg','2017-07-14 11:46:50',NULL,NULL),
('1','分类','分类','0','http://omumzem73.bkt.clouddn.com/20170609101135_573.jpg','2017-03-27 16:46:57',NULL,NULL),
('1cc8e58f977c4686b73c4fec555ec2c1','沙发','沙发','b2b2','http://qiniuti.7secai.cn/20170726111805_242.jpg','2017-05-17 15:37:14',NULL,NULL),
('2','风格','风格','0','http://omumzem73.bkt.clouddn.com/20170609101135_573.jpg','2017-03-27 16:47:13',NULL,NULL),
('22aa42ad361c45489b9e3bd61269a86c','书架/书柜','书架/书柜','b4b4','http://qiniuti.7secai.cn/20170726113247_824.jpg','2017-07-14 12:01:04',NULL,NULL),
('2323','现代','现代风格','2','http://qiniuti.7secai.cn/20170731181524_293.jpg','2017-03-27 16:47:13',NULL,NULL),
('293705dc09084976a210b50533c19967','儿童衣柜','儿童衣柜','6d4c5f6134ee495191c6d117c0f6a07f','http://qiniuti.7secai.cn/20170726095047_912.jpg','2017-07-14 12:02:30',NULL,NULL),
('3e62178db1094537aa694eb79d1a165b','梳妆台','梳妆台','b1b1','http://qiniuti.7secai.cn/20170726155211_218.jpg','2017-07-14 11:45:32',NULL,NULL),
('4ddcb8033e5c476b840ab518322d0e6f','斗柜','斗柜','b2b2','http://qiniuti.7secai.cn/20170726105431_868.jpg','2017-07-14 11:47:36',NULL,NULL),
('5073a4ce94494972b8423d1ff8444656','欧式床','欧式床','2323','http://omumzem73.bkt.clouddn.com/20170609095842_469.jpg','2017-05-11 10:13:00',NULL,NULL),
('5154b3f43795439caef175382edd0c49','餐桌','餐桌','b3b3','http://qiniuti.7secai.cn/20170726112612_462.jpg','2017-06-09 10:06:55',NULL,NULL),
('5c4e84ea734c48ee94a69c13b564c57e','北欧床','北欧床','2323','http://omumzem73.bkt.clouddn.com/20170609100546_894.jpg','2017-06-09 10:05:47',NULL,NULL),
('6747ed51a1854b8d8c42c012c4f73945','书桌','书桌','b4b4','http://qiniuti.7secai.cn/20170726113927_432.jpg','2017-06-09 10:07:39',NULL,NULL),
('6d4c5f6134ee495191c6d117c0f6a07f','儿童','儿童家具','1','http://qiniuti.7secai.cn/20170728101507_838.jpg','2017-07-14 11:58:20',NULL,NULL),
('7450a00ee56d4c7abcbcc7a848e2eaff','鞋柜','鞋柜','b2b2','http://qiniuti.7secai.cn/20170726105627_12.jpg','2017-07-14 11:47:05',NULL,NULL),
('76bd135206244c8b942dfda96e58edac','地中海','地中海','2','http://qiniuti.7secai.cn/20170802150436_204.jpg','2017-07-14 14:09:16',NULL,NULL),
('76d6be7de60144dea578361500601074','衣柜','衣柜','b1b1','http://qiniuti.7secai.cn/20170726155939_391.jpg','2017-07-14 11:45:14',NULL,NULL),
('7c7a6d941c0748cb9246a9871bba4c88','唐代样式','唐代样式','a4a4','http://omumzem73.bkt.clouddn.com/20170609094412_527.png','2017-06-09 09:44:15',NULL,NULL),
('8abf4a4a9aa6483284da3be514c31437','儿童书桌','儿童书桌','6d4c5f6134ee495191c6d117c0f6a07f','http://qiniuti.7secai.cn/20170726095608_810.jpg','2017-07-14 12:01:40',NULL,NULL),
('8b51040452e9407b827d00bff3d94de2','北欧','北欧风格','2','http://qiniuti.7secai.cn/20170801112954_612.jpg','2017-07-13 13:54:53',NULL,NULL),
('9d5f258c668b473e8f670ee89a9f8bf3','电视柜','电视柜','b2b2','http://qiniuti.7secai.cn/20170726110653_76.jpg','2017-07-14 11:46:23',NULL,NULL),
('a2a2','欧式','欧式风格','2','http://qiniuti.7secai.cn/20170801120818_259.jpg','2017-03-27 16:47:13',NULL,NULL),
('a2a2b1','现代床','现代床','a2a2','http://omumzem73.bkt.clouddn.com/93231489644955501.jpg','2017-03-27 16:47:13',NULL,NULL),
('a2a2b2','现代沙发','现代沙发','a2a2','http://omumzem73.bkt.clouddn.com/93231489644955501.jpg','2017-03-27 16:47:13',NULL,NULL),
('a4a4','中式','中式风格','2','http://qiniuti.7secai.cn/20170801151145_564.jpg','2017-03-27 16:47:13',NULL,NULL),
('aa12a85ed7614eb593ddc6deff1c6018','韩式','韩式风格','2','http://qiniuti.7secai.cn/20170801092530_541.jpg','2017-07-13 13:56:41',NULL,NULL),
('ab5455010dff48729fb6210c4a448816','茶几','茶几','b2b2','http://qiniuti.7secai.cn/20170726112151_45.jpg','2017-05-17 15:37:00',NULL,NULL),
('b1b1','卧室','卧室家具','1','http://qiniuti.7secai.cn/20170728103409_664.jpg','2017-03-27 16:47:13',NULL,NULL),
('b1b1a1','床','床','b1b1','http://qiniuti.7secai.cn/20170726154756_968.jpg','2017-03-27 16:47:13',NULL,NULL),
('b1b1a2','床垫','床垫','b1b1','http://qiniuti.7secai.cn/20170726104817_512.jpg','2017-03-27 16:47:13',NULL,NULL),
('b2b2','客厅','客厅家具','1','http://qiniuti.7secai.cn/20170728105218_484.jpg','2017-03-27 16:47:13',NULL,NULL),
('b3b3','餐厅','餐厅家具','1','http://qiniuti.7secai.cn/20170728110458_902.jpg','2017-03-27 16:47:13',NULL,NULL),
('b4b4','书房','书房家具','1','http://qiniuti.7secai.cn/20170728145642_996.jpg','2017-03-27 16:47:13',NULL,NULL),
('c6ccdfefd092442eba4da2c0eb9ea0d7','乡村','乡村风格','2','http://qiniuti.7secai.cn/20170802150548_784.jpg','2017-07-13 13:58:54',NULL,NULL),
('d4d82b3c2f804822b56501cb9ff094b6','儿童床','儿童床','6d4c5f6134ee495191c6d117c0f6a07f','http://qiniuti.7secai.cn/20170726095906_169.jpg','2017-07-14 12:01:28',NULL,NULL),
('d8438bef7d184bc3918585560ded37f5','餐椅','餐椅','b3b3','http://qiniuti.7secai.cn/20170726153514_12.jpg','2017-06-09 10:06:42',NULL,NULL),
('e19cc55c73294e46b63eef8b79ebe553','美式','美式风格','2','http://qiniuti.7secai.cn/20170802150452_864.jpg','2017-07-13 13:59:12',NULL,NULL),
('ebafddb60dad47a98c1d5cc796579d74','书椅','书椅','b4b4','http://qiniuti.7secai.cn/20170726114147_455.jpg','2017-06-09 10:07:26',NULL,NULL);

/*Table structure for table `goods_shop_meublecart` */

DROP TABLE IF EXISTS `goods_shop_meublecart`;

CREATE TABLE `goods_shop_meublecart` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `meubleId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '商品规格id',
  `meubleNumber` int(10) DEFAULT NULL COMMENT '商品数量',
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联用户ID',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员家具购物车';

/*Data for the table `goods_shop_meublecart` */

insert  into `goods_shop_meublecart`(`id`,`meubleId`,`meubleNumber`,`userId`,`addTime`,`reserve1`,`reserve2`) values 
('3726fb8f0318401ba4183725e2ffe653','b9c130b90a25486b909219d4d857231b',1,'e60d4259ab2a4d87868bd6cf0c965d00','2017-08-02 16:12:49',NULL,NULL),
('c2dcfc5c8c0a4e6b8f3b12a14412ace5','d665ac047684413e8dfc26c96db4cb93',1,'3691bc3411904cb9ae3455faafbe8ffe','2017-08-03 18:50:56',NULL,NULL);

/*Table structure for table `installer_freightordre` */

DROP TABLE IF EXISTS `installer_freightordre`;

CREATE TABLE `installer_freightordre` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `orderId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '会员订单ID',
  `freightOrdreId` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '货运ID',
  `goodsAddress` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '取货地址',
  `goodsName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '取货姓名',
  `goodsPhone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '取货电话',
  `membersNameAndPhone` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名、联系电话(用户)',
  `membersAddress` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '地址(用户)',
  `returnSumMoney` decimal(20,2) DEFAULT NULL COMMENT '货运金额',
  `returnMoney` decimal(20,2) DEFAULT NULL COMMENT '扣除金额',
  `returnType` tinyint(4) DEFAULT NULL COMMENT '货运处理状态 1-待货运 2-已接受 3-已预约 4-货运已完成',
  `freightType` tinyint(4) DEFAULT NULL COMMENT '货运完整状态（会员操作） 1-完整 2-有损坏',
  `deductWhy` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '扣除原因',
  `isNotSettlement` tinyint(4) DEFAULT NULL COMMENT '是否结算 1-未结算 2-已结算',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `acceptTime` datetime DEFAULT NULL COMMENT '接受时间',
  `appointmentTime` datetime DEFAULT NULL COMMENT '预约时间',
  `completeTime` datetime DEFAULT NULL COMMENT '货运已完成时间',
  `membersTime` datetime DEFAULT NULL COMMENT '结算时间',
  `isNotType` tinyint(4) DEFAULT NULL COMMENT '是否取消该用户派单 1-未取消 2-已取消',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='货运派单信息表';

/*Data for the table `installer_freightordre` */

insert  into `installer_freightordre`(`id`,`orderId`,`freightOrdreId`,`goodsAddress`,`goodsName`,`goodsPhone`,`membersNameAndPhone`,`membersAddress`,`returnSumMoney`,`returnMoney`,`returnType`,`freightType`,`deductWhy`,`isNotSettlement`,`createTime`,`acceptTime`,`appointmentTime`,`completeTime`,`membersTime`,`isNotType`,`reserve1`,`reserve2`) values 
('063b11157c5645938fd516f1dfdccd98','67956569f863400a85abdc86685f2ff0','d8a26cfffc7248f3b922e9812e734575','渝北空港长安大道50','李先生','13000000000','仿佛 v 过 17384763081','重庆重庆县辖江北区退换货',5.00,2.00,4,2,'货运过程损坏客户商品',1,'2017-08-04 14:59:10','2017-08-04 14:59:56','2017-08-05 10:00:00','2017-08-04 15:14:10',NULL,1,NULL,NULL),
('18bb2d2550134bb4aebd5751035753f7','89cbc4ff58034a71a345817d5f99e698','d8a26cfffc7248f3b922e9812e734575','重庆江北国际机场','小二哥','15000000000','梁远江 13368466998','重庆重庆市辖江北区富洲新城',2.00,NULL,4,1,NULL,1,'2017-08-11 16:55:51','2017-08-11 16:57:58','2017-08-19 16:57:00','2017-08-11 16:59:55',NULL,1,NULL,NULL),
('20b587cb8c344c0d8c3f4eb51c3f3909','8907f047d40742c4b89283cc0a71345f','d8a26cfffc7248f3b922e9812e734575','江北区观音桥 23-6','李三','13365234791','钟国 17384763081','重庆重庆县辖江北区退换货',5.00,NULL,3,NULL,NULL,1,'2017-08-03 17:45:48','2017-08-03 17:54:29','2017-08-05 17:54:00',NULL,NULL,1,NULL,NULL),
('35b72cd424974596b3572c0855c30636','90ecdbc0f3ce498d840bd32ee1060ee7','d8a26cfffc7248f3b922e9812e734575','重庆观音桥北辰名都','陆枯','15689457823','钟国 17384763081','重庆重庆县辖江北区退换货',5.00,NULL,3,NULL,NULL,1,'2017-08-03 18:14:57','2017-08-03 18:15:32','2017-08-04 01:41:00',NULL,NULL,1,NULL,NULL),
('e44c4663c7e3420aa0e15c66167dc48b','89cbc4ff58034a71a345817d5f99e698','d8a26cfffc7248f3b922e9812e734575','重庆江北机场','小二哥','15000000000','梁远江 13368466998','重庆重庆市辖江北区富洲新城',2.00,NULL,1,NULL,NULL,1,'2017-08-11 16:52:18',NULL,NULL,NULL,NULL,2,NULL,NULL);

/*Table structure for table `installer_informationarea` */

DROP TABLE IF EXISTS `installer_informationarea`;

CREATE TABLE `installer_informationarea` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标识值（主键）（唯一值）',
  `informationId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '售后ID(user_account表主键)',
  `provinceId` int(10) DEFAULT NULL COMMENT '省',
  `theCityId` int(10) DEFAULT NULL COMMENT '市',
  `countyId` int(10) DEFAULT NULL COMMENT '区',
  `editTime` date DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `installer_informationarea` */

insert  into `installer_informationarea`(`id`,`informationId`,`provinceId`,`theCityId`,`countyId`,`editTime`,`reserve1`,`reserve2`) values 
(5,'e60d4259ab2a4d87868bd6cf0c965d0f',50,5003,500105,'2017-07-31',NULL,NULL),
(6,'e60d4259ab2a4d87868bd6cf0c965d0f',50,5001,500112,'2017-07-31',NULL,NULL),
(7,'e60d4259ab2a4d87868bd6cf0c965d0f',50,5001,500104,'2017-07-31',NULL,NULL),
(8,'e60d4259ab2a4d87868bd6cf0c965d00',50,5001,500105,'2017-07-31',NULL,NULL),
(9,'a2d243b1bb954a35b67379f1233f5f99',50,5001,500105,'2017-08-03',NULL,NULL),
(13,'0bbd97ab2d0b4067b86a692566d562f8',50,5002,500105,'2017-08-03',NULL,NULL),
(14,'0bbd97ab2d0b4067b86a692566d562f8',50,5003,500104,'2017-08-03',NULL,NULL),
(15,'0bbd97ab2d0b4067b86a692566d562f8',50,5002,500107,'2017-08-03',NULL,NULL),
(16,'0bbd97ab2d0b4067b86a692566d562f8',50,5002,500108,'2017-08-03',NULL,NULL),
(17,'4b8bc4e1d5d9472d891bcc3b3fc3c99a',50,5001,500105,'2017-08-03',NULL,NULL),
(18,'d8a26cfffc7248f3b922e9812e734575',50,5003,500105,'2017-08-03',NULL,NULL),
(19,'4b8bc4e1d5d9472d891bcc3b3fc3c99a',50,5001,500112,'2017-08-03',NULL,NULL),
(20,'d8a26cfffc7248f3b922e9812e734575',50,5003,500104,'2017-08-03',NULL,NULL),
(21,'d8a26cfffc7248f3b922e9812e734575',50,5003,500103,'2017-08-03',NULL,NULL),
(22,'4b8bc4e1d5d9472d891bcc3b3fc3c99a',50,5001,500106,'2017-08-03',NULL,NULL),
(23,'d8a26cfffc7248f3b922e9812e734575',50,5003,500102,'2017-08-03',NULL,NULL);

/*Table structure for table `installer_listedes` */

DROP TABLE IF EXISTS `installer_listedes`;

CREATE TABLE `installer_listedes` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `orderId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '会员订单ID',
  `freightOrdreId` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '安装工人ID',
  `listeDesType` tinyint(4) DEFAULT '1' COMMENT '安装派发类型1-安装工人 2-安装公司 默认1',
  `membersNameAndPhone` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名、联系电话(用户)',
  `membersAddress` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '地址(用户)',
  `returnSumMoney` decimal(20,2) DEFAULT '0.00' COMMENT '安装金额',
  `returnMoney` decimal(20,2) DEFAULT '0.00' COMMENT '扣除金额',
  `addMoney` decimal(20,2) DEFAULT '0.00' COMMENT '添加的金额',
  `returnType` tinyint(4) DEFAULT '1' COMMENT '安装处理状态 1-安装已派单 2-安装已接受 3-安装已预约 4-待评价 5-完成',
  `deductWhy` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '扣除原因',
  `isNotSettlement` tinyint(4) DEFAULT NULL COMMENT '是否结算 1-未结算 2-已结算',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `acceptTime` datetime DEFAULT NULL COMMENT '接受时间',
  `appointmentTime` datetime DEFAULT NULL COMMENT '预约时间',
  `evaluationTime` datetime DEFAULT NULL COMMENT '评价时间',
  `completeTime` datetime DEFAULT NULL COMMENT '完成时间',
  `membersTime` datetime DEFAULT NULL COMMENT '结算时间',
  `isNotType` tinyint(4) DEFAULT NULL COMMENT '是否取消该用户派单 1-未取消 2-已取消',
  `reserve1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='安装派单信息表';

/*Data for the table `installer_listedes` */

insert  into `installer_listedes`(`id`,`orderId`,`freightOrdreId`,`listeDesType`,`membersNameAndPhone`,`membersAddress`,`returnSumMoney`,`returnMoney`,`addMoney`,`returnType`,`deductWhy`,`isNotSettlement`,`createTime`,`acceptTime`,`appointmentTime`,`evaluationTime`,`completeTime`,`membersTime`,`isNotType`,`reserve1`,`reserve2`) values 
('42d89ccacdcf4b548186dd0c9f2f1449','67956569f863400a85abdc86685f2ff0','4b8bc4e1d5d9472d891bcc3b3fc3c99a',1,'少帅 17384763081','重庆重庆县辖江北区退换货',2.00,0.00,0.00,5,NULL,1,'2017-08-04 15:56:14','2017-08-04 15:58:29','2017-08-05 11:00:00','2017-08-04 16:00:50','2017-08-04 16:00:50',NULL,1,NULL,NULL),
('5aa810656a784e60b120e2ae53ba971b','89cbc4ff58034a71a345817d5f99e698','4b8bc4e1d5d9472d891bcc3b3fc3c99a',1,'梁远江 13368466998','重庆重庆市辖江北区富洲新城',1.00,0.00,0.00,3,NULL,1,'2017-08-11 17:09:49','2017-08-11 18:04:29','2017-08-14 18:04:00',NULL,NULL,NULL,1,NULL,NULL),
('5fb606ff74854c49b2a865f207099d72','89cbc4ff58034a71a345817d5f99e698','4b8bc4e1d5d9472d891bcc3b3fc3c99a',1,'梁远江 13368466998','重庆重庆市辖江北区富洲新城',1.00,0.00,0.00,1,NULL,1,'2017-08-11 17:04:04',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
('79fce0a280854e2284f12c429e608476','67956569f863400a85abdc86685f2ff0','4b8bc4e1d5d9472d891bcc3b3fc3c99a',1,'少帅 17384763081','重庆重庆县辖江北区退换货',2.00,0.00,0.00,1,NULL,1,'2017-08-04 15:53:52',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);

/*Table structure for table `installer_listeestimer` */

DROP TABLE IF EXISTS `installer_listeestimer`;

CREATE TABLE `installer_listeestimer` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `listeDesId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '货运/安装派单ID',
  `listeType` tinyint(4) DEFAULT '1' COMMENT '派单类型 1-货运 2-安装',
  `isNotDamage` tinyint(4) DEFAULT '1' COMMENT '是否是货运损坏评价/安装待评价 1-不是 2-是',
  `friendlyCommunication` tinyint(4) DEFAULT '0' COMMENT '评价（安装）友好沟通 1-优秀 2-良好（默认） 3-一般 4-差 5-恶劣',
  `installation` tinyint(4) DEFAULT '0' COMMENT '评价（安装）安装技术 1-好 2-一般 3-差',
  `reserveEvaluation` tinyint(4) DEFAULT '0' COMMENT '评价（安装）预留',
  `settleOrders` tinyint(4) DEFAULT '1' COMMENT '派单结算处理 1-未处理 2-已处理',
  `estimerVlue` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '评论内容',
  `estimerTime` datetime DEFAULT NULL COMMENT '评论时间',
  `estimerReplies` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '客服回复',
  `reparentId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '二级评论ID',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '为货运评价时：存储规格主键。安装评价则：无',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='安装派单评价信息';

/*Data for the table `installer_listeestimer` */

insert  into `installer_listeestimer`(`id`,`listeDesId`,`listeType`,`isNotDamage`,`friendlyCommunication`,`installation`,`reserveEvaluation`,`settleOrders`,`estimerVlue`,`estimerTime`,`estimerReplies`,`reparentId`,`reserve1`) values 
('3e0c4af71cdb42a190128ef46229dcb8','063b11157c5645938fd516f1dfdccd98',1,2,0,0,0,2,'床有划痕','2017-08-04 15:09:34','谢谢你的反馈，我们会尽快处理\r\n处理的方式和方法告诉客户，必须要得到客户的认可，',NULL,'b9c130b90a25486b909219d4d857231b'),
('5b8ca83f709f4611a2b8fb6c89da35ca','8130b1740c8b4a1dbd150f12a84e18bc',1,2,0,0,0,1,'好的不得了','2017-08-03 17:17:53',NULL,NULL,'b9c130b90a25486b909219d4d857231b'),
('8db5d22dfd284687b3d2b8c7713b7af4','42d89ccacdcf4b548186dd0c9f2f1449',2,2,2,5,5,2,'态度蛮横','2017-08-04 16:00:50','已经处理安装师傅，感谢您的关注！',NULL,NULL);

/*Table structure for table `installer_listeimage` */

DROP TABLE IF EXISTS `installer_listeimage`;

CREATE TABLE `installer_listeimage` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `listeId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '派单评价ID',
  `imageText` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '图片地址',
  `addsTime` datetime DEFAULT NULL COMMENT '创建时间',
  `isNotDelete` tinyint(4) DEFAULT NULL COMMENT '是否删除 1-未删除，2-已删除',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='派单评价图片';

/*Data for the table `installer_listeimage` */

insert  into `installer_listeimage`(`id`,`listeId`,`imageText`,`addsTime`,`isNotDelete`,`reserve1`,`reserve2`) values 
('226dc733219440ea909d844d569f454f','5b8ca83f709f4611a2b8fb6c89da35ca','http://qiniuti.7secai.cn/FqvFlw6M92LCoBjB-T7Ou4tnXoRw','2017-08-03 17:17:53',1,NULL,NULL),
('261809d9bfc74faa8688346ce2bae05d','8638e902ff9540a0bf658505cfd32084','http://qiniuti.7secai.cn/Fj-jssNqKcINSRPq71MNp51OEqhz','2017-08-03 17:00:17',1,NULL,NULL),
('2fed8cdf1e5545c1ad2bfeca8b9223ca','84f6e42d88974947959089b1ff13fc27','http://qiniuti.7secai.cn/Fi6-rJVA-p8uLeM1NpKhOuF2CO8D','2017-08-03 16:45:35',1,NULL,NULL),
('582be78ff02449109e64b0f7b1b7243d','3e0c4af71cdb42a190128ef46229dcb8','http://qiniuti.7secai.cn/FjXzjHuNc8SB5ES_w5jEWyONyB1l','2017-08-04 15:09:35',1,NULL,NULL),
('6662658141d442438fbea5b5d324be15','5b8ca83f709f4611a2b8fb6c89da35ca','http://qiniuti.7secai.cn/FttqDN_7-p-hlopBO2bmd5tCUnaL','2017-08-03 17:17:53',1,NULL,NULL),
('6a6b46decb564061a9e8c431051ebcf7','8638e902ff9540a0bf658505cfd32084','http://qiniuti.7secai.cn/FqAtyuZ0xwoxha9CtMETo1jtwdgu','2017-08-03 17:00:17',1,NULL,NULL),
('87b4fa438eaa41d388bf4e86665f4d3f','84f6e42d88974947959089b1ff13fc27','http://qiniuti.7secai.cn/Fj-jssNqKcINSRPq71MNp51OEqhz','2017-08-03 16:45:35',1,NULL,NULL),
('aa3ae1d136e34c84ac62e13c956998ce','3e0c4af71cdb42a190128ef46229dcb8','http://qiniuti.7secai.cn/Ft9JHq4YIiC2v3IXyWk3CLChcc52','2017-08-04 15:09:35',1,NULL,NULL),
('b79bbd5a736242c4926a03c84248d951','5b8ca83f709f4611a2b8fb6c89da35ca','http://qiniuti.7secai.cn/FmppRkqkbhaprFRFYQbWcs0OUuPa','2017-08-03 17:17:53',1,NULL,NULL),
('ba16e6b727774eccb1942cf849db35eb','3e0c4af71cdb42a190128ef46229dcb8','http://qiniuti.7secai.cn/FtIX29CQuW-8FB4rgYHG63SiWefi','2017-08-04 15:09:35',1,NULL,NULL),
('bfd6ce1a97734c7baa314444bd409b70','8638e902ff9540a0bf658505cfd32084','http://qiniuti.7secai.cn/FvkLzlPxNs8RMVxtjpcT4_9UwjBN','2017-08-03 17:00:17',1,NULL,NULL),
('f6e3029a9952417ab1675739194d90e2','84f6e42d88974947959089b1ff13fc27','http://qiniuti.7secai.cn/Fi6-rJVA-p8uLeM1NpKhOuF2CO8D','2017-08-03 16:45:35',1,NULL,NULL);

/*Table structure for table `phone_envoyernoter` */

DROP TABLE IF EXISTS `phone_envoyernoter`;

CREATE TABLE `phone_envoyernoter` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `envoyerPhone` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码一条一条发送的时候电话号码的记录',
  `envoyerText` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT '发送内容',
  `envoyerNumber` int(10) DEFAULT NULL COMMENT '发送数量',
  `envoyerDecrire` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '发送描述（后台代码中简单的对发送做出简单描述）',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `phone_envoyernoter` */

insert  into `phone_envoyernoter`(`id`,`envoyerPhone`,`envoyerText`,`envoyerNumber`,`envoyerDecrire`,`addTime`,`reserve1`,`reserve2`) values 
('0564cad45b8942dd90f620a242c5dc74','15223102088','七色彩家具提醒你，你有新的安装派单还未接受，请及时处理！超过6小时自动取消派单。',1,'安装派单提醒短信','2017-08-04 15:56:14',NULL,NULL),
('0685e622208147c99ffbe702c4f21c6e','17384763081','注册验证码，你的验证码为：4126',1,'短信验证','2017-07-20 11:25:58',NULL,NULL),
('085820a8919e42aeabac795568555e32','17384763081','找回密码，你的验证码为：8210',1,'短信验证','2017-08-04 15:04:24',NULL,NULL),
('0a39914f830d4d9c986fa326acb4976f','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 15:00:00',NULL,NULL),
('0a4235a70f65464480abd2b42c51b4a3','17384763081','注册验证码，你的验证码为：2289',1,'短信验证','2017-07-20 11:04:06',NULL,NULL),
('1401b2093c134e7bb1f7ecbcbde316d7','17384763081','注册验证码，你的验证码为：1255',1,'短信验证','2017-08-03 11:53:49',NULL,NULL),
('16145478eb994ba1acf41343849b9227','13983379332','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('1f4d8893651e4b5bb3aee8b0938f3ba4','17384763081','找回密码，你的验证码为：9449',1,'短信验证','2017-07-20 09:58:33',NULL,NULL),
('21027a2ccc2743b2b92c0de951a8fce4','15223102088','七色彩家具提醒你，你有新的安装派单还未接受，请及时处理！超过6小时自动取消派单。',1,'安装派单提醒短信','2017-08-11 17:09:49',NULL,NULL),
('238fe801d2a74f528f745d302e3913d0','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-03 15:57:24',NULL,NULL),
('245928fa34004eb7b1f91f3edc762ea8','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 13:00:00',NULL,NULL),
('24a53de73b494535b9063acf56db0c00','17384763081','找回密码，你的验证码为：9791',1,'短信验证','2017-07-19 18:12:26',NULL,NULL),
('266aa04f0b0e4fbda880a8cff11d9ec8','17384763081','注册验证码，你的验证码为：2900',1,'短信验证','2017-07-20 10:57:40',NULL,NULL),
('2696d328c5a04e24993a306e4672dd3f','13983379332','注册验证码，你的验证码为：1355',1,'短信验证','2017-07-20 15:10:11',NULL,NULL),
('2746730fd58e405caf1044ddb2f453a9','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-03 15:53:13',NULL,NULL),
('279161b338bb48f0816f0da2087ef757','13368466998','注册验证码，你的验证码为：3817',1,'短信验证','2017-08-03 14:14:01',NULL,NULL),
('2d429e436f274b0abe9145b84ceea0bb','17384763081','找回密码，你的验证码为：9903',1,'短信验证','2017-07-20 09:44:35',NULL,NULL),
('2f34eee37ebc452398b8cb6b611d1d13','13983379332','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('2f9f95ad8db841208f0f0fb15a766ff9','17384663081','注册验证码，你的验证码为：2279',1,'短信验证','2017-07-28 11:27:15',NULL,NULL),
('302e267b6147485182c66291f499d0f8','15223102088','七色彩家具提醒你，你有新的安装派单还未接受，请及时处理！超过6小时自动取消派单。',1,'安装派单提醒短信','2017-08-04 15:53:52',NULL,NULL),
('3441fe1333614ed3a55671000da24e50','17384663081','注册验证码，你的验证码为：8962',1,'短信验证','2017-07-28 11:24:00',NULL,NULL),
('3bd94f2f1c92475caca75aa234c2b062','17384763081','找回密码，你的验证码为：2329',1,'短信验证','2017-07-19 18:46:10',NULL,NULL),
('3bec8d919fe34d65a0210e1a02d8c289','17384763081','注册验证码，你的验证码为：3795',1,'短信验证','2017-07-28 10:46:22',NULL,NULL),
('3dbabce4c85e4f429d3d4e977644b815','17384763081','找回密码，你的验证码为：1482',1,'短信验证','2017-07-20 09:43:01',NULL,NULL),
('3defe00eff634245851673ddea801cf8','13983428324','找回密码，你的验证码为：4077',1,'短信验证','2017-08-10 11:12:45',NULL,NULL),
('3e163a522b324f89a2df10b4ca66c742','17384763081','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('3e34a9b0852f44be8c1ea9d84ca439e1','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-11 16:52:18',NULL,NULL),
('3e3add38f425407881638916ef841284','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 12:00:00',NULL,NULL),
('41615336642b4776a2a02ac5ce9bbe64','17384763081','注册验证码，你的验证码为：4462',1,'短信验证','2017-07-26 14:11:17',NULL,NULL),
('43c97bb17ed5470b9b26fe6235d6fe86','17384763081','找回密码，你的验证码为：3836',1,'短信验证','2017-07-19 18:29:20',NULL,NULL),
('477b0bcfb67f497b9034b1d9a7444789','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-03 18:14:57',NULL,NULL),
('4adae2a5122b4fc0afc1d0af0d5df3bc','17384763081','注册验证码，你的验证码为：1803',1,'短信验证','2017-07-28 11:01:27',NULL,NULL),
('4f00b8f9e05c4b08a18611bb025940c0','18636682096','熊太郎，过来了没得，再不来今天周末堵死个人哟！不许开车，6点半准时在周二娃那里等你.',1,'营销发送短信','2017-08-11 17:55:07',NULL,NULL),
('52dbb83ed31c494792ac1202c68c5150','17384763081','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('536d7ebcd2a7461881b1139c1d5dc180','17384663081','注册验证码，你的验证码为：9744',1,'短信验证','2017-07-28 11:20:50',NULL,NULL),
('53abd6bf483f4d6d956016019200e114','13983379332','找回密码，你的验证码为：3736',1,'短信验证','2017-07-31 16:30:03',NULL,NULL),
('55ca18046a424d7ba89542ffe3dfcdcc','17384763081','找回密码，你的验证码为：9796',1,'短信验证','2017-07-20 09:31:21',NULL,NULL),
('56b451d189d74e37b477266879e375a8','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 14:30:00',NULL,NULL),
('59b07d45bc3f4a23922fc89995dbf207','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 11:00:00',NULL,NULL),
('5fd4a10ab403405cbacbd6368fdb5db0','13368466998','找回密码，你的验证码为：1229',1,'短信验证','2017-08-03 16:08:00',NULL,NULL),
('642f788d0cd24c7a88019b1a7ed0c48b','15223102088','注册验证码，你的验证码为：3182',1,'短信验证','2017-08-03 14:19:30',NULL,NULL),
('669756891e1048499bc8c843ebf036f0','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-03 14:57:07',NULL,NULL),
('6b275c4abad248b7adc303ae812c29b4','17384763081','找回密码，你的验证码为：9839',1,'短信验证','2017-07-19 17:59:03',NULL,NULL),
('6b6dd97d4b734572ad461025c4ed8ce6','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 11:30:00',NULL,NULL),
('6eb6de18281c42939d866950503476ba','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 14:00:00',NULL,NULL),
('74279a7d3cce4879bed33736dcba6a2b','15198075050','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-07-20 17:47:46',NULL,NULL),
('74a8e8bf885242d9bbd300f71dc24f7f','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-04 14:59:11',NULL,NULL),
('74d48c997b5e44d2a7f05c0bafd844cc','13983379332','注册验证码，你的验证码为：3613',1,'短信验证','2017-07-31 12:35:51',NULL,NULL),
('769986c023d648af9ca37ec7123390ad','17384763081','找回密码，你的验证码为：3375',1,'短信验证','2017-07-20 09:34:45',NULL,NULL),
('77d4c8a5022d430db11b2b36a1d2ff70','15223102088','七色彩家具提醒你，你有新的安装派单还未接受，请及时处理！超过6小时自动取消派单。',1,'安装派单提醒短信','2017-08-04 14:47:43',NULL,NULL),
('795d901a7cb9436886a3dd162e3db6db','17384763081','注册验证码，你的验证码为：8140',1,'短信验证','2017-07-20 10:05:21',NULL,NULL),
('7aa8010f5f484b8692d2572b345fa779','17384763081','注册验证码，你的验证码为：9308',1,'短信验证','2017-07-26 14:24:46',NULL,NULL),
('7fff03b8ba8a41dfbc4640db9f65f8ff','17384763081','找回密码，你的验证码为：8252',1,'短信验证','2017-07-20 09:28:40',NULL,NULL),
('82d03dc23f8547a086c8eec029cf6674','17384763081','注册验证码，你的验证码为：5809',1,'短信验证','2017-07-26 14:20:47',NULL,NULL),
('87362fcf2ba3485da9d10acb933dd379','17384763081','找回密码，你的验证码为：1464',1,'短信验证','2017-07-20 09:56:05',NULL,NULL),
('875b8b07e2cb46e4a048c94cf2f92ec4','17384763081','注册验证码，你的验证码为：4021',1,'短信验证','2017-07-20 11:11:49',NULL,NULL),
('8af25adaeaea4213873a6bd07442c326','13627611748','注册验证码，你的验证码为：8153',1,'短信验证','2017-08-03 10:32:15',NULL,NULL),
('8fb58664e2954ee09e8134a86d331391','17384763081','注册验证码，你的验证码为：3978',1,'短信验证','2017-07-28 14:36:34',NULL,NULL),
('9526d12b34874f53b810f5f836a14b02','17384763081','找回密码，你的验证码为：9444',1,'短信验证','2017-07-19 17:50:20',NULL,NULL),
('96b748403f8147999aba161401f7ec1b','17384763081','注册验证码，你的验证码为：2892',1,'短信验证','2017-07-20 11:15:56',NULL,NULL),
('96dc83cdd67d4dbc8afd67a3bae83a93','17384763081','找回密码，你的验证码为：3884',1,'短信验证','2017-07-19 18:02:28',NULL,NULL),
('974674c722ee41eabdda03e47037e898','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-03 17:45:48',NULL,NULL),
('97770c64a273466cb33fb2c092c7a530','17384763081','找回密码，你的验证码为：4323',1,'短信验证','2017-07-26 10:49:02',NULL,NULL),
('97e4990f694b4ce3a7f276f8284684d0','22222222222','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('98186c44b54146f7b8814761895db81b','15223102088','七色彩家具提醒你，你有新的安装派单还未接受，请及时处理！超过6小时自动取消派单。',1,'安装派单提醒短信','2017-08-11 17:04:05',NULL,NULL),
('9c3fb27248bd4d03980f04177597962d','17384763081','注册验证码，你的验证码为：4261',1,'短信验证','2017-07-20 10:59:27',NULL,NULL),
('a0a896bdb33d4ef4836cd95593e80ddd','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-04 09:11:25',NULL,NULL),
('a14e4d18ffd34244b0ea872a6f52dc62','17384763081','找回密码，你的验证码为：3638',1,'短信验证','2017-07-19 17:56:48',NULL,NULL),
('a497d54deab74a74af69f03e8dcad853','17384763081','找回密码，你的验证码为：7240',1,'短信验证','2017-07-20 09:48:17',NULL,NULL),
('a682014cb149466cb9890d2f753d39c3','17384763081','找回密码，你的验证码为：1677',1,'短信验证','2017-07-20 09:37:09',NULL,NULL),
('a7f17ee3bb0940ae8b9787abfdfb65aa','17384763081','找回密码，你的验证码为：1654',1,'短信验证','2017-07-20 10:02:13',NULL,NULL),
('ac7f18bc4a1c4818acae745af4db53b6','13983428324','找回密码，你的验证码为：4558',1,'短信验证','2017-07-31 12:30:17',NULL,NULL),
('add29e0e0105409588f26c504e953692','17384763081','找回密码，你的验证码为：1382',1,'短信验证','2017-07-20 09:27:01',NULL,NULL),
('b020a63d72744229b2a3b10fd7539df9','13983379332','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('b0c85b08b4d649c1a6a0cc903ffc3eef','17384763081','注册验证码，你的验证码为：3542',1,'短信验证','2017-07-20 11:13:45',NULL,NULL),
('b21bb19726e2468ba3d319416dd9770b','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-04 14:56:19',NULL,NULL),
('b3c13835acb2495993ef9ad894a52a89','17384763081','注册验证码，你的验证码为：2219',1,'短信验证','2017-07-20 10:51:04',NULL,NULL),
('b8635ff9f5e04264a316beb0f01aa33a','17384763081','注册验证码，你的验证码为：3357',1,'短信验证','2017-07-28 11:34:55',NULL,NULL),
('b88695d1c56f459a8201191507b16c2b','15223102088','七色彩家具提醒你，你有新的安装派单还未接受，请及时处理！超过6小时自动取消派单。',1,'安装派单提醒短信','2017-08-04 14:28:12',NULL,NULL),
('ba0fb63bd3884c4587f820a4c7f10180','22222222222','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('bbf1d1e628dc4dfd9176a0df2774f414','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 13:30:00',NULL,NULL),
('c1b0cb8b756a4926b6fb60fe8df74a50','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 12:30:00',NULL,NULL),
('c1f669ce3b5f4d37bb89c721b1ba31fb','17384763081','找回密码，你的验证码为：3039',1,'短信验证','2017-07-19 18:18:16',NULL,NULL),
('c232868191534a089f8c9837f3670d6c','17384763081','注册验证码，你的验证码为：4022',1,'短信验证','2017-07-26 14:13:22',NULL,NULL),
('c3d7dd60885e4db09d31392d83cdab0f','17384763081','注册验证码，你的验证码为：7069',1,'短信验证','2017-07-26 10:47:26',NULL,NULL),
('c53d38fce2cb4a739f7898b3f2cf7525','17783377343','注册验证码，你的验证码为：9051',1,'短信验证','2017-08-03 10:45:16',NULL,NULL),
('c9b0089c8d314ccf93843bd4c135da6c','17384663081','注册验证码，你的验证码为：1330',1,'短信验证','2017-07-28 11:30:43',NULL,NULL),
('ccbf60ce32cd461cb148b4bff9dfcc70','13983379332','注册验证码，你的验证码为：1876',1,'短信验证','2017-08-10 11:27:32',NULL,NULL),
('d1977114138f4e56ac10b7958443b42f','15223102088','找回密码，你的验证码为：6280',1,'短信验证','2017-08-03 16:05:32',NULL,NULL),
('d23d5edae8d64e04bf0195b87f36df2a','17384763081','找回密码，你的验证码为：5546',1,'短信验证','2017-07-26 10:57:23',NULL,NULL),
('d581c7d1321d4de68d1ab3a2cdf28896','13368466998','七色彩家具提醒你，你有新的派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提示处理发送短信','2017-08-04 10:30:00',NULL,NULL),
('d7a465c7234e4c789c6cd23a13cf801d','13983428324','注册验证码，你的验证码为：8465',1,'短信验证','2017-07-31 12:13:56',NULL,NULL),
('d8f0e8370678494a964645b8e08ae912','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-11 16:55:51',NULL,NULL),
('de2054bd61fd43ae9f8a2cd59cd380e0','13388466998','七色彩家具提醒你，你有新的货运派单还未接受，请及时处理！超过6小时自动取消派单。',1,'货运派单提醒短信','2017-08-03 16:01:30',NULL,NULL),
('dff6cc4201df4621ab341af3c6510721','17384763081','注册验证码，你的验证码为：3895',1,'短信验证','2017-07-28 10:59:46',NULL,NULL),
('e07810536c4744a099a27799935eb86d','17384763081','注册验证码，你的验证码为：1388',1,'短信验证','2017-07-20 11:07:59',NULL,NULL),
('e5efe545e3534205b895d9daad0bc20e','17384763081','找回密码，你的验证码为：5449',1,'短信验证','2017-07-19 18:43:53',NULL,NULL),
('e77e1240214f4438ba68a1bd28094e3d','17384763081','注册验证码，你的验证码为：5781',1,'短信验证','2017-07-28 12:02:23',NULL,NULL),
('eead56c1d2774036a8a6e90535cf1b4c','17384763081','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('f0045c721d5140d985850196b708f51d','15198075051','七色彩家具提醒你，你有新的安装派单还未接受，请及时处理！超过6小时自动取消派单。',1,'安装派单提醒短信','2017-07-31 17:32:05',NULL,NULL),
('f5bad2c87ff84ebb8c38eb7e794c9233','17384763081','找回密码，你的验证码为：1942',1,'短信验证','2017-07-20 09:06:58',NULL,NULL),
('f8996499a231415bbdc1169965f2d4b5','22222222222','七色彩家具提醒你，你的购物车有商品未购买，15日内无操作将清空购物车，祝你购物愉快！',1,'购物车提示信息！',NULL,NULL,NULL),
('fa9cb9786e704a4f839374d1851231d0','17384663081','注册验证码，你的验证码为：1684',1,'短信验证','2017-07-28 11:17:55',NULL,NULL),
('fbf78291586a4ecc98b79b21b3ee180c','13364278321','注册验证码，你的验证码为：1902',1,'短信验证','2017-07-31 12:18:02',NULL,NULL),
('fd3d3dea1f914b0b94cf9bfed144ad2b','17384763081','注册验证码，你的验证码为：2431',1,'短信验证','2017-07-20 11:19:57',NULL,NULL),
('fe92db61bdb04674aa925b4eb6a61f45','17384763081','注册验证码，你的验证码为：1323',1,'短信验证','2017-07-28 14:33:54',NULL,NULL);

/*Table structure for table `point_goods` */

DROP TABLE IF EXISTS `point_goods`;

CREATE TABLE `point_goods` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '唯一主键',
  `goodName` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `goodType` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '对应积分商品一级分类表主键',
  `goodDefaultImg` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '商品默认图片',
  `goodInfo` text COLLATE utf8_bin COMMENT '商品介绍（富文本编辑器编辑）',
  `payPoint` int(11) DEFAULT NULL COMMENT '兑换所需积分',
  `goodRepertory` int(11) DEFAULT NULL COMMENT '商品库存',
  `goodMoney` decimal(20,2) DEFAULT NULL COMMENT '商品其他商场价格',
  `createTime` datetime DEFAULT NULL COMMENT ' 添加时间',
  `environType` int(5) DEFAULT NULL COMMENT '上下架状态（1:上架 2:下架）',
  `reserve1` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `reserve3` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='七色彩积分商品表\r\n';

/*Data for the table `point_goods` */

insert  into `point_goods`(`id`,`goodName`,`goodType`,`goodDefaultImg`,`goodInfo`,`payPoint`,`goodRepertory`,`goodMoney`,`createTime`,`environType`,`reserve1`,`reserve2`,`reserve3`) values 
('6a45e7d45d654e4b84d5fe8864364506','其味无穷二','4effb26b11fb48808cd5b2ce3a50cf8e','http://qiniuti.7secai.cn/20170811155022_896.jpg','<img src=\"http://qiniuti.7secai.cn/20170811155032_895.jpg\" alt=\"\" />',50,1000,100.00,'2017-08-11 15:50:37',1,NULL,NULL,NULL);

/*Table structure for table `point_goods_order` */

DROP TABLE IF EXISTS `point_goods_order`;

CREATE TABLE `point_goods_order` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '主键id',
  `orderCoter` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '订单编号',
  `normeId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '积分商品ID',
  `ordreNumber` int(10) DEFAULT NULL COMMENT '订单数量',
  `resterPuntos` int(10) DEFAULT NULL COMMENT '积分数量',
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '兑换用户ID',
  `addressId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '收货信息ID',
  `orderAdresse` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '收货地址 如：省，市，区，详细地址',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人姓名',
  `phone` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人电话',
  `ordreType` tinyint(4) DEFAULT NULL COMMENT '订单状态(1已付款-2待收货-3完成-4取消订单 )',
  `esmSurnom` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '快递号',
  `esmCompagnie` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '快递公司',
  `payerTime` datetime DEFAULT NULL COMMENT '付款时间 - 1订单创建时间',
  `theDeliveryTime` datetime DEFAULT NULL COMMENT '发货时间 - 2待收货',
  `goodsTime` datetime DEFAULT NULL COMMENT '完成时间 - 3完成时间',
  `backTime` datetime DEFAULT NULL COMMENT '退货时间 - 4退货(已不用)',
  `cancelTime` datetime DEFAULT NULL COMMENT '取消时间 - 5取消订单',
  `reserve1` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='积分兑换商品订单';

/*Data for the table `point_goods_order` */

/*Table structure for table `point_goods_type` */

DROP TABLE IF EXISTS `point_goods_type`;

CREATE TABLE `point_goods_type` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '唯一主键',
  `typeName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '分类名称',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `isHidden` int(11) DEFAULT '1' COMMENT '是否显示： 1-显示， 2-不显示',
  `reserve1` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='积分商品一级分类';

/*Data for the table `point_goods_type` */

insert  into `point_goods_type`(`id`,`typeName`,`createTime`,`isHidden`,`reserve1`,`reserve2`) values 
('4effb26b11fb48808cd5b2ce3a50cf8e','小礼品','2017-08-11 15:49:44',1,NULL,NULL);

/*Table structure for table `statisticsinfo` */

DROP TABLE IF EXISTS `statisticsinfo`;

CREATE TABLE `statisticsinfo` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `daySalesQuota` decimal(20,2) DEFAULT '0.00' COMMENT '日销售额',
  `dayRegisteredNumber` int(11) DEFAULT '0' COMMENT '日注册量',
  `dayPlayOrder` int(11) DEFAULT '0' COMMENT '日下单量',
  `dayTime` date DEFAULT NULL COMMENT '统计的日期',
  `createTime` datetime DEFAULT NULL COMMENT '创建的日期',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日销售额度，今日注册量，下单量 统计记录表';

/*Data for the table `statisticsinfo` */

insert  into `statisticsinfo`(`id`,`daySalesQuota`,`dayRegisteredNumber`,`dayPlayOrder`,`dayTime`,`createTime`,`reserve1`) values 
('008b05dba76e4215bb313dca661b0118',0.00,3,0,'2017-07-25','2017-07-26 00:30:00',NULL),
('0e740e91f2c64a03a56b824b73e32fb5',0.00,1,0,'2017-08-09','2017-08-10 00:30:00',NULL),
('101903ac08974a8caf58ad3cb3291ecf',0.00,2,0,'2017-08-03','2017-08-04 00:30:00',NULL),
('1abaa81566af43f0a216f64a2336bdd3',0.00,1,0,'2017-07-31','2017-08-01 00:30:00',NULL),
('1e97ca5250ea471cbcae1e785dbe7022',0.00,1,0,'2017-07-27','2017-07-28 00:30:00',NULL),
('2721917c161a4702b2b59331d2951394',0.00,0,0,'2017-07-29','2017-07-30 00:30:00',NULL),
('3549a64246a74cf480896d75f6f4fb5b',0.00,7,0,'2017-07-14','2017-07-15 00:30:00',NULL),
('3c8328d4842d4a18b47f2aac8919a3fc',0.00,1,0,'2017-08-05','2017-08-06 00:30:00',NULL),
('4c2db213057a42588e4f8e80791df389',0.00,1,0,'2017-07-22','2017-07-23 00:30:00',NULL),
('4f23e3b792e44a17a23e71d06b6d2fbf',0.00,0,0,'2017-08-07','2017-08-08 00:30:00',NULL),
('5659c9d3cadb43cfa9dc050129ce0b7a',0.00,0,0,'2017-07-21','2017-07-22 00:30:00',NULL),
('587a9d2b59414e0b913c1463f0ce9e2c',0.00,0,0,'2017-08-06','2017-08-07 00:30:00',NULL),
('5dc8bad7db194833ba7cc2ebeff15a1b',0.00,1,0,'2017-07-19','2017-07-20 00:30:00',NULL),
('71f8970a45314bba89bf5450889094a0',0.00,0,0,'2017-07-26','2017-07-27 00:30:00',NULL),
('83673b1bdc4d44569d159e66b239d061',0.00,1,0,'2017-07-15','2017-07-16 00:30:00',NULL),
('8ff7bc1bddd14fdda3579ec00d0f4363',0.00,0,0,'2017-07-30','2017-07-31 00:30:00',NULL),
('9aa84557d6cc4ef1ae6d488e1d3e5bdf',0.00,1,12,'2017-07-17','2017-07-18 00:30:00',NULL),
('a0ba4c37628b4b44a53541e46328b3d0',0.00,1,0,'2017-07-23','2017-07-24 00:30:00',NULL),
('c992141c52554271a98372530fa59127',0.00,0,0,'2017-08-04','2017-08-05 00:30:00',NULL),
('d942e111712144d6957e1b8504381814',0.00,0,0,'2017-07-24','2017-07-25 00:30:00',NULL),
('dc41944698c94221929f4f7cc02d44ec',0.00,2,0,'2017-07-28','2017-07-29 00:30:00',NULL),
('e6c1478e010f4e6e902bef7112630a64',0.00,2,0,'2017-07-20','2017-07-21 00:30:00',NULL),
('f02d225c72624575a2dce807cc91fd28',0.00,1,0,'2017-07-16','2017-07-17 00:30:00',NULL),
('f37add6a03ce46c6b2abd8eb56628946',0.00,2,0,'2017-08-02','2017-08-03 00:30:00',NULL),
('f6b9c906750946fa927ea170f9018667',0.00,1,0,'2017-08-08','2017-08-09 00:30:00',NULL),
('fbf35fdc49314af082e2d7f7faee9944',0.00,2,2,'2017-07-18','2017-07-19 00:30:00',NULL);

/*Table structure for table `statisticssalesquota` */

DROP TABLE IF EXISTS `statisticssalesquota`;

CREATE TABLE `statisticssalesquota` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `salesQuota` decimal(20,2) DEFAULT '0.00' COMMENT '销售额',
  `acountId` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户ID',
  `orderId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '订单ID',
  `goodsOrderId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '购买者用户ID',
  `recommendationLevel` tinyint(4) DEFAULT '1' COMMENT '额度 - 推荐级别 1。2。3',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='销售额度记录表（单个人日销售额度）（statisticsSalesQuota）';

/*Data for the table `statisticssalesquota` */

/*Table structure for table `tb_da_area` */

DROP TABLE IF EXISTS `tb_da_area`;

CREATE TABLE `tb_da_area` (
  `codeid` mediumint(12) NOT NULL COMMENT 'id',
  `parentid` int(12) NOT NULL COMMENT '父级ID',
  `cityName` varchar(180) NOT NULL COMMENT '区域名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表信息-省、市、区';

/*Data for the table `tb_da_area` */

insert  into `tb_da_area`(`codeid`,`parentid`,`cityName`) values 
(11,0,'北京'),
(1101,11,'北京市辖'),
(110101,1101,'东城区'),
(110102,1101,'西城区'),
(110103,1101,'崇文区'),
(110104,1101,'宣武区'),
(110105,1101,'朝阳区'),
(110106,1101,'丰台区'),
(110107,1101,'石景山区'),
(110108,1101,'海淀区'),
(110109,1101,'门头沟区'),
(110111,1101,'房山区'),
(110112,1101,'通州区'),
(110113,1101,'顺义区'),
(110114,1101,'昌平区'),
(1102,11,'北京县辖'),
(110224,1102,'大兴县'),
(110226,1102,'平谷县'),
(110227,1102,'怀柔县'),
(110228,1102,'密云县'),
(110229,1102,'延庆县'),
(12,0,'天津'),
(1201,12,'天津市辖'),
(120101,1201,'和平区'),
(120102,1201,'河东区'),
(120103,1201,'河西区'),
(120104,1201,'南开区'),
(120105,1201,'河北区'),
(120106,1201,'红桥区'),
(120107,1201,'塘沽区'),
(120108,1201,'汉沽区'),
(120109,1201,'大港区'),
(120110,1201,'东丽区'),
(120111,1201,'西青区'),
(120112,1201,'津南区'),
(120113,1201,'北辰区'),
(120114,1201,'武清区'),
(1202,12,'天津县辖'),
(120221,1202,'宁河县'),
(120223,1202,'静海县'),
(120224,1202,'宝坻县'),
(120225,1202,'蓟  县'),
(13,0,'河北'),
(1301,13,'石家庄'),
(130101,1301,'市辖区'),
(130102,1301,'长安区'),
(130103,1301,'桥东区'),
(130104,1301,'桥西区'),
(130105,1301,'新华区'),
(130106,1301,'郊  区'),
(130107,1301,'井陉矿区'),
(130121,1301,'井陉县'),
(130123,1301,'正定县'),
(130124,1301,'栾城县'),
(130125,1301,'行唐县'),
(130126,1301,'灵寿县'),
(130127,1301,'高邑县'),
(130128,1301,'深泽县'),
(130129,1301,'赞皇县'),
(130130,1301,'无极县'),
(130131,1301,'平山县'),
(130132,1301,'元氏县'),
(130133,1301,'赵  县'),
(130181,1301,'辛集市'),
(130182,1301,'藁城市'),
(130183,1301,'晋州市'),
(130184,1301,'新乐市'),
(130185,1301,'鹿泉市'),
(1302,13,'唐山'),
(130201,1302,'市辖区'),
(130202,1302,'路南区'),
(130203,1302,'路北区'),
(130204,1302,'古冶区'),
(130205,1302,'开平区'),
(130206,1302,'新  区'),
(130221,1302,'丰润县'),
(130223,1302,'滦  县'),
(130224,1302,'滦南县'),
(130225,1302,'乐亭县'),
(130227,1302,'迁西县'),
(130229,1302,'玉田县'),
(130230,1302,'唐海县'),
(130281,1302,'遵化市'),
(130282,1302,'丰南市'),
(130283,1302,'迁安市'),
(1303,13,'秦皇岛'),
(130301,1303,'市辖区'),
(130302,1303,'海港区'),
(130303,1303,'山海关区'),
(130304,1303,'北戴河区'),
(130321,1303,'青龙满族自治县'),
(130322,1303,'昌黎县'),
(130323,1303,'抚宁县'),
(130324,1303,'卢龙县'),
(1304,13,'邯郸'),
(130401,1304,'市辖区'),
(130402,1304,'邯山区'),
(130403,1304,'丛台区'),
(130404,1304,'复兴区'),
(130406,1304,'峰峰矿区'),
(130421,1304,'邯郸县'),
(130423,1304,'临漳县'),
(130424,1304,'成安县'),
(130425,1304,'大名县'),
(130426,1304,'涉  县'),
(130427,1304,'磁  县'),
(130428,1304,'肥乡县'),
(130429,1304,'永年县'),
(130430,1304,'邱  县'),
(130431,1304,'鸡泽县'),
(130432,1304,'广平县'),
(130433,1304,'馆陶县'),
(130434,1304,'魏  县'),
(130435,1304,'曲周县'),
(130481,1304,'武安市'),
(1305,13,'邢台'),
(130501,1305,'市辖区'),
(130502,1305,'桥东区'),
(130503,1305,'桥西区'),
(130521,1305,'邢台县'),
(130522,1305,'临城县'),
(130523,1305,'内丘县'),
(130524,1305,'柏乡县'),
(130525,1305,'隆尧县'),
(130526,1305,'任  县'),
(130527,1305,'南和县'),
(130528,1305,'宁晋县'),
(130529,1305,'巨鹿县'),
(130530,1305,'新河县'),
(130531,1305,'广宗县'),
(130532,1305,'平乡县'),
(130533,1305,'威  县'),
(130534,1305,'清河县'),
(130535,1305,'临西县'),
(130581,1305,'南宫市'),
(130582,1305,'沙河市'),
(1306,13,'保定'),
(130601,1306,'市辖区'),
(130602,1306,'新市区'),
(130603,1306,'北市区'),
(130604,1306,'南市区'),
(130621,1306,'满城县'),
(130622,1306,'清苑县'),
(130623,1306,'涞水县'),
(130624,1306,'阜平县'),
(130625,1306,'徐水县'),
(130626,1306,'定兴县'),
(130627,1306,'唐  县'),
(130628,1306,'高阳县'),
(130629,1306,'容城县'),
(130630,1306,'涞源县'),
(130631,1306,'望都县'),
(130632,1306,'安新县'),
(130633,1306,'易  县'),
(130634,1306,'曲阳县'),
(130635,1306,'蠡  县'),
(130636,1306,'顺平县'),
(130637,1306,'博野县'),
(130638,1306,'雄  县'),
(130681,1306,'涿州市'),
(130682,1306,'定州市'),
(130683,1306,'安国市'),
(130684,1306,'高碑店市'),
(1307,13,'张家口'),
(130701,1307,'市辖区'),
(130702,1307,'桥东区'),
(130703,1307,'桥西区'),
(130705,1307,'宣化区'),
(130706,1307,'下花园区'),
(130721,1307,'宣化县'),
(130722,1307,'张北县'),
(130723,1307,'康保县'),
(130724,1307,'沽源县'),
(130725,1307,'尚义县'),
(130726,1307,'蔚  县'),
(130727,1307,'阳原县'),
(130728,1307,'怀安县'),
(130729,1307,'万全县'),
(130730,1307,'怀来县'),
(130731,1307,'涿鹿县'),
(130732,1307,'赤城县'),
(130733,1307,'崇礼县'),
(1308,13,'承德'),
(130801,1308,'市辖区'),
(130802,1308,'双桥区'),
(130803,1308,'双滦区'),
(130804,1308,'鹰手营子矿区'),
(130821,1308,'承德县'),
(130822,1308,'兴隆县'),
(130823,1308,'平泉县'),
(130824,1308,'滦平县'),
(130825,1308,'隆化县'),
(130826,1308,'丰宁满族自治县'),
(130827,1308,'宽城满族自治县'),
(130828,1308,'围场满族蒙古族自治县'),
(1309,13,'沧州'),
(130901,1309,'市辖区'),
(130902,1309,'新华区'),
(130903,1309,'运河区'),
(130921,1309,'沧  县'),
(130922,1309,'青  县'),
(130923,1309,'东光县'),
(130924,1309,'海兴县'),
(130925,1309,'盐山县'),
(130926,1309,'肃宁县'),
(130927,1309,'南皮县'),
(130928,1309,'吴桥县'),
(130929,1309,'献  县'),
(130930,1309,'孟村回族自治县'),
(130981,1309,'泊头市'),
(130982,1309,'任丘市'),
(130983,1309,'黄骅市'),
(130984,1309,'河间市'),
(1310,13,'廊坊'),
(131001,1310,'市辖区'),
(131002,1310,'安次区'),
(131003,1310,'廊坊市广阳区'),
(131022,1310,'固安县'),
(131023,1310,'永清县'),
(131024,1310,'香河县'),
(131025,1310,'大城县'),
(131026,1310,'文安县'),
(131028,1310,'大厂回族自治县'),
(131081,1310,'霸州市'),
(131082,1310,'三河市'),
(1311,13,'衡水'),
(131101,1311,'市辖区'),
(131102,1311,'桃城区'),
(131121,1311,'枣强县'),
(131122,1311,'武邑县'),
(131123,1311,'武强县'),
(131124,1311,'饶阳县'),
(131125,1311,'安平县'),
(131126,1311,'故城县'),
(131127,1311,'景  县'),
(131128,1311,'阜城县'),
(131181,1311,'冀州市'),
(131182,1311,'深州市'),
(14,0,'山西'),
(1401,14,'太原'),
(140101,1401,'市辖区'),
(140105,1401,'小店区'),
(140106,1401,'迎泽区'),
(140107,1401,'杏花岭区'),
(140108,1401,'尖草坪区'),
(140109,1401,'万柏林区'),
(140110,1401,'晋源区'),
(140121,1401,'清徐县'),
(140122,1401,'阳曲县'),
(140123,1401,'娄烦县'),
(140181,1401,'古交市'),
(1402,14,'大同'),
(140201,1402,'市辖区'),
(140202,1402,'城  区'),
(140203,1402,'矿  区'),
(140211,1402,'南郊区'),
(140212,1402,'新荣区'),
(140221,1402,'阳高县'),
(140222,1402,'天镇县'),
(140223,1402,'广灵县'),
(140224,1402,'灵丘县'),
(140225,1402,'浑源县'),
(140226,1402,'左云县'),
(140227,1402,'大同县'),
(1403,14,'阳泉'),
(140301,1403,'市辖区'),
(140302,1403,'城  区'),
(140303,1403,'矿  区'),
(140311,1403,'郊  区'),
(140321,1403,'平定县'),
(140322,1403,'盂  县'),
(1404,14,'长治'),
(140401,1404,'市辖区'),
(140402,1404,'城  区'),
(140411,1404,'郊  区'),
(140421,1404,'长治县'),
(140423,1404,'襄垣县'),
(140424,1404,'屯留县'),
(140425,1404,'平顺县'),
(140426,1404,'黎城县'),
(140427,1404,'壶关县'),
(140428,1404,'长子县'),
(140429,1404,'武乡县'),
(140430,1404,'沁  县'),
(140431,1404,'沁源县'),
(140481,1404,'潞城市'),
(1405,14,'晋城'),
(140501,1405,'市辖区'),
(140502,1405,'城  区'),
(140521,1405,'沁水县'),
(140522,1405,'阳城县'),
(140524,1405,'陵川县'),
(140525,1405,'泽州县'),
(140581,1405,'高平市'),
(1406,14,'朔州'),
(140601,1406,'市辖区'),
(140602,1406,'朔城区'),
(140603,1406,'平鲁区'),
(140621,1406,'山阴县'),
(140622,1406,'应  县'),
(140623,1406,'右玉县'),
(140624,1406,'怀仁县'),
(1407,14,'晋中'),
(140701,1407,'市辖区'),
(140702,1407,'榆次区'),
(140721,1407,'榆社县'),
(140722,1407,'左权县'),
(140723,1407,'和顺县'),
(140724,1407,'昔阳县'),
(140725,1407,'寿阳县'),
(140726,1407,'太谷县'),
(140727,1407,'祁  县'),
(140728,1407,'平遥县'),
(140729,1407,'灵石县'),
(140781,1407,'介休市'),
(1408,14,'运城'),
(140801,1408,'市辖区'),
(140802,1408,'盐湖区'),
(140821,1408,'临猗县'),
(140822,1408,'万荣县'),
(140823,1408,'闻喜县'),
(140824,1408,'稷山县'),
(140825,1408,'新绛县'),
(140826,1408,'绛  县'),
(140827,1408,'垣曲县'),
(140828,1408,'夏  县'),
(140829,1408,'平陆县'),
(140830,1408,'芮城县'),
(140881,1408,'永济市'),
(140882,1408,'河津市'),
(1409,14,'忻州'),
(140901,1409,'市辖区'),
(140902,1409,'忻府区'),
(140921,1409,'定襄县'),
(140922,1409,'五台县'),
(140923,1409,'代  县'),
(140924,1409,'繁峙县'),
(140925,1409,'宁武县'),
(140926,1409,'静乐县'),
(140927,1409,'神池县'),
(140928,1409,'五寨县'),
(140929,1409,'岢岚县'),
(140930,1409,'河曲县'),
(140931,1409,'保德县'),
(140932,1409,'偏关县'),
(140981,1409,'原平市'),
(1410,14,'临汾'),
(141001,1410,'市辖区'),
(141002,1410,'尧都区'),
(141021,1410,'曲沃县'),
(141022,1410,'翼城县'),
(141023,1410,'襄汾县'),
(141024,1410,'洪洞县'),
(141025,1410,'古  县'),
(141026,1410,'安泽县'),
(141027,1410,'浮山县'),
(141028,1410,'吉  县'),
(141029,1410,'乡宁县'),
(141030,1410,'大宁县'),
(141031,1410,'隰  县'),
(141032,1410,'永和县'),
(141033,1410,'蒲  县'),
(141034,1410,'汾西县'),
(141081,1410,'侯马市'),
(141082,1410,'霍州市'),
(1423,14,'吕梁地区'),
(142301,1423,'孝义市'),
(142302,1423,'离石市'),
(142303,1423,'汾阳市'),
(142322,1423,'文水县'),
(142323,1423,'交城县'),
(142325,1423,'兴  县'),
(142326,1423,'临  县'),
(142327,1423,'柳林县'),
(142328,1423,'石楼县'),
(142329,1423,'岚  县'),
(142330,1423,'方山县'),
(142332,1423,'中阳县'),
(142333,1423,'交口县'),
(15,0,'内蒙古'),
(1501,15,'呼和浩特'),
(150101,1501,'市辖区'),
(150102,1501,'新城区'),
(150103,1501,'回民区'),
(150104,1501,'玉泉区'),
(150105,1501,'赛罕区'),
(150121,1501,'土默特左旗'),
(150122,1501,'托克托县'),
(150123,1501,'和林格尔县'),
(150124,1501,'清水河县'),
(150125,1501,'武川县'),
(1502,15,'包头'),
(150201,1502,'市辖区'),
(150202,1502,'东河区'),
(150203,1502,'昆都伦区'),
(150204,1502,'青山区'),
(150205,1502,'石拐区'),
(150206,1502,'白云矿区'),
(150207,1502,'九原区'),
(150221,1502,'土默特右旗'),
(150222,1502,'固阳县'),
(150223,1502,'达尔罕茂明安联合旗'),
(1503,15,'乌海'),
(150301,1503,'市辖区'),
(150302,1503,'海勃湾区'),
(150303,1503,'海南区'),
(150304,1503,'乌达区'),
(1504,15,'赤峰'),
(150401,1504,'市辖区'),
(150402,1504,'红山区'),
(150403,1504,'元宝山区'),
(150404,1504,'松山区'),
(150421,1504,'阿鲁科尔沁旗'),
(150422,1504,'巴林左旗'),
(150423,1504,'巴林右旗'),
(150424,1504,'林西县'),
(150425,1504,'克什克腾旗'),
(150426,1504,'翁牛特旗'),
(150428,1504,'喀喇沁旗'),
(150429,1504,'宁城县'),
(150430,1504,'敖汉旗'),
(1505,15,'通辽'),
(150501,1505,'市辖区'),
(150502,1505,'科尔沁区'),
(150521,1505,'科尔沁左翼中旗'),
(150522,1505,'科尔沁左翼后旗'),
(150523,1505,'开鲁县'),
(150524,1505,'库伦旗'),
(150525,1505,'奈曼旗'),
(150526,1505,'扎鲁特旗'),
(150581,1505,'霍林郭勒市'),
(1521,15,'呼伦贝尔盟'),
(152101,1521,'海拉尔市'),
(152102,1521,'满洲里市'),
(152103,1521,'扎兰屯市'),
(152104,1521,'牙克石市'),
(152105,1521,'根河市'),
(152106,1521,'额尔古纳市'),
(152122,1521,'阿荣旗'),
(152123,1521,'莫力达瓦达斡尔族自治'),
(152127,1521,'鄂伦春自治旗'),
(152128,1521,'鄂温克族自治旗'),
(152129,1521,'新巴尔虎右旗'),
(152130,1521,'新巴尔虎左旗'),
(152131,1521,'陈巴尔虎旗'),
(1522,15,'兴安盟'),
(152201,1522,'乌兰浩特市'),
(152202,1522,'阿尔山市'),
(152221,1522,'科尔沁右翼前旗'),
(152222,1522,'科尔沁右翼中旗'),
(152223,1522,'扎赉特旗'),
(152224,1522,'突泉县'),
(1525,15,'锡林郭勒盟'),
(152501,1525,'二连浩特市'),
(152502,1525,'锡林浩特市'),
(152522,1525,'阿巴嘎旗'),
(152523,1525,'苏尼特左旗'),
(152524,1525,'苏尼特右旗'),
(152525,1525,'东乌珠穆沁旗'),
(152526,1525,'西乌珠穆沁旗'),
(152527,1525,'太仆寺旗'),
(152528,1525,'镶黄旗'),
(152529,1525,'正镶白旗'),
(152530,1525,'正蓝旗'),
(152531,1525,'多伦县'),
(1526,15,'乌兰察布盟'),
(152601,1526,'集宁市'),
(152602,1526,'丰镇市'),
(152624,1526,'卓资县'),
(152625,1526,'化德县'),
(152626,1526,'商都县'),
(152627,1526,'兴和县'),
(152629,1526,'凉城县'),
(152630,1526,'察哈尔右翼前旗'),
(152631,1526,'察哈尔右翼中旗'),
(152632,1526,'察哈尔右翼后旗'),
(152634,1526,'四子王旗'),
(1527,15,'伊克昭盟'),
(152701,1527,'东胜市'),
(152722,1527,'达拉特旗'),
(152723,1527,'准格尔旗'),
(152724,1527,'鄂托克前旗'),
(152725,1527,'鄂托克旗'),
(152726,1527,'杭锦旗'),
(152727,1527,'乌审旗'),
(152728,1527,'伊金霍洛旗'),
(1528,15,'巴彦淖尔盟'),
(152801,1528,'临河市'),
(152822,1528,'五原县'),
(152823,1528,'磴口县'),
(152824,1528,'乌拉特前旗'),
(152825,1528,'乌拉特中旗'),
(152826,1528,'乌拉特后旗'),
(152827,1528,'杭锦后旗'),
(1529,15,'阿拉善盟'),
(152921,1529,'阿拉善左旗'),
(152922,1529,'阿拉善右旗'),
(152923,1529,'额济纳旗'),
(21,0,'辽宁'),
(2101,21,'沈阳'),
(210101,2101,'市辖区'),
(210102,2101,'和平区'),
(210103,2101,'沈河区'),
(210104,2101,'大东区'),
(210105,2101,'皇姑区'),
(210106,2101,'铁西区'),
(210111,2101,'苏家屯区'),
(210112,2101,'东陵区'),
(210113,2101,'新城子区'),
(210114,2101,'于洪区'),
(210122,2101,'辽中县'),
(210123,2101,'康平县'),
(210124,2101,'法库县'),
(210181,2101,'新民市'),
(2102,21,'大连'),
(210201,2102,'市辖区'),
(210202,2102,'中山区'),
(210203,2102,'西岗区'),
(210204,2102,'沙河口区'),
(210211,2102,'甘井子区'),
(210212,2102,'旅顺口区'),
(210213,2102,'金州区'),
(210224,2102,'长海县'),
(210281,2102,'瓦房店市'),
(210282,2102,'普兰店市'),
(210283,2102,'庄河市'),
(2103,21,'鞍山'),
(210301,2103,'市辖区'),
(210302,2103,'铁东区'),
(210303,2103,'铁西区'),
(210304,2103,'立山区'),
(210311,2103,'千山区'),
(210321,2103,'台安县'),
(210323,2103,'岫岩满族自治县'),
(210381,2103,'海城市'),
(2104,21,'抚顺'),
(210401,2104,'市辖区'),
(210402,2104,'新抚区'),
(210403,2104,'东洲区'),
(210404,2104,'望花区'),
(210411,2104,'顺城区'),
(210421,2104,'抚顺县'),
(210422,2104,'新宾满族自治县'),
(210423,2104,'清原满族自治县'),
(2105,21,'本溪'),
(210501,2105,'市辖区'),
(210502,2105,'平山区'),
(210503,2105,'溪湖区'),
(210504,2105,'明山区'),
(210505,2105,'南芬区'),
(210521,2105,'本溪满族自治县'),
(210522,2105,'桓仁满族自治县'),
(2106,21,'丹东'),
(210601,2106,'市辖区'),
(210602,2106,'元宝区'),
(210603,2106,'振兴区'),
(210604,2106,'振安区'),
(210624,2106,'宽甸满族自治县'),
(210681,2106,'东港市'),
(210682,2106,'凤城市'),
(2107,21,'锦州'),
(210701,2107,'市辖区'),
(210702,2107,'古塔区'),
(210703,2107,'凌河区'),
(210711,2107,'太和区'),
(210726,2107,'黑山县'),
(210727,2107,'义  县'),
(210781,2107,'凌海市'),
(210782,2107,'北宁市'),
(2108,21,'营口'),
(210801,2108,'市辖区'),
(210802,2108,'站前区'),
(210803,2108,'西市区'),
(210804,2108,'鲅鱼圈区'),
(210811,2108,'老边区'),
(210881,2108,'盖州市'),
(210882,2108,'大石桥市'),
(2109,21,'阜新'),
(210901,2109,'市辖区'),
(210902,2109,'海州区'),
(210903,2109,'新邱区'),
(210904,2109,'太平区'),
(210905,2109,'清河门区'),
(210911,2109,'细河区'),
(210921,2109,'阜新蒙古族自治县'),
(210922,2109,'彰武县'),
(2110,21,'辽阳'),
(211001,2110,'市辖区'),
(211002,2110,'白塔区'),
(211003,2110,'文圣区'),
(211004,2110,'宏伟区'),
(211005,2110,'弓长岭区'),
(211011,2110,'太子河区'),
(211021,2110,'辽阳县'),
(211081,2110,'灯塔市'),
(2111,21,'盘锦'),
(211101,2111,'市辖区'),
(211102,2111,'双台子区'),
(211103,2111,'兴隆台区'),
(211121,2111,'大洼县'),
(211122,2111,'盘山县'),
(2112,21,'铁岭'),
(211201,2112,'市辖区'),
(211202,2112,'银州区'),
(211204,2112,'清河区'),
(211221,2112,'铁岭县'),
(211223,2112,'西丰县'),
(211224,2112,'昌图县'),
(211281,2112,'铁法市'),
(211282,2112,'开原市'),
(2113,21,'朝阳'),
(211301,2113,'市辖区'),
(211302,2113,'双塔区'),
(211303,2113,'龙城区'),
(211321,2113,'朝阳县'),
(211322,2113,'建平县'),
(211324,2113,'喀喇沁左翼蒙古族自治'),
(211381,2113,'北票市'),
(211382,2113,'凌源市'),
(2114,21,'葫芦岛'),
(211401,2114,'市辖区'),
(211402,2114,'连山区'),
(211403,2114,'龙港区'),
(211404,2114,'南票区'),
(211421,2114,'绥中县'),
(211422,2114,'建昌县'),
(211481,2114,'兴城市'),
(22,0,'吉林'),
(2201,22,'长春'),
(220101,2201,'市辖区'),
(220102,2201,'南关区'),
(220103,2201,'宽城区'),
(220104,2201,'朝阳区'),
(220105,2201,'二道区'),
(220106,2201,'绿园区'),
(220112,2201,'双阳区'),
(220122,2201,'农安县'),
(220181,2201,'九台市'),
(220182,2201,'榆树市'),
(220183,2201,'德惠市'),
(2202,22,'吉林'),
(220201,2202,'市辖区'),
(220202,2202,'昌邑区'),
(220203,2202,'龙潭区'),
(220204,2202,'船营区'),
(220211,2202,'丰满区'),
(220221,2202,'永吉县'),
(220281,2202,'蛟河市'),
(220282,2202,'桦甸市'),
(220283,2202,'舒兰市'),
(220284,2202,'磐石市'),
(2203,22,'四平'),
(220301,2203,'市辖区'),
(220302,2203,'铁西区'),
(220303,2203,'铁东区'),
(220322,2203,'梨树县'),
(220323,2203,'伊通满族自治县'),
(220381,2203,'公主岭市'),
(220382,2203,'双辽市'),
(2204,22,'辽源'),
(220401,2204,'市辖区'),
(220402,2204,'龙山区'),
(220403,2204,'西安区'),
(220421,2204,'东丰县'),
(220422,2204,'东辽县'),
(2205,22,'通化'),
(220501,2205,'市辖区'),
(220502,2205,'东昌区'),
(220503,2205,'二道江区'),
(220521,2205,'通化县'),
(220523,2205,'辉南县'),
(220524,2205,'柳河县'),
(220581,2205,'梅河口市'),
(220582,2205,'集安市'),
(2206,22,'白山'),
(220601,2206,'市辖区'),
(220602,2206,'八道江区'),
(220621,2206,'抚松县'),
(220622,2206,'靖宇县'),
(220623,2206,'长白朝鲜族自治县'),
(220625,2206,'江源县'),
(220681,2206,'临江市'),
(2207,22,'松原'),
(220701,2207,'市辖区'),
(220702,2207,'宁江区'),
(220721,2207,'前郭尔罗斯蒙古族自治'),
(220722,2207,'长岭县'),
(220723,2207,'乾安县'),
(220724,2207,'扶余县'),
(2208,22,'白城'),
(220801,2208,'市辖区'),
(220802,2208,'洮北区'),
(220821,2208,'镇赉县'),
(220822,2208,'通榆县'),
(220881,2208,'洮南市'),
(220882,2208,'大安市'),
(2224,22,'延边朝鲜族自治州'),
(222401,2224,'延吉市'),
(222402,2224,'图们市'),
(222403,2224,'敦化市'),
(222404,2224,'珲春市'),
(222405,2224,'龙井市'),
(222406,2224,'和龙市'),
(222424,2224,'汪清县'),
(222426,2224,'安图县'),
(23,0,'黑龙江'),
(2301,23,'哈尔滨'),
(230101,2301,'市辖区'),
(230102,2301,'道里区'),
(230103,2301,'南岗区'),
(230104,2301,'道外区'),
(230105,2301,'太平区'),
(230106,2301,'香坊区'),
(230107,2301,'动力区'),
(230108,2301,'平房区'),
(230121,2301,'呼兰县'),
(230123,2301,'依兰县'),
(230124,2301,'方正县'),
(230125,2301,'宾  县'),
(230126,2301,'巴彦县'),
(230127,2301,'木兰县'),
(230128,2301,'通河县'),
(230129,2301,'延寿县'),
(230181,2301,'阿城市'),
(230182,2301,'双城市'),
(230183,2301,'尚志市'),
(230184,2301,'五常市'),
(2302,23,'齐齐哈尔'),
(230201,2302,'市辖区'),
(230202,2302,'龙沙区'),
(230203,2302,'建华区'),
(230204,2302,'铁锋区'),
(230205,2302,'昂昂溪区'),
(230206,2302,'富拉尔基区'),
(230207,2302,'碾子山区'),
(230208,2302,'梅里斯达斡尔族区'),
(230221,2302,'龙江县'),
(230223,2302,'依安县'),
(230224,2302,'泰来县'),
(230225,2302,'甘南县'),
(230227,2302,'富裕县'),
(230229,2302,'克山县'),
(230230,2302,'克东县'),
(230231,2302,'拜泉县'),
(230281,2302,'讷河市'),
(2303,23,'鸡西'),
(230301,2303,'市辖区'),
(230302,2303,'鸡冠区'),
(230303,2303,'恒山区'),
(230304,2303,'滴道区'),
(230305,2303,'梨树区'),
(230306,2303,'城子河区'),
(230307,2303,'麻山区'),
(230321,2303,'鸡东县'),
(230381,2303,'虎林市'),
(230382,2303,'密山市'),
(2304,23,'鹤岗'),
(230401,2304,'市辖区'),
(230402,2304,'向阳区'),
(230403,2304,'工农区'),
(230404,2304,'南山区'),
(230405,2304,'兴安区'),
(230406,2304,'东山区'),
(230407,2304,'兴山区'),
(230421,2304,'萝北县'),
(230422,2304,'绥滨县'),
(2305,23,'双鸭山'),
(230501,2305,'市辖区'),
(230502,2305,'尖山区'),
(230503,2305,'岭东区'),
(230505,2305,'四方台区'),
(230506,2305,'宝山区'),
(230521,2305,'集贤县'),
(230522,2305,'友谊县'),
(230523,2305,'宝清县'),
(230524,2305,'饶河县'),
(2306,23,'大庆'),
(230601,2306,'市辖区'),
(230602,2306,'萨尔图区'),
(230603,2306,'龙凤区'),
(230604,2306,'让胡路区'),
(230605,2306,'红岗区'),
(230606,2306,'大同区'),
(230621,2306,'肇州县'),
(230622,2306,'肇源县'),
(230623,2306,'林甸县'),
(230624,2306,'杜尔伯特蒙古族自治县'),
(2307,23,'伊春'),
(230701,2307,'市辖区'),
(230702,2307,'伊春区'),
(230703,2307,'南岔区'),
(230704,2307,'友好区'),
(230705,2307,'西林区'),
(230706,2307,'翠峦区'),
(230707,2307,'新青区'),
(230708,2307,'美溪区'),
(230709,2307,'金山屯区'),
(230710,2307,'五营区'),
(230711,2307,'乌马河区'),
(230712,2307,'汤旺河区'),
(230713,2307,'带岭区'),
(230714,2307,'乌伊岭区'),
(230715,2307,'红星区'),
(230716,2307,'上甘岭区'),
(230722,2307,'嘉荫县'),
(230781,2307,'铁力市'),
(2308,23,'佳木斯'),
(230801,2308,'市辖区'),
(230802,2308,'永红区'),
(230803,2308,'向阳区'),
(230804,2308,'前进区'),
(230805,2308,'东风区'),
(230811,2308,'郊  区'),
(230822,2308,'桦南县'),
(230826,2308,'桦川县'),
(230828,2308,'汤原县'),
(230833,2308,'抚远县'),
(230881,2308,'同江市'),
(230882,2308,'富锦市'),
(2309,23,'七台河'),
(230901,2309,'市辖区'),
(230902,2309,'新兴区'),
(230903,2309,'桃山区'),
(230904,2309,'茄子河区'),
(230921,2309,'勃利县'),
(2310,23,'牡丹江'),
(231001,2310,'市辖区'),
(231002,2310,'东安区'),
(231003,2310,'阳明区'),
(231004,2310,'爱民区'),
(231005,2310,'西安区'),
(231024,2310,'东宁县'),
(231025,2310,'林口县'),
(231081,2310,'绥芬河市'),
(231083,2310,'海林市'),
(231084,2310,'宁安市'),
(231085,2310,'穆棱市'),
(2311,23,'黑河'),
(231101,2311,'市辖区'),
(231102,2311,'爱辉区'),
(231121,2311,'嫩江县'),
(231123,2311,'逊克县'),
(231124,2311,'孙吴县'),
(231181,2311,'北安市'),
(231182,2311,'五大连池市'),
(2312,23,'绥化'),
(231201,2312,'市辖区'),
(231202,2312,'北林区'),
(231221,2312,'望奎县'),
(231222,2312,'兰西县'),
(231223,2312,'青冈县'),
(231224,2312,'庆安县'),
(231225,2312,'明水县'),
(231226,2312,'绥棱县'),
(231281,2312,'安达市'),
(231282,2312,'肇东市'),
(231283,2312,'海伦市'),
(2327,23,'大兴安岭地区'),
(232721,2327,'呼玛县'),
(232722,2327,'塔河县'),
(232723,2327,'漠河县'),
(31,0,'上海'),
(3101,31,'上海市辖'),
(310101,3101,'黄浦区'),
(310103,3101,'卢湾区'),
(310104,3101,'徐汇区'),
(310105,3101,'长宁区'),
(310106,3101,'静安区'),
(310107,3101,'普陀区'),
(310108,3101,'闸北区'),
(310109,3101,'虹口区'),
(310110,3101,'杨浦区'),
(310112,3101,'闵行区'),
(310113,3101,'宝山区'),
(310114,3101,'嘉定区'),
(310115,3101,'浦东新区'),
(310116,3101,'金山区'),
(310117,3101,'松江区'),
(310118,3101,'青浦区'),
(3102,31,'上海县辖'),
(310225,3102,'南汇县'),
(310226,3102,'奉贤县'),
(310230,3102,'崇明县'),
(32,0,'江苏'),
(3201,32,'南京'),
(320101,3201,'市辖区'),
(320102,3201,'玄武区'),
(320103,3201,'白下区'),
(320104,3201,'秦淮区'),
(320105,3201,'建邺区'),
(320106,3201,'鼓楼区'),
(320107,3201,'下关区'),
(320111,3201,'浦口区'),
(320112,3201,'大厂区'),
(320113,3201,'栖霞区'),
(320114,3201,'雨花台区'),
(320115,3201,'江宁区'),
(320122,3201,'江浦县'),
(320123,3201,'六合县'),
(320124,3201,'溧水县'),
(320125,3201,'高淳县'),
(3202,32,'无锡'),
(320201,3202,'市辖区'),
(320202,3202,'崇安区'),
(320203,3202,'南长区'),
(320204,3202,'北塘区'),
(320205,3202,'锡山区'),
(320206,3202,'惠山区'),
(320211,3202,'滨湖区'),
(320281,3202,'江阴市'),
(320282,3202,'宜兴市'),
(3203,32,'徐州'),
(320301,3203,'市辖区'),
(320302,3203,'鼓楼区'),
(320303,3203,'云龙区'),
(320304,3203,'九里区'),
(320305,3203,'贾汪区'),
(320311,3203,'泉山区'),
(320321,3203,'丰  县'),
(320322,3203,'沛  县'),
(320323,3203,'铜山县'),
(320324,3203,'睢宁县'),
(320381,3203,'新沂市'),
(320382,3203,'邳州市'),
(3204,32,'常州'),
(320401,3204,'市辖区'),
(320402,3204,'天宁区'),
(320404,3204,'钟楼区'),
(320405,3204,'戚墅堰区'),
(320411,3204,'郊  区'),
(320481,3204,'溧阳市'),
(320482,3204,'金坛市'),
(320483,3204,'武进市'),
(3205,32,'苏州'),
(320501,3205,'市辖区'),
(320502,3205,'沧浪区'),
(320503,3205,'平江区'),
(320504,3205,'金阊区'),
(320505,3205,'虎丘区'),
(320506,3205,'吴中区'),
(320507,3205,'相城区'),
(320581,3205,'常熟市'),
(320582,3205,'张家港市'),
(320583,3205,'昆山市'),
(320584,3205,'吴江市'),
(320585,3205,'太仓市'),
(3206,32,'南通'),
(320601,3206,'市辖区'),
(320602,3206,'崇川区'),
(320611,3206,'港闸区'),
(320621,3206,'海安县'),
(320623,3206,'如东县'),
(320681,3206,'启东市'),
(320682,3206,'如皋市'),
(320683,3206,'通州市'),
(320684,3206,'海门市'),
(3207,32,'连云港'),
(320701,3207,'市辖区'),
(320703,3207,'连云区'),
(320704,3207,'云台区'),
(320705,3207,'新浦区'),
(320706,3207,'海州区'),
(320721,3207,'赣榆县'),
(320722,3207,'东海县'),
(320723,3207,'灌云县'),
(320724,3207,'灌南县'),
(3208,32,'淮安'),
(320801,3208,'市辖区'),
(320802,3208,'清河区'),
(320803,3208,'楚州区'),
(320804,3208,'淮阴区'),
(320811,3208,'清浦区'),
(320826,3208,'涟水县'),
(320829,3208,'洪泽县'),
(320830,3208,'盱眙县'),
(320831,3208,'金湖县'),
(3209,32,'盐城'),
(320901,3209,'市辖区'),
(320902,3209,'城  区'),
(320921,3209,'响水县'),
(320922,3209,'滨海县'),
(320923,3209,'阜宁县'),
(320924,3209,'射阳县'),
(320925,3209,'建湖县'),
(320928,3209,'盐都县'),
(320981,3209,'东台市'),
(320982,3209,'大丰市'),
(3210,32,'扬州'),
(321001,3210,'市辖区'),
(321002,3210,'广陵区'),
(321003,3210,'邗江区'),
(321011,3210,'郊  区'),
(321023,3210,'宝应县'),
(321081,3210,'仪征市'),
(321084,3210,'高邮市'),
(321088,3210,'江都市'),
(3211,32,'镇江'),
(321101,3211,'市辖区'),
(321102,3211,'京口区'),
(321111,3211,'润州区'),
(321121,3211,'丹徒县'),
(321181,3211,'丹阳市'),
(321182,3211,'扬中市'),
(321183,3211,'句容市'),
(3212,32,'泰州'),
(321201,3212,'市辖区'),
(321202,3212,'海陵区'),
(321203,3212,'高港区'),
(321281,3212,'兴化市'),
(321282,3212,'靖江市'),
(321283,3212,'泰兴市'),
(321284,3212,'姜堰市'),
(3213,32,'宿迁'),
(321301,3213,'市辖区'),
(321302,3213,'宿城区'),
(321321,3213,'宿豫县'),
(321322,3213,'沭阳县'),
(321323,3213,'泗阳县'),
(321324,3213,'泗洪县'),
(33,0,'浙江'),
(3301,33,'杭州'),
(330101,3301,'市辖区'),
(330102,3301,'上城区'),
(330103,3301,'下城区'),
(330104,3301,'江干区'),
(330105,3301,'拱墅区'),
(330106,3301,'西湖区'),
(330108,3301,'滨江区'),
(330122,3301,'桐庐县'),
(330127,3301,'淳安县'),
(330181,3301,'萧山市'),
(330182,3301,'建德市'),
(330183,3301,'富阳市'),
(330184,3301,'余杭市'),
(330185,3301,'临安市'),
(3302,33,'宁波'),
(330201,3302,'市辖区'),
(330203,3302,'海曙区'),
(330204,3302,'江东区'),
(330205,3302,'江北区'),
(330206,3302,'北仑区'),
(330211,3302,'镇海区'),
(330225,3302,'象山县'),
(330226,3302,'宁海县'),
(330227,3302,'鄞  县'),
(330281,3302,'余姚市'),
(330282,3302,'慈溪市'),
(330283,3302,'奉化市'),
(3303,33,'温州'),
(330301,3303,'市辖区'),
(330302,3303,'鹿城区'),
(330303,3303,'龙湾区'),
(330304,3303,'瓯海区'),
(330322,3303,'洞头县'),
(330324,3303,'永嘉县'),
(330326,3303,'平阳县'),
(330327,3303,'苍南县'),
(330328,3303,'文成县'),
(330329,3303,'泰顺县'),
(330381,3303,'瑞安市'),
(330382,3303,'乐清市'),
(3304,33,'嘉兴'),
(330401,3304,'市辖区'),
(330402,3304,'秀城区'),
(330411,3304,'秀洲区'),
(330421,3304,'嘉善县'),
(330424,3304,'海盐县'),
(330481,3304,'海宁市'),
(330482,3304,'平湖市'),
(330483,3304,'桐乡市'),
(3305,33,'湖州'),
(330501,3305,'市辖区'),
(330521,3305,'德清县'),
(330522,3305,'长兴县'),
(330523,3305,'安吉县'),
(3306,33,'绍兴'),
(330601,3306,'市辖区'),
(330602,3306,'越城区'),
(330621,3306,'绍兴县'),
(330624,3306,'新昌县'),
(330681,3306,'诸暨市'),
(330682,3306,'上虞市'),
(330683,3306,'嵊州市'),
(3307,33,'金华'),
(330701,3307,'市辖区'),
(330702,3307,'婺城区'),
(330703,3307,'金东区'),
(330723,3307,'武义县'),
(330726,3307,'浦江县'),
(330727,3307,'磐安县'),
(330781,3307,'兰溪市'),
(330782,3307,'义乌市'),
(330783,3307,'东阳市'),
(330784,3307,'永康市'),
(3308,33,'衢州'),
(330801,3308,'市辖区'),
(330802,3308,'柯城区'),
(330821,3308,'衢  县'),
(330822,3308,'常山县'),
(330824,3308,'开化县'),
(330825,3308,'龙游县'),
(330881,3308,'江山市'),
(3309,33,'舟山'),
(330901,3309,'市辖区'),
(330902,3309,'定海区'),
(330903,3309,'普陀区'),
(330921,3309,'岱山县'),
(330922,3309,'嵊泗县'),
(3310,33,'台州'),
(331001,3310,'市辖区'),
(331002,3310,'椒江区'),
(331003,3310,'黄岩区'),
(331004,3310,'路桥区'),
(331021,3310,'玉环县'),
(331022,3310,'三门县'),
(331023,3310,'天台县'),
(331024,3310,'仙居县'),
(331081,3310,'温岭市'),
(331082,3310,'临海市'),
(3311,33,'丽水'),
(331101,3311,'市辖区'),
(331102,3311,'莲都区'),
(331121,3311,'青田县'),
(331122,3311,'缙云县'),
(331123,3311,'遂昌县'),
(331124,3311,'松阳县'),
(331125,3311,'云和县'),
(331126,3311,'庆元县'),
(331127,3311,'景宁畲族自治县'),
(331181,3311,'龙泉市'),
(34,0,'安徽'),
(3401,34,'合肥'),
(340101,3401,'市辖区'),
(340102,3401,'东市区'),
(340103,3401,'中市区'),
(340104,3401,'西市区'),
(340111,3401,'郊  区'),
(340121,3401,'长丰县'),
(340122,3401,'肥东县'),
(340123,3401,'肥西县'),
(3402,34,'芜湖'),
(340201,3402,'市辖区'),
(340202,3402,'镜湖区'),
(340203,3402,'马塘区'),
(340204,3402,'新芜区'),
(340207,3402,'鸠江区'),
(340221,3402,'芜湖县'),
(340222,3402,'繁昌县'),
(340223,3402,'南陵县'),
(3403,34,'蚌埠'),
(340301,3403,'市辖区'),
(340302,3403,'东市区'),
(340303,3403,'中市区'),
(340304,3403,'西市区'),
(340311,3403,'郊  区'),
(340321,3403,'怀远县'),
(340322,3403,'五河县'),
(340323,3403,'固镇县'),
(3404,34,'淮南'),
(340401,3404,'市辖区'),
(340402,3404,'大通区'),
(340403,3404,'田家庵区'),
(340404,3404,'谢家集区'),
(340405,3404,'八公山区'),
(340406,3404,'潘集区'),
(340421,3404,'凤台县'),
(3405,34,'马鞍山'),
(340501,3405,'市辖区'),
(340502,3405,'金家庄区'),
(340503,3405,'花山区'),
(340504,3405,'雨山区'),
(340505,3405,'向山区'),
(340521,3405,'当涂县'),
(3406,34,'淮北'),
(340601,3406,'市辖区'),
(340602,3406,'杜集区'),
(340603,3406,'相山区'),
(340604,3406,'烈山区'),
(340621,3406,'濉溪县'),
(3407,34,'铜陵'),
(340701,3407,'市辖区'),
(340702,3407,'铜官山区'),
(340703,3407,'狮子山区'),
(340711,3407,'郊  区'),
(340721,3407,'铜陵县'),
(3408,34,'安庆'),
(340801,3408,'市辖区'),
(340802,3408,'迎江区'),
(340803,3408,'大观区'),
(340811,3408,'郊  区'),
(340822,3408,'怀宁县'),
(340823,3408,'枞阳县'),
(340824,3408,'潜山县'),
(340825,3408,'太湖县'),
(340826,3408,'宿松县'),
(340827,3408,'望江县'),
(340828,3408,'岳西县'),
(340881,3408,'桐城市'),
(3410,34,'黄山'),
(341001,3410,'市辖区'),
(341002,3410,'屯溪区'),
(341003,3410,'黄山区'),
(341004,3410,'徽州区'),
(341021,3410,'歙  县'),
(341022,3410,'休宁县'),
(341023,3410,'黟  县'),
(341024,3410,'祁门县'),
(3411,34,'滁州'),
(341101,3411,'市辖区'),
(341102,3411,'琅琊区'),
(341103,3411,'南谯区'),
(341122,3411,'来安县'),
(341124,3411,'全椒县'),
(341125,3411,'定远县'),
(341126,3411,'凤阳县'),
(341181,3411,'天长市'),
(341182,3411,'明光市'),
(3412,34,'阜阳'),
(341201,3412,'市辖区'),
(341202,3412,'颍州区'),
(341203,3412,'颍东区'),
(341204,3412,'颍泉区'),
(341221,3412,'临泉县'),
(341222,3412,'太和县'),
(341225,3412,'阜南县'),
(341226,3412,'颍上县'),
(341282,3412,'界首市'),
(3413,34,'宿州'),
(341301,3413,'市辖区'),
(341302,3413,'墉桥区'),
(341321,3413,'砀山县'),
(341322,3413,'萧  县'),
(341323,3413,'灵璧县'),
(341324,3413,'泗  县'),
(3414,34,'巢湖'),
(341401,3414,'市辖区'),
(341402,3414,'居巢区'),
(341421,3414,'庐江县'),
(341422,3414,'无为县'),
(341423,3414,'含山县'),
(341424,3414,'和  县'),
(3415,34,'六安'),
(341501,3415,'市辖区'),
(341502,3415,'金安区'),
(341503,3415,'裕安区'),
(341521,3415,'寿  县'),
(341522,3415,'霍邱县'),
(341523,3415,'舒城县'),
(341524,3415,'金寨县'),
(341525,3415,'霍山县'),
(3416,34,'亳州'),
(341601,3416,'市辖区'),
(341602,3416,'谯城区'),
(341621,3416,'涡阳县'),
(341622,3416,'蒙城县'),
(341623,3416,'利辛县'),
(3417,34,'池州'),
(341701,3417,'市辖区'),
(341702,3417,'贵池区'),
(341721,3417,'东至县'),
(341722,3417,'石台县'),
(341723,3417,'青阳县'),
(3418,34,'宣城'),
(341801,3418,'市辖区'),
(341802,3418,'宣州区'),
(341821,3418,'郎溪县'),
(341822,3418,'广德县'),
(341823,3418,'泾  县'),
(341824,3418,'绩溪县'),
(341825,3418,'旌德县'),
(341881,3418,'宁国市'),
(35,0,'福建'),
(3501,35,'福州'),
(350101,3501,'市辖区'),
(350102,3501,'鼓楼区'),
(350103,3501,'台江区'),
(350104,3501,'仓山区'),
(350105,3501,'马尾区'),
(350111,3501,'晋安区'),
(350121,3501,'闽侯县'),
(350122,3501,'连江县'),
(350123,3501,'罗源县'),
(350124,3501,'闽清县'),
(350125,3501,'永泰县'),
(350128,3501,'平潭县'),
(350181,3501,'福清市'),
(350182,3501,'长乐市'),
(3502,35,'厦门'),
(350201,3502,'市辖区'),
(350202,3502,'鼓浪屿区'),
(350203,3502,'思明区'),
(350204,3502,'开元区'),
(350205,3502,'杏林区'),
(350206,3502,'湖里区'),
(350211,3502,'集美区'),
(350212,3502,'同安区'),
(3503,35,'莆田'),
(350301,3503,'市辖区'),
(350302,3503,'城厢区'),
(350303,3503,'涵江区'),
(350321,3503,'莆田县'),
(350322,3503,'仙游县'),
(3504,35,'三明'),
(350401,3504,'市辖区'),
(350402,3504,'梅列区'),
(350403,3504,'三元区'),
(350421,3504,'明溪县'),
(350423,3504,'清流县'),
(350424,3504,'宁化县'),
(350425,3504,'大田县'),
(350426,3504,'尤溪县'),
(350427,3504,'沙  县'),
(350428,3504,'将乐县'),
(350429,3504,'泰宁县'),
(350430,3504,'建宁县'),
(350481,3504,'永安市'),
(3505,35,'泉州'),
(350501,3505,'市辖区'),
(350502,3505,'鲤城区'),
(350503,3505,'丰泽区'),
(350504,3505,'洛江区'),
(350505,3505,'泉港区'),
(350521,3505,'惠安县'),
(350524,3505,'安溪县'),
(350525,3505,'永春县'),
(350526,3505,'德化县'),
(350527,3505,'金门县'),
(350581,3505,'石狮市'),
(350582,3505,'晋江市'),
(350583,3505,'南安市'),
(3506,35,'漳州'),
(350601,3506,'市辖区'),
(350602,3506,'芗城区'),
(350603,3506,'龙文区'),
(350622,3506,'云霄县'),
(350623,3506,'漳浦县'),
(350624,3506,'诏安县'),
(350625,3506,'长泰县'),
(350626,3506,'东山县'),
(350627,3506,'南靖县'),
(350628,3506,'平和县'),
(350629,3506,'华安县'),
(350681,3506,'龙海市'),
(3507,35,'南平'),
(350701,3507,'市辖区'),
(350702,3507,'延平区'),
(350721,3507,'顺昌县'),
(350722,3507,'浦城县'),
(350723,3507,'光泽县'),
(350724,3507,'松溪县'),
(350725,3507,'政和县'),
(350781,3507,'邵武市'),
(350782,3507,'武夷山市'),
(350783,3507,'建瓯市'),
(350784,3507,'建阳市'),
(3508,35,'龙岩'),
(350801,3508,'市辖区'),
(350802,3508,'新罗区'),
(350821,3508,'长汀县'),
(350822,3508,'永定县'),
(350823,3508,'上杭县'),
(350824,3508,'武平县'),
(350825,3508,'连城县'),
(350881,3508,'漳平市'),
(3509,35,'宁德'),
(350901,3509,'市辖区'),
(350902,3509,'蕉城区'),
(350921,3509,'霞浦县'),
(350922,3509,'古田县'),
(350923,3509,'屏南县'),
(350924,3509,'寿宁县'),
(350925,3509,'周宁县'),
(350926,3509,'柘荣县'),
(350981,3509,'福安市'),
(350982,3509,'福鼎市'),
(36,0,'江西'),
(3601,36,'南昌'),
(360101,3601,'市辖区'),
(360102,3601,'东湖区'),
(360103,3601,'西湖区'),
(360104,3601,'青云谱区'),
(360105,3601,'湾里区'),
(360111,3601,'郊  区'),
(360121,3601,'南昌县'),
(360122,3601,'新建县'),
(360123,3601,'安义县'),
(360124,3601,'进贤县'),
(3602,36,'景德镇'),
(360201,3602,'市辖区'),
(360202,3602,'昌江区'),
(360203,3602,'珠山区'),
(360222,3602,'浮梁县'),
(360281,3602,'乐平市'),
(3603,36,'萍乡'),
(360301,3603,'市辖区'),
(360302,3603,'安源区'),
(360313,3603,'湘东区'),
(360321,3603,'莲花县'),
(360322,3603,'上栗县'),
(360323,3603,'芦溪县'),
(3604,36,'九江'),
(360401,3604,'市辖区'),
(360402,3604,'庐山区'),
(360403,3604,'浔阳区'),
(360421,3604,'九江县'),
(360423,3604,'武宁县'),
(360424,3604,'修水县'),
(360425,3604,'永修县'),
(360426,3604,'德安县'),
(360427,3604,'星子县'),
(360428,3604,'都昌县'),
(360429,3604,'湖口县'),
(360430,3604,'彭泽县'),
(360481,3604,'瑞昌市'),
(3605,36,'新余'),
(360501,3605,'市辖区'),
(360502,3605,'渝水区'),
(360521,3605,'分宜县'),
(3606,36,'鹰潭'),
(360601,3606,'市辖区'),
(360602,3606,'月湖区'),
(360622,3606,'余江县'),
(360681,3606,'贵溪市'),
(3607,36,'赣州'),
(360701,3607,'市辖区'),
(360702,3607,'章贡区'),
(360721,3607,'赣  县'),
(360722,3607,'信丰县'),
(360723,3607,'大余县'),
(360724,3607,'上犹县'),
(360725,3607,'崇义县'),
(360726,3607,'安远县'),
(360727,3607,'龙南县'),
(360728,3607,'定南县'),
(360729,3607,'全南县'),
(360730,3607,'宁都县'),
(360731,3607,'于都县'),
(360732,3607,'兴国县'),
(360733,3607,'会昌县'),
(360734,3607,'寻乌县'),
(360735,3607,'石城县'),
(360781,3607,'瑞金市'),
(360782,3607,'南康市'),
(3608,36,'吉安'),
(360801,3608,'市辖区'),
(360802,3608,'吉州区'),
(360803,3608,'青原区'),
(360821,3608,'吉安县'),
(360822,3608,'吉水县'),
(360823,3608,'峡江县'),
(360824,3608,'新干县'),
(360825,3608,'永丰县'),
(360826,3608,'泰和县'),
(360827,3608,'遂川县'),
(360828,3608,'万安县'),
(360829,3608,'安福县'),
(360830,3608,'永新县'),
(360881,3608,'井冈山市'),
(3609,36,'宜春'),
(360901,3609,'市辖区'),
(360902,3609,'袁州区'),
(360921,3609,'奉新县'),
(360922,3609,'万载县'),
(360923,3609,'上高县'),
(360924,3609,'宜丰县'),
(360925,3609,'靖安县'),
(360926,3609,'铜鼓县'),
(360981,3609,'丰城市'),
(360982,3609,'樟树市'),
(360983,3609,'高安市'),
(3610,36,'抚州'),
(361001,3610,'市辖区'),
(361002,3610,'临川区'),
(361021,3610,'南城县'),
(361022,3610,'黎川县'),
(361023,3610,'南丰县'),
(361024,3610,'崇仁县'),
(361025,3610,'乐安县'),
(361026,3610,'宜黄县'),
(361027,3610,'金溪县'),
(361028,3610,'资溪县'),
(361029,3610,'东乡县'),
(361030,3610,'广昌县'),
(3611,36,'上饶'),
(361101,3611,'市辖区'),
(361102,3611,'信州区'),
(361121,3611,'上饶县'),
(361122,3611,'广丰县'),
(361123,3611,'玉山县'),
(361124,3611,'铅山县'),
(361125,3611,'横峰县'),
(361126,3611,'弋阳县'),
(361127,3611,'余干县'),
(361128,3611,'波阳县'),
(361129,3611,'万年县'),
(361130,3611,'婺源县'),
(361181,3611,'德兴市'),
(37,0,'山东'),
(3701,37,'济南'),
(370101,3701,'市辖区'),
(370102,3701,'历下区'),
(370103,3701,'市中区'),
(370104,3701,'槐荫区'),
(370105,3701,'天桥区'),
(370112,3701,'历城区'),
(370123,3701,'长清县'),
(370124,3701,'平阴县'),
(370125,3701,'济阳县'),
(370126,3701,'商河县'),
(370181,3701,'章丘市'),
(3702,37,'青岛'),
(370201,3702,'市辖区'),
(370202,3702,'市南区'),
(370203,3702,'市北区'),
(370205,3702,'四方区'),
(370211,3702,'黄岛区'),
(370212,3702,'崂山区'),
(370213,3702,'李沧区'),
(370214,3702,'城阳区'),
(370281,3702,'胶州市'),
(370282,3702,'即墨市'),
(370283,3702,'平度市'),
(370284,3702,'胶南市'),
(370285,3702,'莱西市'),
(3703,37,'淄博'),
(370301,3703,'市辖区'),
(370302,3703,'淄川区'),
(370303,3703,'张店区'),
(370304,3703,'博山区'),
(370305,3703,'临淄区'),
(370306,3703,'周村区'),
(370321,3703,'桓台县'),
(370322,3703,'高青县'),
(370323,3703,'沂源县'),
(3704,37,'枣庄'),
(370401,3704,'市辖区'),
(370402,3704,'市中区'),
(370403,3704,'薛城区'),
(370404,3704,'峄城区'),
(370405,3704,'台儿庄区'),
(370406,3704,'山亭区'),
(370481,3704,'滕州市'),
(3705,37,'东营'),
(370501,3705,'市辖区'),
(370502,3705,'东营区'),
(370503,3705,'河口区'),
(370521,3705,'垦利县'),
(370522,3705,'利津县'),
(370523,3705,'广饶县'),
(3706,37,'烟台'),
(370601,3706,'市辖区'),
(370602,3706,'芝罘区'),
(370611,3706,'福山区'),
(370612,3706,'牟平区'),
(370613,3706,'莱山区'),
(370634,3706,'长岛县'),
(370681,3706,'龙口市'),
(370682,3706,'莱阳市'),
(370683,3706,'莱州市'),
(370684,3706,'蓬莱市'),
(370685,3706,'招远市'),
(370686,3706,'栖霞市'),
(370687,3706,'海阳市'),
(3707,37,'潍坊'),
(370701,3707,'市辖区'),
(370702,3707,'潍城区'),
(370703,3707,'寒亭区'),
(370704,3707,'坊子区'),
(370705,3707,'奎文区'),
(370724,3707,'临朐县'),
(370725,3707,'昌乐县'),
(370781,3707,'青州市'),
(370782,3707,'诸城市'),
(370783,3707,'寿光市'),
(370784,3707,'安丘市'),
(370785,3707,'高密市'),
(370786,3707,'昌邑市'),
(3708,37,'济宁'),
(370801,3708,'市辖区'),
(370802,3708,'市中区'),
(370811,3708,'任城区'),
(370826,3708,'微山县'),
(370827,3708,'鱼台县'),
(370828,3708,'金乡县'),
(370829,3708,'嘉祥县'),
(370830,3708,'汶上县'),
(370831,3708,'泗水县'),
(370832,3708,'梁山县'),
(370881,3708,'曲阜市'),
(370882,3708,'兖州市'),
(370883,3708,'邹城市'),
(3709,37,'泰安'),
(370901,3709,'市辖区'),
(370902,3709,'泰山区'),
(370903,3709,'岱岳区'),
(370921,3709,'宁阳县'),
(370923,3709,'东平县'),
(370982,3709,'新泰市'),
(370983,3709,'肥城市'),
(3710,37,'威海'),
(371001,3710,'市辖区'),
(371002,3710,'环翠区'),
(371081,3710,'文登市'),
(371082,3710,'荣成市'),
(371083,3710,'乳山市'),
(3711,37,'日照'),
(371101,3711,'市辖区'),
(371102,3711,'东港区'),
(371121,3711,'五莲县'),
(371122,3711,'莒  县'),
(3712,37,'莱芜'),
(371201,3712,'市辖区'),
(371202,3712,'莱城区'),
(371203,3712,'钢城区'),
(3713,37,'临沂'),
(371301,3713,'市辖区'),
(371302,3713,'兰山区'),
(371311,3713,'罗庄区'),
(371312,3713,'河东区'),
(371321,3713,'沂南县'),
(371322,3713,'郯城县'),
(371323,3713,'沂水县'),
(371324,3713,'苍山县'),
(371325,3713,'费  县'),
(371326,3713,'平邑县'),
(371327,3713,'莒南县'),
(371328,3713,'蒙阴县'),
(371329,3713,'临沭县'),
(3714,37,'德州'),
(371401,3714,'市辖区'),
(371402,3714,'德城区'),
(371421,3714,'陵  县'),
(371422,3714,'宁津县'),
(371423,3714,'庆云县'),
(371424,3714,'临邑县'),
(371425,3714,'齐河县'),
(371426,3714,'平原县'),
(371427,3714,'夏津县'),
(371428,3714,'武城县'),
(371481,3714,'乐陵市'),
(371482,3714,'禹城市'),
(3715,37,'聊城'),
(371501,3715,'市辖区'),
(371502,3715,'东昌府区'),
(371521,3715,'阳谷县'),
(371522,3715,'莘  县'),
(371523,3715,'茌平县'),
(371524,3715,'东阿县'),
(371525,3715,'冠  县'),
(371526,3715,'高唐县'),
(371581,3715,'临清市'),
(3716,37,'滨州'),
(371601,3716,'市辖区'),
(371603,3716,'滨城区'),
(371621,3716,'惠民县'),
(371622,3716,'阳信县'),
(371623,3716,'无棣县'),
(371624,3716,'沾化县'),
(371625,3716,'博兴县'),
(371626,3716,'邹平县'),
(3717,37,'菏泽'),
(371701,3717,'市辖区'),
(371702,3717,'牡丹区'),
(371721,3717,'曹  县'),
(371722,3717,'单  县'),
(371723,3717,'成武县'),
(371724,3717,'巨野县'),
(371725,3717,'郓城县'),
(371726,3717,'鄄城县'),
(371727,3717,'定陶县'),
(371728,3717,'东明县'),
(41,0,'河南'),
(4101,41,'郑州'),
(410101,4101,'市辖区'),
(410102,4101,'中原区'),
(410103,4101,'二七区'),
(410104,4101,'管城回族区'),
(410105,4101,'金水区'),
(410106,4101,'上街区'),
(410108,4101,'邙山区'),
(410122,4101,'中牟县'),
(410181,4101,'巩义市'),
(410182,4101,'荥阳市'),
(410183,4101,'新密市'),
(410184,4101,'新郑市'),
(410185,4101,'登封市'),
(4102,41,'开封'),
(410201,4102,'市辖区'),
(410202,4102,'龙亭区'),
(410203,4102,'顺河回族区'),
(410204,4102,'鼓楼区'),
(410205,4102,'南关区'),
(410211,4102,'郊  区'),
(410221,4102,'杞  县'),
(410222,4102,'通许县'),
(410223,4102,'尉氏县'),
(410224,4102,'开封县'),
(410225,4102,'兰考县'),
(4103,41,'洛阳'),
(410301,4103,'市辖区'),
(410302,4103,'老城区'),
(410303,4103,'西工区'),
(410304,4103,'廛河回族区'),
(410305,4103,'涧西区'),
(410306,4103,'吉利区'),
(410307,4103,'洛龙区'),
(410322,4103,'孟津县'),
(410323,4103,'新安县'),
(410324,4103,'栾川县'),
(410325,4103,'嵩  县'),
(410326,4103,'汝阳县'),
(410327,4103,'宜阳县'),
(410328,4103,'洛宁县'),
(410329,4103,'伊川县'),
(410381,4103,'偃师市'),
(4104,41,'平顶山'),
(410401,4104,'市辖区'),
(410402,4104,'新华区'),
(410403,4104,'卫东区'),
(410404,4104,'石龙区'),
(410411,4104,'湛河区'),
(410421,4104,'宝丰县'),
(410422,4104,'叶  县'),
(410423,4104,'鲁山县'),
(410425,4104,'郏  县'),
(410481,4104,'舞钢市'),
(410482,4104,'汝州市'),
(4105,41,'安阳'),
(410501,4105,'市辖区'),
(410502,4105,'文峰区'),
(410503,4105,'北关区'),
(410504,4105,'铁西区'),
(410511,4105,'郊  区'),
(410522,4105,'安阳县'),
(410523,4105,'汤阴县'),
(410526,4105,'滑  县'),
(410527,4105,'内黄县'),
(410581,4105,'林州市'),
(4106,41,'鹤壁'),
(410601,4106,'市辖区'),
(410602,4106,'鹤山区'),
(410603,4106,'山城区'),
(410611,4106,'郊  区'),
(410621,4106,'浚  县'),
(410622,4106,'淇  县'),
(4107,41,'新乡'),
(410701,4107,'市辖区'),
(410702,4107,'红旗区'),
(410703,4107,'新华区'),
(410704,4107,'北站区'),
(410711,4107,'郊  区'),
(410721,4107,'新乡县'),
(410724,4107,'获嘉县'),
(410725,4107,'原阳县'),
(410726,4107,'延津县'),
(410727,4107,'封丘县'),
(410728,4107,'长垣县'),
(410781,4107,'卫辉市'),
(410782,4107,'辉县市'),
(4108,41,'焦作'),
(410801,4108,'市辖区'),
(410802,4108,'解放区'),
(410803,4108,'中站区'),
(410804,4108,'马村区'),
(410811,4108,'山阳区'),
(410821,4108,'修武县'),
(410822,4108,'博爱县'),
(410823,4108,'武陟县'),
(410825,4108,'温  县'),
(410881,4108,'济源市'),
(410882,4108,'沁阳市'),
(410883,4108,'孟州市'),
(4109,41,'濮阳'),
(410901,4109,'市辖区'),
(410902,4109,'市  区'),
(410922,4109,'清丰县'),
(410923,4109,'南乐县'),
(410926,4109,'范  县'),
(410927,4109,'台前县'),
(410928,4109,'濮阳县'),
(4110,41,'许昌'),
(411001,4110,'市辖区'),
(411002,4110,'魏都区'),
(411023,4110,'许昌县'),
(411024,4110,'鄢陵县'),
(411025,4110,'襄城县'),
(411081,4110,'禹州市'),
(411082,4110,'长葛市'),
(4111,41,'漯河'),
(411101,4111,'市辖区'),
(411102,4111,'源汇区'),
(411121,4111,'舞阳县'),
(411122,4111,'临颍县'),
(411123,4111,'郾城县'),
(4112,41,'三门峡'),
(411201,4112,'市辖区'),
(411202,4112,'湖滨区'),
(411221,4112,'渑池县'),
(411222,4112,'陕  县'),
(411224,4112,'卢氏县'),
(411281,4112,'义马市'),
(411282,4112,'灵宝市'),
(4113,41,'南阳'),
(411301,4113,'市辖区'),
(411302,4113,'宛城区'),
(411303,4113,'卧龙区'),
(411321,4113,'南召县'),
(411322,4113,'方城县'),
(411323,4113,'西峡县'),
(411324,4113,'镇平县'),
(411325,4113,'内乡县'),
(411326,4113,'淅川县'),
(411327,4113,'社旗县'),
(411328,4113,'唐河县'),
(411329,4113,'新野县'),
(411330,4113,'桐柏县'),
(411381,4113,'邓州市'),
(4114,41,'商丘'),
(411401,4114,'市辖区'),
(411402,4114,'梁园区'),
(411403,4114,'睢阳区'),
(411421,4114,'民权县'),
(411422,4114,'睢  县'),
(411423,4114,'宁陵县'),
(411424,4114,'柘城县'),
(411425,4114,'虞城县'),
(411426,4114,'夏邑县'),
(411481,4114,'永城市'),
(4115,41,'信阳'),
(411501,4115,'市辖区'),
(411502,4115,'师河区'),
(411503,4115,'平桥区'),
(411521,4115,'罗山县'),
(411522,4115,'光山县'),
(411523,4115,'新  县'),
(411524,4115,'商城县'),
(411525,4115,'固始县'),
(411526,4115,'潢川县'),
(411527,4115,'淮滨县'),
(411528,4115,'息  县'),
(4116,41,'周口'),
(411601,4116,'市辖区'),
(411602,4116,'川汇区'),
(411621,4116,'扶沟县'),
(411622,4116,'西华县'),
(411623,4116,'商水县'),
(411624,4116,'沈丘县'),
(411625,4116,'郸城县'),
(411626,4116,'淮阳县'),
(411627,4116,'太康县'),
(411628,4116,'鹿邑县'),
(411681,4116,'项城市'),
(4117,41,'驻马店'),
(411701,4117,'市辖区'),
(411702,4117,'驿城区'),
(411721,4117,'西平县'),
(411722,4117,'上蔡县'),
(411723,4117,'平舆县'),
(411724,4117,'正阳县'),
(411725,4117,'确山县'),
(411726,4117,'泌阳县'),
(411727,4117,'汝南县'),
(411728,4117,'遂平县'),
(411729,4117,'新蔡县'),
(42,0,'湖北'),
(4201,42,'武汉'),
(420101,4201,'市辖区'),
(420102,4201,'江岸区'),
(420103,4201,'江汉区'),
(420104,4201,'乔口区'),
(420105,4201,'汉阳区'),
(420106,4201,'武昌区'),
(420107,4201,'青山区'),
(420111,4201,'洪山区'),
(420112,4201,'东西湖区'),
(420113,4201,'汉南区'),
(420114,4201,'蔡甸区'),
(420115,4201,'江夏区'),
(420116,4201,'黄陂区'),
(420117,4201,'新洲区'),
(4202,42,'黄石'),
(420201,4202,'市辖区'),
(420202,4202,'黄石港区'),
(420203,4202,'石灰窑区'),
(420204,4202,'下陆区'),
(420205,4202,'铁山区'),
(420222,4202,'阳新县'),
(420281,4202,'大冶市'),
(4203,42,'十堰'),
(420301,4203,'市辖区'),
(420302,4203,'茅箭区'),
(420303,4203,'张湾区'),
(420321,4203,'郧  县'),
(420322,4203,'郧西县'),
(420323,4203,'竹山县'),
(420324,4203,'竹溪县'),
(420325,4203,'房  县'),
(420381,4203,'丹江口市'),
(4205,42,'宜昌'),
(420501,4205,'市辖区'),
(420502,4205,'西陵区'),
(420503,4205,'伍家岗区'),
(420504,4205,'点军区'),
(420505,4205,'虎亭区'),
(420521,4205,'宜昌县'),
(420525,4205,'远安县'),
(420526,4205,'兴山县'),
(420527,4205,'秭归县'),
(420528,4205,'长阳土家族自治县'),
(420529,4205,'五峰土家族自治县'),
(420581,4205,'宜都市'),
(420582,4205,'当阳市'),
(420583,4205,'枝江市'),
(4206,42,'襄樊'),
(420601,4206,'市辖区'),
(420602,4206,'襄城区'),
(420606,4206,'樊城区'),
(420621,4206,'襄阳县'),
(420624,4206,'南漳县'),
(420625,4206,'谷城县'),
(420626,4206,'保康县'),
(420682,4206,'老河口市'),
(420683,4206,'枣阳市'),
(420684,4206,'宜城市'),
(4207,42,'鄂州'),
(420701,4207,'市辖区'),
(420702,4207,'梁子湖区'),
(420703,4207,'华容区'),
(420704,4207,'鄂城区'),
(4208,42,'荆门'),
(420801,4208,'市辖区'),
(420802,4208,'东宝区'),
(420821,4208,'京山县'),
(420822,4208,'沙洋县'),
(420881,4208,'钟祥市'),
(4209,42,'孝感'),
(420901,4209,'市辖区'),
(420902,4209,'孝南区'),
(420921,4209,'孝昌县'),
(420922,4209,'大悟县'),
(420923,4209,'云梦县'),
(420981,4209,'应城市'),
(420982,4209,'安陆市'),
(420984,4209,'汉川市'),
(4210,42,'荆州'),
(421001,4210,'市辖区'),
(421002,4210,'沙市区'),
(421003,4210,'荆州区'),
(421022,4210,'公安县'),
(421023,4210,'监利县'),
(421024,4210,'江陵县'),
(421081,4210,'石首市'),
(421083,4210,'洪湖市'),
(421087,4210,'松滋市'),
(4211,42,'黄冈'),
(421101,4211,'市辖区'),
(421102,4211,'黄州区'),
(421121,4211,'团风县'),
(421122,4211,'红安县'),
(421123,4211,'罗田县'),
(421124,4211,'英山县'),
(421125,4211,'浠水县'),
(421126,4211,'蕲春县'),
(421127,4211,'黄梅县'),
(421181,4211,'麻城市'),
(421182,4211,'武穴市'),
(4212,42,'咸宁'),
(421201,4212,'市辖区'),
(421202,4212,'咸安区'),
(421221,4212,'嘉鱼县'),
(421222,4212,'通城县'),
(421223,4212,'崇阳县'),
(421224,4212,'通山县'),
(421281,4212,'赤壁市'),
(4213,42,'随州'),
(421301,4213,'市辖区'),
(421302,4213,'曾都区'),
(421381,4213,'广水市'),
(4228,42,'恩施土家族苗族自治州'),
(422801,4228,'恩施市'),
(422802,4228,'利川市'),
(422822,4228,'建始县'),
(422823,4228,'巴东县'),
(422825,4228,'宣恩县'),
(422826,4228,'咸丰县'),
(422827,4228,'来凤县'),
(422828,4228,'鹤峰县'),
(4290,42,'省直辖行政单位'),
(429004,4290,'仙桃市'),
(429005,4290,'潜江市'),
(429006,4290,'天门市'),
(429021,4290,'神农架林区'),
(43,0,'湖南'),
(4301,43,'长沙'),
(430101,4301,'市辖区'),
(430102,4301,'芙蓉区'),
(430103,4301,'天心区'),
(430104,4301,'岳麓区'),
(430105,4301,'开福区'),
(430111,4301,'雨花区'),
(430121,4301,'长沙县'),
(430122,4301,'望城县'),
(430124,4301,'宁乡县'),
(430181,4301,'浏阳市'),
(4302,43,'株洲'),
(430201,4302,'市辖区'),
(430202,4302,'荷塘区'),
(430203,4302,'芦淞区'),
(430204,4302,'石峰区'),
(430211,4302,'天元区'),
(430221,4302,'株洲县'),
(430223,4302,'攸  县'),
(430224,4302,'茶陵县'),
(430225,4302,'炎陵县'),
(430281,4302,'醴陵市'),
(4303,43,'湘潭'),
(430301,4303,'市辖区'),
(430302,4303,'雨湖区'),
(430304,4303,'岳塘区'),
(430321,4303,'湘潭县'),
(430381,4303,'湘乡市'),
(430382,4303,'韶山市'),
(4304,43,'衡阳'),
(430401,4304,'市辖区'),
(430402,4304,'江东区'),
(430403,4304,'城南区'),
(430404,4304,'城北区'),
(430411,4304,'郊   区'),
(430412,4304,'南岳区'),
(430421,4304,'衡阳县'),
(430422,4304,'衡南县'),
(430423,4304,'衡山县'),
(430424,4304,'衡东县'),
(430426,4304,'祁东县'),
(430481,4304,'耒阳市'),
(430482,4304,'常宁市'),
(4305,43,'邵阳'),
(430501,4305,'市辖区'),
(430502,4305,'双清区'),
(430503,4305,'大祥区'),
(430511,4305,'北塔区'),
(430521,4305,'邵东县'),
(430522,4305,'新邵县'),
(430523,4305,'邵阳县'),
(430524,4305,'隆回县'),
(430525,4305,'洞口县'),
(430527,4305,'绥宁县'),
(430528,4305,'新宁县'),
(430529,4305,'城步苗族自治县'),
(430581,4305,'武冈市'),
(4306,43,'岳阳'),
(430601,4306,'市辖区'),
(430602,4306,'岳阳楼区'),
(430603,4306,'云溪区'),
(430611,4306,'君山区'),
(430621,4306,'岳阳县'),
(430623,4306,'华容县'),
(430624,4306,'湘阴县'),
(430626,4306,'平江县'),
(430681,4306,'汨罗市'),
(430682,4306,'临湘市'),
(4307,43,'常德'),
(430701,4307,'市辖区'),
(430702,4307,'武陵区'),
(430703,4307,'鼎城区'),
(430721,4307,'安乡县'),
(430722,4307,'汉寿县'),
(430723,4307,'澧  县'),
(430724,4307,'临澧县'),
(430725,4307,'桃源县'),
(430726,4307,'石门县'),
(430781,4307,'津市市'),
(4308,43,'张家界'),
(430801,4308,'市辖区'),
(430802,4308,'永定区'),
(430811,4308,'武陵源区'),
(430821,4308,'慈利县'),
(430822,4308,'桑植县'),
(4309,43,'益阳'),
(430901,4309,'市辖区'),
(430902,4309,'资阳区'),
(430903,4309,'赫山区'),
(430921,4309,'南  县'),
(430922,4309,'桃江县'),
(430923,4309,'安化县'),
(430981,4309,'沅江市'),
(4310,43,'郴州'),
(431001,4310,'市辖区'),
(431002,4310,'北湖区'),
(431003,4310,'苏仙区'),
(431021,4310,'桂阳县'),
(431022,4310,'宜章县'),
(431023,4310,'永兴县'),
(431024,4310,'嘉禾县'),
(431025,4310,'临武县'),
(431026,4310,'汝城县'),
(431027,4310,'桂东县'),
(431028,4310,'安仁县'),
(431081,4310,'资兴市'),
(4311,43,'永州'),
(431101,4311,'市辖区'),
(431102,4311,'芝山区'),
(431103,4311,'冷水滩区'),
(431121,4311,'祁阳县'),
(431122,4311,'东安县'),
(431123,4311,'双牌县'),
(431124,4311,'道  县'),
(431125,4311,'江永县'),
(431126,4311,'宁远县'),
(431127,4311,'蓝山县'),
(431128,4311,'新田县'),
(431129,4311,'江华瑶族自治县'),
(4312,43,'怀化'),
(431201,4312,'市辖区'),
(431202,4312,'鹤城区'),
(431221,4312,'中方县'),
(431222,4312,'沅陵县'),
(431223,4312,'辰溪县'),
(431224,4312,'溆浦县'),
(431225,4312,'会同县'),
(431226,4312,'麻阳苗族自治县'),
(431227,4312,'新晃侗族自治县'),
(431228,4312,'芷江侗族自治县'),
(431229,4312,'靖州苗族侗族自治县'),
(431230,4312,'通道侗族自治县'),
(431281,4312,'洪江市'),
(4313,43,'娄底'),
(431301,4313,'市辖区'),
(431302,4313,'娄星区'),
(431321,4313,'双峰县'),
(431322,4313,'新化县'),
(431381,4313,'冷水江市'),
(431382,4313,'涟源市'),
(4331,43,'湘西土家族苗族自治州'),
(433101,4331,'吉首市'),
(433122,4331,'泸溪县'),
(433123,4331,'凤凰县'),
(433124,4331,'花垣县'),
(433125,4331,'保靖县'),
(433126,4331,'古丈县'),
(433127,4331,'永顺县'),
(433130,4331,'龙山县'),
(44,0,'广东'),
(4401,44,'广州'),
(440101,4401,'市辖区'),
(440102,4401,'东山区'),
(440103,4401,'荔湾区'),
(440104,4401,'越秀区'),
(440105,4401,'海珠区'),
(440106,4401,'天河区'),
(440107,4401,'芳村区'),
(440111,4401,'白云区'),
(440112,4401,'黄埔区'),
(440113,4401,'番禺区'),
(440114,4401,'花都区'),
(440183,4401,'增城市'),
(440184,4401,'从化市'),
(4402,44,'韶关'),
(440201,4402,'市辖区'),
(440202,4402,'北江区'),
(440203,4402,'武江区'),
(440204,4402,'浈江区'),
(440221,4402,'曲江县'),
(440222,4402,'始兴县'),
(440224,4402,'仁化县'),
(440229,4402,'翁源县'),
(440232,4402,'乳源瑶族自治县'),
(440233,4402,'新丰县'),
(440281,4402,'乐昌市'),
(440282,4402,'南雄市'),
(4403,44,'深圳'),
(440301,4403,'市辖区'),
(440303,4403,'罗湖区'),
(440304,4403,'福田区'),
(440305,4403,'南山区'),
(440306,4403,'宝安区'),
(440307,4403,'龙岗区'),
(440308,4403,'盐田区'),
(4404,44,'珠海'),
(440401,4404,'市辖区'),
(440402,4404,'香洲区'),
(440421,4404,'斗门县'),
(4405,44,'汕头'),
(440501,4405,'市辖区'),
(440506,4405,'达濠区'),
(440507,4405,'龙湖区'),
(440508,4405,'金园区'),
(440509,4405,'升平区'),
(440510,4405,'河浦区'),
(440523,4405,'南澳县'),
(440582,4405,'潮阳市'),
(440583,4405,'澄海市'),
(4406,44,'佛山'),
(440601,4406,'市辖区'),
(440602,4406,'城  区'),
(440603,4406,'石湾区'),
(440681,4406,'顺德市'),
(440682,4406,'南海市'),
(440683,4406,'三水市'),
(440684,4406,'高明市'),
(4407,44,'江门'),
(440701,4407,'市辖区'),
(440703,4407,'蓬江区'),
(440704,4407,'江海区'),
(440781,4407,'台山市'),
(440782,4407,'新会市'),
(440783,4407,'开平市'),
(440784,4407,'鹤山市'),
(440785,4407,'恩平市'),
(4408,44,'湛江'),
(440801,4408,'市辖区'),
(440802,4408,'赤坎区'),
(440803,4408,'霞山区'),
(440804,4408,'坡头区'),
(440811,4408,'麻章区'),
(440823,4408,'遂溪县'),
(440825,4408,'徐闻县'),
(440881,4408,'廉江市'),
(440882,4408,'雷州市'),
(440883,4408,'吴川市'),
(4409,44,'茂名'),
(440901,4409,'市辖区'),
(440902,4409,'茂南区'),
(440923,4409,'电白县'),
(440981,4409,'高州市'),
(440982,4409,'化州市'),
(440983,4409,'信宜市'),
(4412,44,'肇庆'),
(441201,4412,'市辖区'),
(441202,4412,'端州区'),
(441203,4412,'鼎湖区'),
(441223,4412,'广宁县'),
(441224,4412,'怀集县'),
(441225,4412,'封开县'),
(441226,4412,'德庆县'),
(441283,4412,'高要市'),
(441284,4412,'四会市'),
(4413,44,'惠州'),
(441301,4413,'市辖区'),
(441302,4413,'惠城区'),
(441322,4413,'博罗县'),
(441323,4413,'惠东县'),
(441324,4413,'龙门县'),
(441381,4413,'惠阳市'),
(4414,44,'梅州'),
(441401,4414,'市辖区'),
(441402,4414,'梅江区'),
(441421,4414,'梅  县'),
(441422,4414,'大埔县'),
(441423,4414,'丰顺县'),
(441424,4414,'五华县'),
(441426,4414,'平远县'),
(441427,4414,'蕉岭县'),
(441481,4414,'兴宁市'),
(4415,44,'汕尾'),
(441501,4415,'市辖区'),
(441502,4415,'城  区'),
(441521,4415,'海丰县'),
(441523,4415,'陆河县'),
(441581,4415,'陆丰市'),
(4416,44,'河源'),
(441601,4416,'市辖区'),
(441602,4416,'源城区'),
(441621,4416,'紫金县'),
(441622,4416,'龙川县'),
(441623,4416,'连平县'),
(441624,4416,'和平县'),
(441625,4416,'东源县'),
(4417,44,'阳江'),
(441701,4417,'市辖区'),
(441702,4417,'江城区'),
(441721,4417,'阳西县'),
(441723,4417,'阳东县'),
(441781,4417,'阳春市'),
(4418,44,'清远'),
(441801,4418,'市辖区'),
(441802,4418,'清城区'),
(441821,4418,'佛冈县'),
(441823,4418,'阳山县'),
(441825,4418,'连山壮族瑶族自治县'),
(441826,4418,'连南瑶族自治县'),
(441827,4418,'清新县'),
(441881,4418,'英德市'),
(441882,4418,'连州市'),
(4419,44,'东莞'),
(441901,4419,'莞城区'),
(441902,4419,'东城区'),
(441903,4419,'南城区'),
(441904,4419,'万江区'),
(4420,44,'中山'),
(442001,4420,'石岐区'),
(442002,4420,'东区'),
(442003,4420,'西区'),
(442004,4420,'南区'),
(442005,4420,'五桂山'),
(4451,44,'潮州'),
(445101,4451,'市辖区'),
(445102,4451,'湘桥区'),
(445121,4451,'潮安县'),
(445122,4451,'饶平县'),
(4452,44,'揭阳'),
(445201,4452,'市辖区'),
(445202,4452,'榕城区'),
(445221,4452,'揭东县'),
(445222,4452,'揭西县'),
(445224,4452,'惠来县'),
(445281,4452,'普宁市'),
(4453,44,'云浮'),
(445301,4453,'市辖区'),
(445302,4453,'云城区'),
(445321,4453,'新兴县'),
(445322,4453,'郁南县'),
(445323,4453,'云安县'),
(445381,4453,'罗定市'),
(45,0,'广西'),
(4501,45,'南宁'),
(450101,4501,'市辖区'),
(450102,4501,'兴宁区'),
(450103,4501,'新城区'),
(450104,4501,'城北区'),
(450105,4501,'江南区'),
(450106,4501,'永新区'),
(450111,4501,'市郊区'),
(450121,4501,'邕宁县'),
(450122,4501,'武鸣县'),
(4502,45,'柳州'),
(450201,4502,'市辖区'),
(450202,4502,'城中区'),
(450203,4502,'鱼峰区'),
(450204,4502,'柳南区'),
(450205,4502,'柳北区'),
(450211,4502,'市郊区'),
(450221,4502,'柳江县'),
(450222,4502,'柳城县'),
(4503,45,'桂林'),
(450301,4503,'市辖区'),
(450302,4503,'秀峰区'),
(450303,4503,'叠彩区'),
(450304,4503,'象山区'),
(450305,4503,'七星区'),
(450311,4503,'雁山区'),
(450321,4503,'阳朔县'),
(450322,4503,'临桂县'),
(450323,4503,'灵川县'),
(450324,4503,'全州县'),
(450325,4503,'兴安县'),
(450326,4503,'永福县'),
(450327,4503,'灌阳县'),
(450328,4503,'龙胜各县自治区'),
(450329,4503,'资源县'),
(450330,4503,'平乐县'),
(450331,4503,'荔蒲县'),
(450332,4503,'恭城瑶族自治县'),
(4504,45,'梧州'),
(450401,4504,'市辖区'),
(450403,4504,'万秀区'),
(450404,4504,'蝶山区'),
(450411,4504,'市郊区'),
(450421,4504,'苍梧县'),
(450422,4504,'藤  县'),
(450423,4504,'蒙山县'),
(450481,4504,'岑溪市'),
(4505,45,'北海'),
(450501,4505,'市辖区'),
(450502,4505,'海城区'),
(450503,4505,'银海区'),
(450512,4505,'铁山港区'),
(450521,4505,'合浦县'),
(4506,45,'防城港'),
(450601,4506,'市辖区'),
(450602,4506,'港口区'),
(450603,4506,'防城区'),
(450621,4506,'上思县'),
(450681,4506,'东兴市'),
(4507,45,'钦州'),
(450701,4507,'市辖区'),
(450702,4507,'钦南区'),
(450703,4507,'钦北区'),
(450721,4507,'浦北县'),
(450722,4507,'灵山县'),
(4508,45,'贵港'),
(450801,4508,'市辖区'),
(450802,4508,'港北区'),
(450803,4508,'港南区'),
(450821,4508,'平南县'),
(450881,4508,'桂平市'),
(4509,45,'玉林'),
(450901,4509,'市辖区'),
(450902,4509,'玉州区'),
(450921,4509,'容  县'),
(450922,4509,'陆川县'),
(450923,4509,'博白县'),
(450924,4509,'兴业县'),
(450981,4509,'北流市'),
(4521,45,'南宁地区'),
(452101,4521,'凭祥市'),
(452122,4521,'横  县'),
(452123,4521,'宾阳县'),
(452124,4521,'上林县'),
(452126,4521,'隆安县'),
(452127,4521,'马山县'),
(452128,4521,'扶绥县'),
(452129,4521,'崇左县'),
(452130,4521,'大新县'),
(452131,4521,'天等县'),
(452132,4521,'宁明县'),
(452133,4521,'龙州县'),
(4522,45,'柳州地区'),
(452201,4522,'合山市'),
(452223,4522,'鹿寨县'),
(452224,4522,'象州县'),
(452225,4522,'武宣县'),
(452226,4522,'来宾县'),
(452227,4522,'融安县'),
(452228,4522,'三江侗族自治县'),
(452229,4522,'融水苗族自治县'),
(452230,4522,'金秀瑶族自治县'),
(452231,4522,'忻城县'),
(4524,45,'贺州地区'),
(452402,4524,'贺州市'),
(452424,4524,'昭平县'),
(452427,4524,'钟山县'),
(452428,4524,'富川瑶族自治县'),
(4526,45,'百色地区'),
(452601,4526,'百色市'),
(452622,4526,'田阳县'),
(452623,4526,'田东县'),
(452624,4526,'平果县'),
(452625,4526,'德保县'),
(452626,4526,'靖西县'),
(452627,4526,'那坡县'),
(452628,4526,'凌云县'),
(452629,4526,'乐业县'),
(452630,4526,'田林县'),
(452631,4526,'隆林各族自治县'),
(452632,4526,'西林县'),
(4527,45,'河池地区'),
(452701,4527,'河池市'),
(452702,4527,'宜州市'),
(452723,4527,'罗城仫佬族自治县'),
(452724,4527,'环江毛南族自治县'),
(452725,4527,'南丹县'),
(452726,4527,'天峨县'),
(452727,4527,'凤山县'),
(452728,4527,'东兰县'),
(452729,4527,'巴马瑶族自治县'),
(452730,4527,'都安瑶族自治县'),
(452731,4527,'大化瑶族自治县'),
(46,0,'海南'),
(4601,46,'海南'),
(460101,4601,'通什市'),
(460102,4601,'琼海市'),
(460103,4601,'儋州市'),
(460104,4601,'琼山市'),
(460105,4601,'文昌市'),
(460106,4601,'万宁市'),
(460107,4601,'东方市'),
(460125,4601,'定安县'),
(460126,4601,'屯昌县'),
(460127,4601,'澄迈县'),
(460128,4601,'临高县'),
(460130,4601,'白沙黎族自治县'),
(460131,4601,'昌江黎族自治县'),
(460133,4601,'乐东黎族自治县'),
(460134,4601,'陵水黎族自治县'),
(460135,4601,'保亭黎族苗族自治县'),
(460136,4601,'琼中黎族苗族自治县'),
(460137,4601,'西沙群岛'),
(460138,4601,'南沙群岛'),
(460139,4601,'中沙群岛的岛礁及其海'),
(4602,46,'海口'),
(460201,4602,'市辖区'),
(460202,4602,'振东区'),
(460203,4602,'新华区'),
(460204,4602,'秀英区'),
(4603,46,'三亚'),
(460301,4603,'市辖区'),
(50,0,'重庆'),
(5001,50,'重庆市辖'),
(500101,5001,'万州区'),
(500102,5001,'涪陵区'),
(500103,5001,'渝中区'),
(500104,5001,'大渡口区'),
(500105,5001,'江北区'),
(500106,5001,'沙坪坝区'),
(500107,5001,'九龙坡区'),
(500108,5001,'南岸区'),
(500109,5001,'北碚区'),
(500110,5001,'万盛区'),
(500111,5001,'双桥区'),
(500112,5001,'渝北区'),
(500113,5001,'巴南区'),
(500114,5001,'黔江区'),
(5002,50,'重庆县辖'),
(500221,5002,'长寿县'),
(500222,5002,'綦江县'),
(500223,5002,'潼南县'),
(500224,5002,'铜梁县'),
(500225,5002,'大足县'),
(500226,5002,'荣昌县'),
(500227,5002,'璧山县'),
(500228,5002,'梁平县'),
(500229,5002,'城口县'),
(500230,5002,'丰都县'),
(500231,5002,'垫江县'),
(500232,5002,'武隆县'),
(500233,5002,'忠  县'),
(500234,5002,'开  县'),
(500235,5002,'云阳县'),
(500236,5002,'奉节县'),
(500237,5002,'巫山县'),
(500238,5002,'巫溪县'),
(500240,5002,'石柱土家族自治县'),
(500241,5002,'秀山土家族苗族自治县'),
(500242,5002,'酉阳土家族苗族自治县'),
(500243,5002,'彭水苗族土家族自治县'),
(5003,50,'重庆县级'),
(500381,5003,'江津市'),
(500382,5003,'合川市'),
(500383,5003,'永川市'),
(500384,5003,'南川市'),
(51,0,'四川'),
(5101,51,'成都'),
(510101,5101,'市辖区'),
(510103,5101,'高新区'),
(510104,5101,'锦江区'),
(510105,5101,'青羊区'),
(510106,5101,'金牛区'),
(510107,5101,'武侯区'),
(510108,5101,'成华区'),
(510112,5101,'龙泉驿区'),
(510113,5101,'青白江区'),
(510121,5101,'金堂县'),
(510122,5101,'双流县'),
(510123,5101,'温江县'),
(510124,5101,'郫  县'),
(510125,5101,'新都县'),
(510129,5101,'大邑县'),
(510131,5101,'蒲江县'),
(510132,5101,'新津县'),
(510181,5101,'都江堰市'),
(510182,5101,'彭州市'),
(510183,5101,'邛崃市'),
(510184,5101,'崇州市'),
(5103,51,'自贡'),
(510301,5103,'市辖区'),
(510302,5103,'自流井区'),
(510303,5103,'贡井区'),
(510304,5103,'大安区'),
(510311,5103,'沿滩区'),
(510321,5103,'荣  县'),
(510322,5103,'富顺县'),
(5104,51,'攀枝花'),
(510401,5104,'市辖区'),
(510402,5104,'东  区'),
(510403,5104,'西  区'),
(510411,5104,'仁和区'),
(510421,5104,'米易县'),
(510422,5104,'盐边县'),
(5105,51,'泸州'),
(510501,5105,'市辖区'),
(510502,5105,'江阳区'),
(510503,5105,'纳溪区'),
(510504,5105,'龙马潭区'),
(510521,5105,'泸  县'),
(510522,5105,'合江县'),
(510524,5105,'叙永县'),
(510525,5105,'古蔺县'),
(5106,51,'德阳'),
(510601,5106,'市辖区'),
(510603,5106,'旌阳区'),
(510623,5106,'中江县'),
(510626,5106,'罗江县'),
(510681,5106,'广汉市'),
(510682,5106,'什邡市'),
(510683,5106,'绵竹市'),
(5107,51,'绵阳'),
(510701,5107,'市辖区'),
(510703,5107,'涪城区'),
(510704,5107,'游仙区'),
(510710,5107,'科学城区'),
(510722,5107,'三台县'),
(510723,5107,'盐亭县'),
(510724,5107,'安  县'),
(510725,5107,'梓潼县'),
(510726,5107,'北川县'),
(510727,5107,'平武县'),
(510781,5107,'江油市'),
(5108,51,'广元'),
(510801,5108,'市辖区'),
(510802,5108,'市中区'),
(510811,5108,'元坝区'),
(510812,5108,'朝天区'),
(510821,5108,'旺苍县'),
(510822,5108,'青川县'),
(510823,5108,'剑阁县'),
(510824,5108,'苍溪县'),
(5109,51,'遂宁'),
(510901,5109,'市辖区'),
(510902,5109,'市中区'),
(510921,5109,'蓬溪县'),
(510922,5109,'射洪县'),
(510923,5109,'大英县'),
(5110,51,'内江'),
(511001,5110,'市辖区'),
(511002,5110,'市中区'),
(511011,5110,'东兴区'),
(511024,5110,'威远县'),
(511025,5110,'资中县'),
(511028,5110,'隆昌县'),
(5111,51,'乐山'),
(511101,5111,'市辖区'),
(511102,5111,'市中区'),
(511111,5111,'沙湾区'),
(511112,5111,'五通桥区'),
(511113,5111,'金口河区'),
(511123,5111,'犍为县'),
(511124,5111,'井研县'),
(511126,5111,'夹江县'),
(511129,5111,'沐川县'),
(511132,5111,'峨边彝族自治县'),
(511133,5111,'马边彝族自治县'),
(511181,5111,'峨眉山市'),
(5113,51,'南充'),
(511301,5113,'市辖区'),
(511302,5113,'顺庆区'),
(511303,5113,'高坪区'),
(511304,5113,'嘉陵区'),
(511321,5113,'南部县'),
(511322,5113,'营山县'),
(511323,5113,'蓬安县'),
(511324,5113,'仪陇县'),
(511325,5113,'西充县'),
(511381,5113,'阆中市'),
(5114,51,'眉山'),
(511401,5114,'市辖区'),
(511402,5114,'东坡区'),
(511421,5114,'仁寿县'),
(511422,5114,'彭山县'),
(511423,5114,'洪雅县'),
(511424,5114,'丹棱县'),
(511425,5114,'青神县'),
(5115,51,'宜宾'),
(511501,5115,'市辖区'),
(511502,5115,'翠屏区'),
(511521,5115,'宜宾县'),
(511522,5115,'南溪县'),
(511523,5115,'江安县'),
(511524,5115,'长宁县'),
(511525,5115,'高  县'),
(511526,5115,'珙  县'),
(511527,5115,'筠连县'),
(511528,5115,'兴文县'),
(511529,5115,'屏山县'),
(5116,51,'广安'),
(511601,5116,'市辖区'),
(511602,5116,'广安区'),
(511621,5116,'岳池县'),
(511622,5116,'武胜县'),
(511623,5116,'邻水县'),
(511681,5116,'华蓥市'),
(5117,51,'达州'),
(511701,5117,'市辖区'),
(511702,5117,'通川区'),
(511721,5117,'达  县'),
(511722,5117,'宣汉县'),
(511723,5117,'开江县'),
(511724,5117,'大竹县'),
(511725,5117,'渠  县'),
(511781,5117,'万源市'),
(5118,51,'雅安'),
(511801,5118,'市辖区'),
(511802,5118,'雨城区'),
(511821,5118,'名山县'),
(511822,5118,'荥经县'),
(511823,5118,'汉源县'),
(511824,5118,'石棉县'),
(511825,5118,'天全县'),
(511826,5118,'芦山县'),
(511827,5118,'宝兴县'),
(5119,51,'巴中'),
(511901,5119,'市辖区'),
(511902,5119,'巴州区'),
(511921,5119,'通江县'),
(511922,5119,'南江县'),
(511923,5119,'平昌县'),
(5120,51,'资阳'),
(512001,5120,'市辖区'),
(512002,5120,'雁江区'),
(512021,5120,'安岳县'),
(512022,5120,'乐至县'),
(512081,5120,'简阳市'),
(5132,51,'阿坝藏族羌族自治州'),
(513221,5132,'汶川县'),
(513222,5132,'理  县'),
(513223,5132,'茂  县'),
(513224,5132,'松潘县'),
(513225,5132,'九寨沟县'),
(513226,5132,'金川县'),
(513227,5132,'小金县'),
(513228,5132,'黑水县'),
(513229,5132,'马尔康县'),
(513230,5132,'壤塘县'),
(513231,5132,'阿坝县'),
(513232,5132,'若尔盖县'),
(513233,5132,'红原县'),
(5133,51,'甘孜藏族自治州'),
(513321,5133,'康定县'),
(513322,5133,'泸定县'),
(513323,5133,'丹巴县'),
(513324,5133,'九龙县'),
(513325,5133,'雅江县'),
(513326,5133,'道孚县'),
(513327,5133,'炉霍县'),
(513328,5133,'甘孜县'),
(513329,5133,'新龙县'),
(513330,5133,'德格县'),
(513331,5133,'白玉县'),
(513332,5133,'石渠县'),
(513333,5133,'色达县'),
(513334,5133,'理塘县'),
(513335,5133,'巴塘县'),
(513336,5133,'乡城县'),
(513337,5133,'稻城县'),
(513338,5133,'得荣县'),
(5134,51,'凉山彝族自治州'),
(513401,5134,'西昌市'),
(513422,5134,'木里藏族自治县'),
(513423,5134,'盐源县'),
(513424,5134,'德昌县'),
(513425,5134,'会理县'),
(513426,5134,'会东县'),
(513427,5134,'宁南县'),
(513428,5134,'普格县'),
(513429,5134,'布拖县'),
(513430,5134,'金阳县'),
(513431,5134,'昭觉县'),
(513432,5134,'喜德县'),
(513433,5134,'冕宁县'),
(513434,5134,'越西县'),
(513435,5134,'甘洛县'),
(513436,5134,'美姑县'),
(513437,5134,'雷波县'),
(52,0,'贵州'),
(5201,52,'贵阳'),
(520101,5201,'市辖区'),
(520102,5201,'南明区'),
(520103,5201,'云岩区'),
(520111,5201,'花溪区'),
(520112,5201,'乌当区'),
(520113,5201,'白云区'),
(520114,5201,'小河区'),
(520121,5201,'开阳县'),
(520122,5201,'息烽县'),
(520123,5201,'修文县'),
(520181,5201,'清镇市'),
(5202,52,'六盘水'),
(520201,5202,'钟山区'),
(520203,5202,'六枝特区'),
(520221,5202,'水城县'),
(520222,5202,'盘  县'),
(5203,52,'遵义'),
(520301,5203,'市辖区'),
(520302,5203,'红花岗区'),
(520321,5203,'遵义县'),
(520322,5203,'桐梓县'),
(520323,5203,'绥阳县'),
(520324,5203,'正安县'),
(520325,5203,'道真仡佬族苗族自治县'),
(520326,5203,'务川仡佬族苗族自治县'),
(520327,5203,'凤冈县'),
(520328,5203,'湄潭县'),
(520329,5203,'余庆县'),
(520330,5203,'习水县'),
(520381,5203,'赤水市'),
(520382,5203,'仁怀市'),
(5204,52,'安顺'),
(520401,5204,'市辖区'),
(520402,5204,'西秀区'),
(520421,5204,'平坝县'),
(520422,5204,'普定县'),
(520423,5204,'镇宁布依族苗族自治县'),
(520424,5204,'关岭布依族苗族自治县'),
(520425,5204,'紫云苗族布依族自治县'),
(5222,52,'铜仁地区'),
(522201,5222,'铜仁市'),
(522222,5222,'江口县'),
(522223,5222,'玉屏侗族自治县'),
(522224,5222,'石阡县'),
(522225,5222,'思南县'),
(522226,5222,'印江土家族苗族自治县'),
(522227,5222,'德江县'),
(522228,5222,'沿河土家族自治县'),
(522229,5222,'松桃苗族自治县'),
(522230,5222,'万山特区'),
(5223,52,'黔西南布依族苗族自治'),
(522301,5223,'兴义市'),
(522322,5223,'兴仁县'),
(522323,5223,'普安县'),
(522324,5223,'晴隆县'),
(522325,5223,'贞丰县'),
(522326,5223,'望谟县'),
(522327,5223,'册亨县'),
(522328,5223,'安龙县'),
(5224,52,'毕节地区'),
(522401,5224,'毕节市'),
(522422,5224,'大方县'),
(522423,5224,'黔西县'),
(522424,5224,'金沙县'),
(522425,5224,'织金县'),
(522426,5224,'纳雍县'),
(522427,5224,'威宁彝族回族苗族自治'),
(522428,5224,'赫章县'),
(5226,52,'黔东南苗族侗族自治州'),
(522601,5226,'凯里市'),
(522622,5226,'黄平县'),
(522623,5226,'施秉县'),
(522624,5226,'三穗县'),
(522625,5226,'镇远县'),
(522626,5226,'岑巩县'),
(522627,5226,'天柱县'),
(522628,5226,'锦屏县'),
(522629,5226,'剑河县'),
(522630,5226,'台江县'),
(522631,5226,'黎平县'),
(522632,5226,'榕江县'),
(522633,5226,'从江县'),
(522634,5226,'雷山县'),
(522635,5226,'麻江县'),
(522636,5226,'丹寨县'),
(5227,52,'黔南布依族苗族自治州'),
(522701,5227,'都匀市'),
(522702,5227,'福泉市'),
(522722,5227,'荔波县'),
(522723,5227,'贵定县'),
(522725,5227,'瓮安县'),
(522726,5227,'独山县'),
(522727,5227,'平塘县'),
(522728,5227,'罗甸县'),
(522729,5227,'长顺县'),
(522730,5227,'龙里县'),
(522731,5227,'惠水县'),
(522732,5227,'三都水族自治县'),
(53,0,'云南'),
(5301,53,'昆明'),
(530101,5301,'市辖区'),
(530102,5301,'五华区'),
(530103,5301,'盘龙区'),
(530111,5301,'官渡区'),
(530112,5301,'西山区'),
(530113,5301,'东川区'),
(530121,5301,'呈贡县'),
(530122,5301,'晋宁县'),
(530124,5301,'富民县'),
(530125,5301,'宜良县'),
(530126,5301,'石林彝族自治县'),
(530127,5301,'嵩明县'),
(530128,5301,'禄劝彝族苗族自治县'),
(530129,5301,'寻甸回族彝族自治县'),
(530181,5301,'安宁市'),
(5303,53,'曲靖'),
(530301,5303,'市辖区'),
(530302,5303,'麒麟区'),
(530321,5303,'马龙县'),
(530322,5303,'陆良县'),
(530323,5303,'师宗县'),
(530324,5303,'罗平县'),
(530325,5303,'富源县'),
(530326,5303,'会泽县'),
(530328,5303,'沾益县'),
(530381,5303,'宣威市'),
(5304,53,'玉溪'),
(530401,5304,'市辖区'),
(530402,5304,'红塔区'),
(530421,5304,'江川县'),
(530422,5304,'澄江县'),
(530423,5304,'通海县'),
(530424,5304,'华宁县'),
(530425,5304,'易门县'),
(530426,5304,'峨山彝族自治县'),
(530427,5304,'新平彝族傣族自治县'),
(530428,5304,'元江哈尼族彝族傣族自'),
(5305,53,'保山'),
(530501,5305,'市辖区'),
(530502,5305,'隆阳区'),
(530521,5305,'施甸县'),
(530522,5305,'腾冲县'),
(530523,5305,'龙陵县'),
(530524,5305,'昌宁县'),
(5321,53,'昭通地区'),
(532101,5321,'昭通市'),
(532122,5321,'鲁甸县'),
(532123,5321,'巧家县'),
(532124,5321,'盐津县'),
(532125,5321,'大关县'),
(532126,5321,'永善县'),
(532127,5321,'绥江县'),
(532128,5321,'镇雄县'),
(532129,5321,'彝良县'),
(532130,5321,'威信县'),
(532131,5321,'水富县'),
(5323,53,'楚雄彝族自治州'),
(532301,5323,'楚雄市'),
(532322,5323,'双柏县'),
(532323,5323,'牟定县'),
(532324,5323,'南华县'),
(532325,5323,'姚安县'),
(532326,5323,'大姚县'),
(532327,5323,'永仁县'),
(532328,5323,'元谋县'),
(532329,5323,'武定县'),
(532331,5323,'禄丰县'),
(5325,53,'红河哈尼族彝族自治州'),
(532501,5325,'个旧市'),
(532502,5325,'开远市'),
(532522,5325,'蒙自县'),
(532523,5325,'屏边苗族自治县'),
(532524,5325,'建水县'),
(532525,5325,'石屏县'),
(532526,5325,'弥勒县'),
(532527,5325,'泸西县'),
(532528,5325,'元阳县'),
(532529,5325,'红河县'),
(532530,5325,'金平苗族瑶族傣族自治'),
(532531,5325,'绿春县'),
(532532,5325,'河口瑶族自治县'),
(5326,53,'文山壮族苗族自治州'),
(532621,5326,'文山县'),
(532622,5326,'砚山县'),
(532623,5326,'西畴县'),
(532624,5326,'麻栗坡县'),
(532625,5326,'马关县'),
(532626,5326,'丘北县'),
(532627,5326,'广南县'),
(532628,5326,'富宁县'),
(5327,53,'思茅地区'),
(532701,5327,'思茅市'),
(532722,5327,'普洱哈尼族彝族自治县'),
(532723,5327,'墨江哈尼族自治县'),
(532724,5327,'景东彝族自治县'),
(532725,5327,'景谷傣族彝族自治县'),
(532726,5327,'镇沅彝族哈尼族拉祜族'),
(532727,5327,'江城哈尼族彝族自治县'),
(532728,5327,'孟连傣族拉祜族佤族自'),
(532729,5327,'澜沧拉祜族自治县'),
(532730,5327,'西盟佤族自治县'),
(5328,53,'西双版纳傣族自治州'),
(532801,5328,'景洪市'),
(532822,5328,'勐海县'),
(532823,5328,'勐腊县'),
(5329,53,'大理白族自治州'),
(532901,5329,'大理市'),
(532922,5329,'漾濞彝族自治县'),
(532923,5329,'祥云县'),
(532924,5329,'宾川县'),
(532925,5329,'弥渡县'),
(532926,5329,'南涧彝族自治县'),
(532927,5329,'巍山彝族回族自治县'),
(532928,5329,'永平县'),
(532929,5329,'云龙县'),
(532930,5329,'洱源县'),
(532931,5329,'剑川县'),
(532932,5329,'鹤庆县'),
(5331,53,'德宏傣族景颇族自治州'),
(533102,5331,'瑞丽市'),
(533103,5331,'潞西市'),
(533122,5331,'梁河县'),
(533123,5331,'盈江县'),
(533124,5331,'陇川县'),
(5332,53,'丽江地区'),
(533221,5332,'丽江纳西族自治县'),
(533222,5332,'永胜县'),
(533223,5332,'华坪县'),
(533224,5332,'宁蒗彝族自治县'),
(5333,53,'怒江傈僳族自治州'),
(533321,5333,'泸水县'),
(533323,5333,'福贡县'),
(533324,5333,'贡山独龙族怒族自治县'),
(533325,5333,'兰坪白族普米族自治县'),
(5334,53,'迪庆藏族自治州'),
(533421,5334,'中甸县'),
(533422,5334,'德钦县'),
(533423,5334,'维西傈僳族自治县'),
(5335,53,'临沧地区'),
(533521,5335,'临沧县'),
(533522,5335,'凤庆县'),
(533523,5335,'云  县'),
(533524,5335,'永德县'),
(533525,5335,'镇康县'),
(533526,5335,'双江拉祜族佤族布朗族'),
(533527,5335,'耿马傣族佤族自治县'),
(533528,5335,'沧源佤族自治县'),
(54,0,'西藏'),
(5401,54,'拉萨'),
(540101,5401,'市辖区'),
(540102,5401,'城关区'),
(540121,5401,'林周县'),
(540122,5401,'当雄县'),
(540123,5401,'尼木县'),
(540124,5401,'曲水县'),
(540125,5401,'堆龙德庆县'),
(540126,5401,'达孜县'),
(540127,5401,'墨竹工卡县'),
(5421,54,'昌都地区'),
(542121,5421,'昌都县'),
(542122,5421,'江达县'),
(542123,5421,'贡觉县'),
(542124,5421,'类乌齐县'),
(542125,5421,'丁青县'),
(542126,5421,'察雅县'),
(542127,5421,'八宿县'),
(542128,5421,'左贡县'),
(542129,5421,'芒康县'),
(542132,5421,'洛隆县'),
(542133,5421,'边坝县'),
(5422,54,'山南地区'),
(542221,5422,'乃东县'),
(542222,5422,'扎囊县'),
(542223,5422,'贡嘎县'),
(542224,5422,'桑日县'),
(542225,5422,'琼结县'),
(542226,5422,'曲松县'),
(542227,5422,'措美县'),
(542228,5422,'洛扎县'),
(542229,5422,'加查县'),
(542231,5422,'隆子县'),
(542232,5422,'错那县'),
(542233,5422,'浪卡子县'),
(5423,54,'日喀则地区'),
(542301,5423,'日喀则市'),
(542322,5423,'南木林县'),
(542323,5423,'江孜县'),
(542324,5423,'定日县'),
(542325,5423,'萨迦县'),
(542326,5423,'拉孜县'),
(542327,5423,'昂仁县'),
(542328,5423,'谢通门县'),
(542329,5423,'白朗县'),
(542330,5423,'仁布县'),
(542331,5423,'康马县'),
(542332,5423,'定结县'),
(542333,5423,'仲巴县'),
(542334,5423,'亚东县'),
(542335,5423,'吉隆县'),
(542336,5423,'聂拉木县'),
(542337,5423,'萨嘎县'),
(542338,5423,'岗巴县'),
(5424,54,'那曲地区'),
(542421,5424,'那曲县'),
(542422,5424,'嘉黎县'),
(542423,5424,'比如县'),
(542424,5424,'聂荣县'),
(542425,5424,'安多县'),
(542426,5424,'申扎县'),
(542427,5424,'索  县'),
(542428,5424,'班戈县'),
(542429,5424,'巴青县'),
(542430,5424,'尼玛县'),
(5425,54,'阿里地区'),
(542521,5425,'普兰县'),
(542522,5425,'札达县'),
(542523,5425,'噶尔县'),
(542524,5425,'日土县'),
(542525,5425,'革吉县'),
(542526,5425,'改则县'),
(542527,5425,'措勤县'),
(5426,54,'林芝地区'),
(542621,5426,'林芝县'),
(542622,5426,'工布江达县'),
(542623,5426,'米林县'),
(542624,5426,'墨脱县'),
(542625,5426,'波密县'),
(542626,5426,'察隅县'),
(542627,5426,'朗  县'),
(61,0,'陕西'),
(6101,61,'西安'),
(610101,6101,'市辖区'),
(610102,6101,'新城区'),
(610103,6101,'碑林区'),
(610104,6101,'莲湖区'),
(610111,6101,'灞桥区'),
(610112,6101,'未央区'),
(610113,6101,'雁塔区'),
(610114,6101,'阎良区'),
(610115,6101,'临潼区'),
(610121,6101,'长安县'),
(610122,6101,'蓝田县'),
(610124,6101,'周至县'),
(610125,6101,'户  县'),
(610126,6101,'高陵县'),
(6102,61,'铜川'),
(610201,6102,'市辖区'),
(610202,6102,'王益区'),
(610203,6102,'印台区'),
(610221,6102,'耀  县'),
(610222,6102,'宜君县'),
(6103,61,'宝鸡'),
(610301,6103,'市辖区'),
(610302,6103,'渭滨区'),
(610303,6103,'金台区'),
(610321,6103,'宝鸡县'),
(610322,6103,'凤翔县'),
(610323,6103,'岐山县'),
(610324,6103,'扶风县'),
(610326,6103,'眉  县'),
(610327,6103,'陇  县'),
(610328,6103,'千阳县'),
(610329,6103,'麟游县'),
(610330,6103,'凤  县'),
(610331,6103,'太白县'),
(6104,61,'咸阳'),
(610401,6104,'市辖区'),
(610402,6104,'秦都区'),
(610403,6104,'杨陵区'),
(610404,6104,'渭城区'),
(610422,6104,'三原县'),
(610423,6104,'泾阳县'),
(610424,6104,'乾  县'),
(610425,6104,'礼泉县'),
(610426,6104,'永寿县'),
(610427,6104,'彬  县'),
(610428,6104,'长武县'),
(610429,6104,'旬邑县'),
(610430,6104,'淳化县'),
(610431,6104,'武功县'),
(610481,6104,'兴平市'),
(6105,61,'渭南'),
(610501,6105,'市辖区'),
(610502,6105,'临渭区'),
(610521,6105,'华  县'),
(610522,6105,'潼关县'),
(610523,6105,'大荔县'),
(610524,6105,'合阳县'),
(610525,6105,'澄城县'),
(610526,6105,'蒲城县'),
(610527,6105,'白水县'),
(610528,6105,'富平县'),
(610581,6105,'韩城市'),
(610582,6105,'华阴市'),
(6106,61,'延安'),
(610601,6106,'市辖区'),
(610602,6106,'宝塔区'),
(610621,6106,'延长县'),
(610622,6106,'延川县'),
(610623,6106,'子长县'),
(610624,6106,'安塞县'),
(610625,6106,'志丹县'),
(610626,6106,'吴旗县'),
(610627,6106,'甘泉县'),
(610628,6106,'富  县'),
(610629,6106,'洛川县'),
(610630,6106,'宜川县'),
(610631,6106,'黄龙县'),
(610632,6106,'黄陵县'),
(6107,61,'汉中'),
(610701,6107,'市辖区'),
(610702,6107,'汉台区'),
(610721,6107,'南郑县'),
(610722,6107,'城固县'),
(610723,6107,'洋  县'),
(610724,6107,'西乡县'),
(610725,6107,'勉  县'),
(610726,6107,'宁强县'),
(610727,6107,'略阳县'),
(610728,6107,'镇巴县'),
(610729,6107,'留坝县'),
(610730,6107,'佛坪县'),
(6108,61,'榆林'),
(610801,6108,'市辖区'),
(610802,6108,'榆阳区'),
(610821,6108,'神木县'),
(610822,6108,'府谷县'),
(610823,6108,'横山县'),
(610824,6108,'靖边县'),
(610825,6108,'定边县'),
(610826,6108,'绥德县'),
(610827,6108,'米脂县'),
(610828,6108,'佳  县'),
(610829,6108,'吴堡县'),
(610830,6108,'清涧县'),
(610831,6108,'子洲县'),
(6109,61,'安康'),
(610901,6109,'市辖区'),
(610902,6109,'汉滨区'),
(610921,6109,'汉阴县'),
(610922,6109,'石泉县'),
(610923,6109,'宁陕县'),
(610924,6109,'紫阳县'),
(610925,6109,'岚皋县'),
(610926,6109,'平利县'),
(610927,6109,'镇坪县'),
(610928,6109,'旬阳县'),
(610929,6109,'白河县'),
(6125,61,'商洛地区'),
(612501,6125,'商州市'),
(612522,6125,'洛南县'),
(612523,6125,'丹凤县'),
(612524,6125,'商南县'),
(612525,6125,'山阳县'),
(612526,6125,'镇安县'),
(612527,6125,'柞水县'),
(62,0,'甘肃'),
(6201,62,'兰州'),
(620101,6201,'市辖区'),
(620102,6201,'城关区'),
(620103,6201,'七里河区'),
(620104,6201,'西固区'),
(620105,6201,'安宁区'),
(620111,6201,'红古区'),
(620121,6201,'永登县'),
(620122,6201,'皋兰县'),
(620123,6201,'榆中县'),
(6202,62,'嘉峪关'),
(620201,6202,'市辖区'),
(6203,62,'金昌'),
(620301,6203,'市辖区'),
(620302,6203,'金川区'),
(620321,6203,'永昌县'),
(6204,62,'白银'),
(620401,6204,'市辖区'),
(620402,6204,'白银区'),
(620403,6204,'平川区'),
(620421,6204,'靖远县'),
(620422,6204,'会宁县'),
(620423,6204,'景泰县'),
(6205,62,'天水'),
(620501,6205,'市辖区'),
(620502,6205,'秦城区'),
(620503,6205,'北道区'),
(620521,6205,'清水县'),
(620522,6205,'秦安县'),
(620523,6205,'甘谷县'),
(620524,6205,'武山县'),
(620525,6205,'张家川回族自治县'),
(6221,62,'酒泉地区'),
(622101,6221,'玉门市'),
(622102,6221,'酒泉市'),
(622103,6221,'敦煌市'),
(622123,6221,'金塔县'),
(622124,6221,'肃北蒙古族自治县'),
(622125,6221,'阿克塞哈萨克族自治县'),
(622126,6221,'安西县'),
(6222,62,'张掖地区'),
(622201,6222,'张掖市'),
(622222,6222,'肃南裕固族自治县'),
(622223,6222,'民乐县'),
(622224,6222,'临泽县'),
(622225,6222,'高台县'),
(622226,6222,'山丹县'),
(6223,62,'武威地区'),
(622301,6223,'武威市'),
(622322,6223,'民勤县'),
(622323,6223,'古浪县'),
(622326,6223,'天祝藏族自治县'),
(6224,62,'定西地区'),
(622421,6224,'定西县'),
(622424,6224,'通渭县'),
(622425,6224,'陇西县'),
(622426,6224,'渭源县'),
(622427,6224,'临洮县'),
(622428,6224,'漳  县'),
(622429,6224,'岷  县'),
(6226,62,'陇南地区'),
(622621,6226,'武都县'),
(622623,6226,'宕昌县'),
(622624,6226,'成  县'),
(622625,6226,'康  县'),
(622626,6226,'文  县'),
(622627,6226,'西和县'),
(622628,6226,'礼  县'),
(622629,6226,'两当县'),
(622630,6226,'徽  县'),
(6227,62,'平凉地区'),
(622701,6227,'平凉市'),
(622722,6227,'泾川县'),
(622723,6227,'灵台县'),
(622724,6227,'崇信县'),
(622725,6227,'华亭县'),
(622726,6227,'庄浪县'),
(622727,6227,'静宁县'),
(6228,62,'庆阳地区'),
(622801,6228,'西峰市'),
(622821,6228,'庆阳县'),
(622822,6228,'环  县'),
(622823,6228,'华池县'),
(622824,6228,'合水县'),
(622825,6228,'正宁县'),
(622826,6228,'宁  县'),
(622827,6228,'镇原县'),
(6229,62,'临夏回族自治州'),
(622901,6229,'临夏市'),
(622921,6229,'临夏县'),
(622922,6229,'康乐县'),
(622923,6229,'永靖县'),
(622924,6229,'广河县'),
(622925,6229,'和政县'),
(622926,6229,'东乡族自治县'),
(622927,6229,'积石山保安族东乡族撒'),
(6230,62,'甘南藏族自治州'),
(623001,6230,'合作市'),
(623021,6230,'临潭县'),
(623022,6230,'卓尼县'),
(623023,6230,'舟曲县'),
(623024,6230,'迭部县'),
(623025,6230,'玛曲县'),
(623026,6230,'碌曲县'),
(623027,6230,'夏河县'),
(63,0,'青海'),
(6301,63,'西宁'),
(630101,6301,'市辖区'),
(630102,6301,'城东区'),
(630103,6301,'城中区'),
(630104,6301,'城西区'),
(630105,6301,'城北区'),
(630121,6301,'大通回族土族自治县'),
(630122,6301,'湟中县'),
(630123,6301,'湟源县'),
(6321,63,'海东地区'),
(632121,6321,'平安县'),
(632122,6321,'民和回族土族自治县'),
(632123,6321,'乐都县'),
(632126,6321,'互助土族自治县'),
(632127,6321,'化隆回族自治县'),
(632128,6321,'循化撒拉族自治县'),
(6322,63,'海北藏族自治州'),
(632221,6322,'门源回族自治县'),
(632222,6322,'祁连县'),
(632223,6322,'海晏县'),
(632224,6322,'刚察县'),
(6323,63,'黄南藏族自治州'),
(632321,6323,'同仁县'),
(632322,6323,'尖扎县'),
(632323,6323,'泽库县'),
(632324,6323,'河南蒙古族自治县'),
(6325,63,'海南藏族自治州'),
(632521,6325,'共和县'),
(632522,6325,'同德县'),
(632523,6325,'贵德县'),
(632524,6325,'兴海县'),
(632525,6325,'贵南县'),
(6326,63,'果洛藏族自治州'),
(632621,6326,'玛沁县'),
(632622,6326,'班玛县'),
(632623,6326,'甘德县'),
(632624,6326,'达日县'),
(632625,6326,'久治县'),
(632626,6326,'玛多县'),
(6327,63,'玉树藏族自治州'),
(632721,6327,'玉树县'),
(632722,6327,'杂多县'),
(632723,6327,'称多县'),
(632724,6327,'治多县'),
(632725,6327,'囊谦县'),
(632726,6327,'曲麻莱县'),
(6328,63,'海西蒙古族藏族自治州'),
(632801,6328,'格尔木市'),
(632802,6328,'德令哈市'),
(632821,6328,'乌兰县'),
(632822,6328,'都兰县'),
(632823,6328,'天峻县'),
(64,0,'宁夏回族自治区'),
(6401,64,'银川'),
(640101,6401,'市辖区'),
(640102,6401,'城  区'),
(640103,6401,'新城区'),
(640111,6401,'郊  区'),
(640121,6401,'永宁县'),
(640122,6401,'贺兰县'),
(6402,64,'石嘴山'),
(640201,6402,'市辖区'),
(640202,6402,'大武口区'),
(640203,6402,'石嘴山区'),
(640204,6402,'石炭井区'),
(640221,6402,'平罗县'),
(640222,6402,'陶乐县'),
(640223,6402,'惠农县'),
(6403,64,'吴忠'),
(640301,6403,'市辖区'),
(640302,6403,'利通区'),
(640321,6403,'中卫县'),
(640322,6403,'中宁县'),
(640323,6403,'盐池县'),
(640324,6403,'同心县'),
(640381,6403,'青铜峡市'),
(640382,6403,'灵武市'),
(6422,64,'固原地区'),
(642221,6422,'固原县'),
(642222,6422,'海原县'),
(642223,6422,'西吉县'),
(642224,6422,'隆德县'),
(642225,6422,'泾源县'),
(642226,6422,'彭阳县'),
(65,0,'新疆维吾尔自治区'),
(6501,65,'乌鲁木齐'),
(650101,6501,'市辖区'),
(650102,6501,'天山区'),
(650103,6501,'沙依巴克区'),
(650104,6501,'新市区'),
(650105,6501,'水磨沟区'),
(650106,6501,'头屯河区'),
(650107,6501,'南泉区'),
(650108,6501,'东山区'),
(650121,6501,'乌鲁木齐县'),
(6502,65,'克拉玛依'),
(650201,6502,'市辖区'),
(650202,6502,'独山子区'),
(650203,6502,'克拉玛依区'),
(650204,6502,'白碱滩区'),
(650205,6502,'乌尔禾区'),
(6521,65,'吐鲁番地区'),
(652101,6521,'吐鲁番市'),
(652122,6521,'鄯善县'),
(652123,6521,'托克逊县'),
(6522,65,'哈密地区'),
(652201,6522,'哈密市'),
(652222,6522,'巴里坤哈萨克自治县'),
(652223,6522,'伊吾县'),
(6523,65,'昌吉回族自治州'),
(652301,6523,'昌吉市'),
(652302,6523,'阜康市'),
(652303,6523,'米泉市'),
(652323,6523,'呼图壁县'),
(652324,6523,'玛纳斯县'),
(652325,6523,'奇台县'),
(652327,6523,'吉木萨尔县'),
(652328,6523,'木垒哈萨克自治县'),
(6527,65,'博尔塔拉蒙古自治州'),
(652701,6527,'博乐市'),
(652722,6527,'精河县'),
(652723,6527,'温泉县'),
(6528,65,'巴音郭楞蒙古自治州'),
(652801,6528,'库尔勒市'),
(652822,6528,'轮台县'),
(652823,6528,'尉犁县'),
(652824,6528,'若羌县'),
(652825,6528,'且末县'),
(652826,6528,'焉耆回族自治县'),
(652827,6528,'和静县'),
(652828,6528,'和硕县'),
(652829,6528,'博湖县'),
(6529,65,'阿克苏地区'),
(652901,6529,'阿克苏市'),
(652922,6529,'温宿县'),
(652923,6529,'库车县'),
(652924,6529,'沙雅县'),
(652925,6529,'新和县'),
(652926,6529,'拜城县'),
(652927,6529,'乌什县'),
(652928,6529,'阿瓦提县'),
(652929,6529,'柯坪县'),
(6530,65,'克孜勒苏柯尔克孜自治'),
(653001,6530,'阿图什市'),
(653022,6530,'阿克陶县'),
(653023,6530,'阿合奇县'),
(653024,6530,'乌恰县'),
(6531,65,'喀什地区'),
(653101,6531,'喀什市'),
(653121,6531,'疏附县'),
(653122,6531,'疏勒县'),
(653123,6531,'英吉沙县'),
(653124,6531,'泽普县'),
(653125,6531,'莎车县'),
(653126,6531,'叶城县'),
(653127,6531,'麦盖提县'),
(653128,6531,'岳普湖县'),
(653129,6531,'伽师县'),
(653130,6531,'巴楚县'),
(653131,6531,'塔什库尔干塔吉克自治'),
(6532,65,'和田地区'),
(653201,6532,'和田市'),
(653221,6532,'和田县'),
(653222,6532,'墨玉县'),
(653223,6532,'皮山县'),
(653224,6532,'洛浦县'),
(653225,6532,'策勒县'),
(653226,6532,'于田县'),
(653227,6532,'民丰县'),
(6540,65,'伊犁哈萨克自治州'),
(654001,6540,'奎屯市'),
(6541,65,'伊犁地区'),
(654101,6541,'伊宁市'),
(654121,6541,'伊宁县'),
(654122,6541,'察布查尔锡伯自治县'),
(654123,6541,'霍城县'),
(654124,6541,'巩留县'),
(654125,6541,'新源县'),
(654126,6541,'昭苏县'),
(654127,6541,'特克斯县'),
(654128,6541,'尼勒克县'),
(6542,65,'塔城地区'),
(654201,6542,'塔城市'),
(654202,6542,'乌苏市'),
(654221,6542,'额敏县'),
(654223,6542,'沙湾县'),
(654224,6542,'托里县'),
(654225,6542,'裕民县'),
(654226,6542,'和布克赛尔蒙古自治县'),
(6543,65,'阿勒泰地区'),
(654301,6543,'阿勒泰市'),
(654321,6543,'布尔津县'),
(654322,6543,'富蕴县'),
(654323,6543,'福海县'),
(654324,6543,'哈巴河县'),
(654325,6543,'青河县'),
(654326,6543,'吉木乃县'),
(6590,65,'省直辖行政单位'),
(659001,6590,'石河子市'),
(71,0,'台湾'),
(7101,71,'台湾市辖'),
(710101,7101,'请选择'),
(710102,7101,'市辖区'),
(710103,7101,'台湾省'),
(81,0,'香港'),
(8101,81,'香港特区'),
(810101,8101,'请选择'),
(810102,8101,'市辖区'),
(810103,8101,'香港特区'),
(91,0,'澳门'),
(9101,91,'澳门特区'),
(910101,9101,'请选择'),
(910102,9101,'市辖区'),
(910103,9101,'澳门特区');

/*Table structure for table `textevlues` */

DROP TABLE IF EXISTS `textevlues`;

CREATE TABLE `textevlues` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '标识值（主键）（唯一值）',
  `textName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `texteVlue` text COLLATE utf8_bin COMMENT '富文本编辑记录信息',
  `editTime` datetime DEFAULT NULL COMMENT '更新时间',
  `adminUserId` int(10) DEFAULT '1' COMMENT '修改人',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='条款协议记录表（texteVlues）';

/*Data for the table `textevlues` */

insert  into `textevlues`(`id`,`textName`,`texteVlue`,`editTime`,`adminUserId`,`reserve1`) values 
('1','普通会员注册协议','<img src=\"http://localhost:8080/qscMobilier_Back/admin/style/js/kindeditor/plugins/emoticons/images/11.gif\" border=\"0\" alt=\"\" /><span>注册协议</span><br />\r\n<span>【审慎阅读】您在申请注册流程中点击同意前，应当认真阅读以下协议。请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：</span><br />\r\n<span>1、与您约定免除或限制责任的条款；</span><br />\r\n<span>2、与您约定法律适用和管辖的条款；</span><br />\r\n<span>3、其他以粗体下划线标识的重要条款。</span><br />\r\n<span>如您对协议有任何疑问，可向平台客服咨询。</span><br />\r\n<span>【特别提示】当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与淘宝发生争议的，适用《7色彩平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。</span><br />\r\n<span>阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。</span>','2017-08-04 17:14:01',1,NULL),
('10','货运、安装 注册协议',NULL,'2017-03-29 11:46:11',1,''),
('11','货运服务流程','<img src=\"http://qiniuti.7secai.cn/20170804181042_633.jpg\" alt=\"\" />','2017-08-04 18:10:44',1,NULL),
('12','安装操作指南','<img src=\"http://qiniuti.7secai.cn/20170808194829_764.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194830_348.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194830_254.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194830_932.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194831_2.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194831_796.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194832_432.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194832_539.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194832_227.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194833_124.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194834_854.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194835_817.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194835_541.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194835_952.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808194836_338.jpg\" alt=\"\" />','2017-08-08 19:48:40',1,NULL),
('13','货运操作指南','<img src=\"http://qiniuti.7secai.cn/20170808195054_856.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195054_607.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195054_212.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195054_371.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195055_782.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195056_842.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195056_787.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195056_524.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195057_46.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195058_31.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195059_92.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195059_644.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195100_45.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170808195100_493.jpg\" alt=\"\" />','2017-08-08 19:51:03',1,NULL),
('14','活动规则(推荐排名)说明（抽奖）','','2017-08-10 18:00:58',1,NULL),
('15','活动规则(我的推广)说明（抽奖）','','2017-08-10 18:01:04',1,NULL),
('2','推广范本','<p style=\"text-align:center;\">\r\n	<iframe src=\"http://localhost:8080/qscMobilier_Back/admin/style/js/kindeditor/plugins/baidumap/index.html?center=106.575039%2C29.559433&amp;zoom=11&amp;width=558&amp;height=360&amp;markers=106.575039%2C29.559433&amp;markerStyles=l%2CA\" frameborder=\"0\" style=\"width:560px;height:362px;\">\r\n	</iframe>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	第三方反倒是\r\n</p>','2017-03-29 11:40:11',1,NULL),
('3','营销教材',NULL,'2017-03-29 11:34:28',1,''),
('4','公司简介','七色彩<br />\r\n<span>【审慎阅读】您在申请注册流程中点击同意前，应当认真阅读以下协议。请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：</span><br />\r\n<span>1、与您约定免除或限制责任的条款；</span><br />\r\n<span>2、与您约定法律适用和管辖的条款；</span><br />\r\n<span>3、其他以粗体下划线标识的重要条款。</span><br />\r\n<span>如您对协议有任何疑问，可向平台客服咨询。</span><br />\r\n<span>【特别提示】当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与淘宝发生争议的，适用《7色彩平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。</span><br />\r\n<span>阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。</span>','2017-08-04 18:04:45',1,NULL),
('5','安装服务协议',NULL,'2017-03-29 11:34:28',1,''),
('6','安装规范',NULL,'2017-03-29 11:34:28',1,''),
('7','安装服务流程','<img src=\"http://qiniuti.7secai.cn/20170804175939_259.jpg\" alt=\"\" />','2017-08-04 17:59:48',1,NULL),
('8','活动规则(销售额度)说明（抽奖）','<img src=\"http://qiniuti.7secai.cn/20170810175901_266.jpg\" alt=\"\" /><img src=\"http://qiniuti.7secai.cn/20170810175906_544.jpg\" alt=\"\" />','2017-08-10 17:59:49',1,NULL),
('9','企业销售、个人销售注册协议','注册协议<br />\r\n【审慎阅读】您在申请注册流程中点击同意前，应当认真阅读以下协议。请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：<br />\r\n1、与您约定免除或限制责任的条款；<br />\r\n2、与您约定法律适用和管辖的条款；<br />\r\n3、其他以粗体下划线标识的重要条款。<br />\r\n如您对协议有任何疑问，可向平台客服咨询。<br />\r\n【特别提示】当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与淘宝发生争议的，适用《7色彩平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。<br />\r\n阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。<br />','2017-08-02 14:55:00',1,NULL);

/*Table structure for table `ticket_info` */

DROP TABLE IF EXISTS `ticket_info`;

CREATE TABLE `ticket_info` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `ticketType` tinyint(4) DEFAULT '1' COMMENT '电子券类别（1：满减券 2：抵扣券）',
  `stipulation` decimal(20,2) DEFAULT '0.00' COMMENT '使用条件（最低满多少使用）',
  `compenser` decimal(20,2) DEFAULT '0.00' COMMENT '抵扣额度（如果是满减卷则要使用使用条件字段，如果是抵扣劵就直接使用）',
  `number` int(10) DEFAULT '0' COMMENT '优惠卷数量',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `fastTime` datetime DEFAULT NULL COMMENT '开始时间',
  `lastTime` datetime DEFAULT NULL COMMENT '结束时间（失效时间）',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '描述 如:(满200抵20)',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员优惠卷信息（ticket_info）';

/*Data for the table `ticket_info` */

insert  into `ticket_info`(`id`,`ticketType`,`stipulation`,`compenser`,`number`,`addTime`,`fastTime`,`lastTime`,`reserve1`,`reserve2`) values 
('02a59bfd54764ac5acb63175f2cb0e2b',1,40.00,5.00,97,'2017-08-02 15:09:53','2017-08-02 00:00:00','2017-09-02 00:00:00','满40减5',NULL),
('11',2,0.00,200.00,97,'2017-03-28 17:22:19','2017-03-07 00:00:00','2018-04-23 00:00:00','抵扣现金200元',NULL),
('22',2,0.00,100.00,97,'2017-03-28 18:09:55','2017-02-27 00:00:00','2018-06-01 00:00:00','抵扣现金100元',NULL),
('33',1,3000.00,300.00,93,'2017-03-28 17:22:00','2017-03-14 00:00:00','2018-04-30 00:00:00','满3000减300',NULL),
('7e2e44ab32da45b18e1bb033ae41de86',1,50.00,10.00,97,'2017-08-02 15:09:23','2017-08-02 00:00:00','2017-09-02 00:00:00','满50减10',NULL),
('9fe3e615cbcd4c0bb9c7c63b50e0d731',2,90.00,40.00,0,'2017-08-02 15:10:49','2017-08-02 00:00:00','2017-09-02 00:00:00','抵扣现金40元',NULL);

/*Table structure for table `user_account` */

DROP TABLE IF EXISTS `user_account`;

CREATE TABLE `user_account` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `account` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户登录账号（唯一值）（由后台生成）',
  `acc_phone` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码（可用于登录）',
  `whatOpenid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '微信openID',
  `whatUnionid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '微信unionid,/或者其他登录的ID 用于登录信息',
  `accountType` tinyint(4) DEFAULT '1' COMMENT '登录类型 1-微信登录 2-QQ 3-待定',
  `password` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '用户登陆密码--PASSWORD',
  `state` tinyint(4) DEFAULT '0' COMMENT '登录状态 0-正常 1-禁用',
  `userType` tinyint(4) DEFAULT '1' COMMENT '用户类型 1-普通会员 2-商户(企业) 3-公司内部销售人员 4-个人销售人员 5-货运师傅 6-安装工人 7、安装公司',
  `userGrade` int(10) DEFAULT '1' COMMENT '会员等级（依据等级规则来计算的）',
  `deposit` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '提现/支付密码',
  `creationTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员登录信息表';

/*Data for the table `user_account` */

insert  into `user_account`(`id`,`account`,`acc_phone`,`whatOpenid`,`whatUnionid`,`accountType`,`password`,`state`,`userType`,`userGrade`,`deposit`,`creationTime`,`reserve1`,`reserve2`) values 
('','',NULL,NULL,NULL,1,NULL,0,1,1,'',NULL,NULL,NULL),
('0429c3c755044695879a6edde9bfeb05','mx8m1vyx27',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-11 18:18:01',NULL,NULL),
('05996d6293964dc3a73b23aa6c0bb057','m9p4bq3483',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-14 15:30:07',NULL,NULL),
('059af38ce01c49f885e9730bdac2d41f','m5i6ou34o9','15198075052',NULL,NULL,3,'e10adc3949ba59abbe56e057f20f883e',0,1,1,NULL,'2017-07-04 15:47:27',NULL,NULL),
('0709fae4e98049d19515f209ac5e307b','m5qxm1u324',NULL,'oroJl0YRenA0WQb09YL0LjOgw12g',NULL,1,NULL,0,1,1,NULL,'2017-07-25 11:38:55',NULL,NULL),
('092fa3795ee6446a80e47a571ddd6ff0','n123','15198075051','','',0,'e10adc3949ba59abbe56e057f20f883e',0,3,1,'','2017-05-15 17:01:19',NULL,NULL),
('0bbd97ab2d0b4067b86a692566d562f8','m08z33y11k','17783377343','oroJl0eGF40VXq5Nv0JI4bg_bQ_Q',NULL,1,NULL,0,6,1,NULL,'2017-07-31 11:59:27',NULL,NULL),
('130efc8f53e54e5a86b71c25de1fadb1','m4u3avwm09',NULL,'oroJl0WK2AKmzZ9xoEPGJikLrbdY',NULL,1,NULL,0,1,1,NULL,'2017-07-16 16:21:41',NULL,NULL),
('154c5014943047ca9719313cd0eb2f26','m8drz44y00',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-13 11:50:42',NULL,NULL),
('16d980d7378a455aa7e4ca11ae26a9ec','m7unqe6c9w',NULL,'oroJl0brS6Be-_GXXAonk0zIvSds',NULL,1,NULL,0,1,1,NULL,'2017-08-09 11:38:03',NULL,NULL),
('1a61e9b7339f4f089ef7c3f6291698b6','mj14vgs2wz','13983428324','oroJl0YU4SvAQVIDRz2yRfUMHyH0',NULL,1,'e10adc3949ba59abbe56e057f20f883e',0,3,1,NULL,'2017-07-14 15:57:59',NULL,NULL),
('1d25004b5df24cad8f11cb8aeea4080e','n1111','15198075005','','',1,'e10adc3949ba59abbe56e057f20f883e',0,1,1,'123456','2017-04-07 16:44:00',NULL,NULL),
('25ffbe98253040788b2b0f1b95bda8f0','gs21uu1ray',NULL,'',NULL,1,NULL,0,4,1,NULL,'2017-07-27 18:40:12',NULL,NULL),
('287049ed0e6649ebaae6f9f421de472d','mic66g2n4w',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-11 17:18:25',NULL,NULL),
('2b359bdf6e144dc69c83197e3e1ccb1d','m1rh5i7x39',NULL,'oroJl0a7VB2YmIusiiue8HqKo1ho',NULL,1,NULL,0,1,1,NULL,'2017-08-05 16:30:33',NULL,NULL),
('2c5f974881b94c7c9811d25a500ec3eb','mofll4obs2',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-14 11:49:04',NULL,NULL),
('3691bc3411904cb9ae3455faafbe8ffe','mcqm559fzy',NULL,'oroJl0QrA9dgMkgJi-Hz0rjjihnA',NULL,1,NULL,0,1,1,NULL,'2017-07-18 18:40:01',NULL,NULL),
('38807ebdffa749da97d123dab998f0a0','m85ut551a9',NULL,'oroJl0ZqTRs01kdfax6VWL6WHHnM',NULL,1,NULL,0,1,1,NULL,'2017-07-20 14:23:07',NULL,NULL),
('3b378b06f5214388a70c65176e7ee490','m2o6c68zyv',NULL,'oroJl0Wf3kFWwNhVXKv-a89WwJQY',NULL,1,NULL,0,1,1,NULL,'2017-07-19 12:49:15',NULL,NULL),
('432d329833d84f59b699348e4830f809','g463wk3ueg',NULL,'',NULL,1,NULL,0,4,1,NULL,'2017-07-13 11:02:18',NULL,NULL),
('464145fc778c4229804dd2a28bbabf32','mvn057193z',NULL,'',NULL,1,'e10adc3949ba59abbe56e057f20f883e',0,1,1,NULL,'2017-07-17 10:08:02',NULL,NULL),
('4b17dbcd66ae43569892494f88d9674a','moo00o1930',NULL,'oroJl0WOeORjHFlpbPhN9h1y11iE',NULL,1,NULL,0,1,1,NULL,'2017-07-23 20:36:07',NULL,NULL),
('4b8bc4e1d5d9472d891bcc3b3fc3c99a','g3de52q113','15223102088','oroJl0RoMe1tpaAWA-8jFOEkSH5k',NULL,1,'e10adc3949ba59abbe56e057f20f883e',0,6,1,NULL,'2017-08-03 14:11:47',NULL,NULL),
('541a9e04e1734feabf074b1047c50a4e','gjv5cr041f',NULL,'oroJl0WherOpUGzxfrDliIjh4JxY',NULL,1,NULL,0,4,1,NULL,'2017-07-28 11:43:50',NULL,NULL),
('5617922e972d490fa47408069483c628','muwctum590',NULL,'oroJl0fYKWYDS-2qSaUdMwEIYT44',NULL,1,NULL,0,1,1,NULL,'2017-07-22 11:01:36',NULL,NULL),
('5ac3e68717dc45b1abb62857311e7627','m0ywpt2z9p',NULL,'oroJl0RGtgtYebb0zI2S2Pf0XvIQ',NULL,1,NULL,0,1,1,NULL,'2017-07-14 16:33:25',NULL,NULL),
('6962218c61ba41469320fb285f9f20d9','mf147wu3hx',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-14 15:07:14',NULL,NULL),
('705fe4b57eaa4e1e9016d3e95a02a678','g2ck71u23n',NULL,'',NULL,1,NULL,0,4,1,NULL,'2017-07-13 10:17:02',NULL,NULL),
('79661ec5992d4f7a865d51a05c75139b','mh97j8r8n9',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-14 15:37:39',NULL,NULL),
('7aec6c70d5b749e68c48c8dea2e9d773','mb49brivto','18223153093',NULL,NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,1,1,NULL,'2017-07-10 20:13:15',NULL,NULL),
('80f2af0b7c7a443bb63c483ea3ec2723','gmz274kzyi','13983379332','oroJl0X69UQWFzaNXJ0Km4GXWtB0',NULL,1,'e10adc3949ba59abbe56e057f20f883e',0,4,1,NULL,'2017-08-02 15:00:46',NULL,NULL),
('826ab56e50074c50969f624f0195ae51','m5z1kk515i',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-11 18:34:41',NULL,NULL),
('83b49aa2cc2b4146a198ca5f1fde87cc','mr6sa4yy2k',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-13 10:08:09',NULL,NULL),
('8bf6b1e6b534493b946ec8277621e500','mrjwh8c98r',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-11 17:09:16',NULL,NULL),
('953aac9e98824214b92d2ef9c930ed87','g6n6marb99',NULL,'oroJl0XpuUILe2sldgD6F2IwmR0Q',NULL,1,NULL,0,4,1,NULL,'2017-07-25 16:04:32',NULL,NULL),
('9fee1f0f02904904ba0a31e3a7d20d41','m7ej72r0p8',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-13 10:17:10',NULL,NULL),
('a2d243b1bb954a35b67379f1233f5f99','gxalm0119c','13627611748','oroJl0Q1npbYxr0Q9et8ZjQM4OEU',NULL,1,NULL,0,5,1,NULL,'2017-08-03 10:29:33',NULL,NULL),
('aa18e70090b64163bd74945199dcea37','mi0r6x9557',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-13 19:05:53',NULL,NULL),
('admin','admin','18982686455','',NULL,4,'e10adc3949ba59abbe56e057f20f883e',0,4,1,'e10adc3949ba59abbe56e057f20f883e','2017-03-23 17:05:28',NULL,NULL),
('admin2','n111','','','',0,'e10adc3949ba59abbe56e057f20f883e',0,4,1,'123456','2017-04-07 16:45:45',NULL,NULL),
('b026fd981e2c497294443645644e32ac','m36is8b50t',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-13 17:38:32',NULL,NULL),
('b8bac6f6cb544833ac69ed919e88e67d','m2t0gf15j1',NULL,'oroJl0dARlKeZy0q6uTCJrVSET_0',NULL,1,NULL,0,1,1,NULL,'2017-08-11 18:41:57',NULL,NULL),
('c6a6ba7c52414372a12e0f03656acd39','g5370ps062',NULL,'',NULL,1,NULL,0,4,1,NULL,'2017-07-13 11:37:03',NULL,NULL),
('d1321d8338f74eb189dac75d5b5aeae6','gr72rfg328',NULL,'oroJl0UnX1qNwbGDQCDGpwRD-OA0',NULL,1,NULL,0,4,1,NULL,'2017-08-08 18:04:32',NULL,NULL),
('d8a26cfffc7248f3b922e9812e734575','mcjzb304iv','13368466998','oroJl0ZiK75G7lLXSYpLrRRUvgzY',NULL,1,'e10adc3949ba59abbe56e057f20f883e',0,5,1,NULL,'2017-07-18 11:02:45',NULL,NULL),
('e2c90a10ec0646dfaebf66388c7f9fc6','m695xz60c7',NULL,'',NULL,1,NULL,0,1,1,NULL,'2017-07-12 09:06:54',NULL,NULL),
('e2ceda1c794f43adbcdf355356dcab05','aha4mpd24n','','','',0,'e10adc3949ba59abbe56e057f20f883e',0,3,1,NULL,'2017-07-20 15:10:49',NULL,NULL),
('e60d4259ab2a4d87868bd6cf0c965d00','na11','22222222222','','',0,'e10adc3949ba59abbe56e057f20f883e',0,6,1,'123456','2017-04-06 18:30:25',NULL,NULL),
('e60d4259ab2a4d87868bd6cf0c965d0f','na1','11111111111','','',0,'e10adc3949ba59abbe56e057f20f883e',0,5,1,'123456','2017-04-06 18:30:25',NULL,NULL),
('ea1f967878cf483987d534552b991758','m9jq69ezub',NULL,'',NULL,1,NULL,0,3,1,NULL,'2017-07-11 18:31:34',NULL,NULL),
('f2f23ec74ef34dba849e7636aa11226c','m46y079s65','17384763081','oroJl0VAVu3EyUQCy1Nixu7fnPcY',NULL,1,'e10adc3949ba59abbe56e057f20f883e',0,1,1,NULL,'2017-08-02 15:05:21',NULL,NULL);

/*Table structure for table `user_article_star` */

DROP TABLE IF EXISTS `user_article_star`;

CREATE TABLE `user_article_star` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `user` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id（user_info）',
  `article` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '文章id（article）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `article` (`article`),
  CONSTRAINT `user_article_star_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_article_star_ibfk_2` FOREIGN KEY (`article`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章收藏表';

/*Data for the table `user_article_star` */

/*Table structure for table `user_consignee_address` */

DROP TABLE IF EXISTS `user_consignee_address`;

CREATE TABLE `user_consignee_address` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '会员ID',
  `provinceId` int(11) DEFAULT NULL COMMENT '省份',
  `marcheId` int(11) DEFAULT NULL COMMENT '市',
  `districtId` int(11) DEFAULT NULL COMMENT '县',
  `adresse` varchar(250) COLLATE utf8_bin DEFAULT '' COMMENT '详细地址',
  `userName` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '姓名',
  `userPhone` varchar(15) COLLATE utf8_bin DEFAULT '' COMMENT '电话',
  `isNotTacite` tinyint(4) DEFAULT '1' COMMENT '是否默认 1-不是 2-是 同一个会员只有一个是默认值',
  `fonderTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(2) COLLATE utf8_bin DEFAULT '' COMMENT '是否删除 1-未删除 2-删除',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员收货地址';

/*Data for the table `user_consignee_address` */

insert  into `user_consignee_address`(`id`,`userId`,`provinceId`,`marcheId`,`districtId`,`adresse`,`userName`,`userPhone`,`isNotTacite`,`fonderTime`,`reserve1`,`reserve2`) values 
('0143d608c67c4ec8961ec95dff888cf4','admin',50,5002,500221,'其味无穷二·','飞哥','13983379332',1,'2017-07-14 16:02:45','2',NULL),
('036e6995608f42cc9a7bac29316f9157','e60d4259ab2a4d87868bd6cf0c965d00',13,1304,130404,'萨德撒多','阿大受打击','18982686455',2,'2017-06-24 12:36:56','1',NULL),
('0f2364ea143444f69d9771f255530bfd','e60d4259ab2a4d87868bd6cf0c965d0f',50,5001,500101,'我走了也不知道在哪里','安装师傅','15800000000',1,'2017-07-21 00:16:01','1',NULL),
('10058281f0ea4bd38b87da827b68fff0','e60d4259ab2a4d87868bd6cf0c965d0f',50,5001,500101,'我走了也不知道在哪里','安装师傅','15800000000',1,'2017-07-21 00:16:03','1',NULL),
('1682bee9b21b41329cfe8596e9a9f920','eadab53147b84b9883cb595502b5bac7',50,5002,500103,'是对的','得到的','17384664085',1,'2017-07-28 16:28:34','2',NULL),
('1aed1e81791c45079101886faa12ea9d','464145fc778c4229804dd2a28bbabf32',50,5002,500103,'猪八戒背媳妇','猪八戒','13333333333',1,'2017-07-17 18:01:30','1',NULL),
('24a165389f30483384eca1edd891537b','eadab53147b84b9883cb595502b5bac7',50,5003,500102,'是世界上','事实上','17384763081',1,'2017-07-28 14:41:23','2',NULL),
('2c162d398a3f427481a6876645bf4a35','464145fc778c4229804dd2a28bbabf32',50,5002,500103,'猪八戒背媳妇','猪八戒','13333333333',1,'2017-07-17 18:01:28','1',NULL),
('30fe558c07df4d32a72630759c201dfc','eadab53147b84b9883cb595502b5bac7',50,5002,500103,'二十岁','等等大好河山','15678689876',1,'2017-07-28 15:10:06','2',NULL),
('3a67e17b5d5446148d6fd6932178bd1d','admin',11,1101,110101,'啊实打实大师的','阿萨德修改','15198075052',1,'2017-04-12 21:03:14','2',NULL),
('4077ec0b33894891af7d6533f0a46616','2f273c1f25e648d08f62be259cc45093',50,5002,500101,'公积金','哪到的','17384763081',1,'2017-07-17 18:22:30','1',NULL),
('483d1ab5ce8d44ab9cd40a92626d9ef8','130efc8f53e54e5a86b71c25de1fadb1',50,5001,500101,'浙江省丽水市青田','慢热','13757805025',1,'2017-07-16 16:23:01','1',NULL),
('4a97d604061247e99746e98f717d7cce','admin',34,3410,341023,'asdasdasdas','礼拜','15198675056',1,'2017-04-13 11:59:33','2',NULL),
('4b8db07032cd4bfea4013976120b8335','7d0dc74cb6ac4c1ab13f27e8517c0aa7',50,5002,500101,'消防车','g g','17384763081',1,'2017-07-27 10:42:14','1',NULL),
('4ec79a10f3c04e6e92503f0487fad550','eadab53147b84b9883cb595502b5bac7',50,5002,500103,'等等','等等','17423456758',1,'2017-07-28 16:30:39','2',NULL),
('5ed94092fbfd4176883a6d0fbd5e48cc','eadab53147b84b9883cb595502b5bac7',50,5002,500101,'得到的','兄弟','17384763456',1,'2017-07-28 16:31:52','2',NULL),
('5fda27dea7044eeaaa18607b4b285100','admin',11,1101,110104,'阿斯达所多撒asdas','啊实打实','15198075053',1,'2017-04-15 03:35:12','2',NULL),
('61978e2a05fe42c18ac346073d3a98f5','admin',11,1101,110101,'萨达四大四asd','啊实打实','15198075053',1,'2017-04-13 22:58:21','2',NULL),
('6363d244084040ee95ac610ed24a47b2','admin',50,5002,500221,'撒大声地','二位若翁','18982686455',1,'2017-07-28 16:33:53','2',NULL),
('66a37736fc024bf2ac59ad96c739194b','1a61e9b7339f4f089ef7c3f6291698b6',50,5002,500102,'公司','小泽','13983428324',2,'2017-07-14 16:00:30','1',NULL),
('6a5834bebc3143abaca679a3aef77952','eadab53147b84b9883cb595502b5bac7',50,5002,500103,'是对的','得到的','17384664085',1,'2017-07-28 16:28:51','2',NULL),
('6fd713961df146e0ac584bdb7afed3b4','admin',14,1405,140522,'尼玛','礼拜','15198675056',1,'2017-06-13 16:27:53','2',NULL),
('7185a063278749eca233cfe0d4ca958a','eadab53147b84b9883cb595502b5bac7',50,5002,500101,'事实上','等等好多话','17685672356',1,'2017-07-28 16:32:33','2',NULL),
('7cbbebbefade4d0586b2e50f1233368b','admin',14,1402,140211,'的的双丰收','礼拜','15198675056',1,'2017-06-21 14:58:58','2',NULL),
('906c50cdc8ee4f7cb39c88885374b473','464145fc778c4229804dd2a28bbabf32',50,5001,500105,'还是宿舍','就睡觉','13012396946',2,'2017-07-17 10:08:57','1',NULL),
('9637a5dd4a264fe4bbf87d81eb2116d9','2f273c1f25e648d08f62be259cc45093',50,5002,500103,'来咯哦','很好看','17384763081',2,'2017-07-20 15:55:50','1',NULL),
('9ceb518b2a5448e38c9bf06996869743','admin',12,1201,120101,'asdfsasf','asdas','15198075058',1,'2017-04-12 22:00:15','2',NULL),
('a33e2077b95641f08e7a5c30f920be70','eadab53147b84b9883cb595502b5bac7',50,5002,500103,'是对的','得到的','17384664085',1,'2017-07-28 16:29:24','2',NULL),
('a4989cd737734efaa2dd8d88c8edf345','092fa3795ee6446a80e47a571ddd6ff0',13,1302,130202,'少时诵诗书所','打算','15198075051',1,'2017-05-25 15:05:10','1',NULL),
('a5ce25e1fefa43a19187dc07e8bd572c','admin',14,1406,140621,'阿萨德撒多','小易','18982686455',1,'2017-06-13 15:31:25','2',NULL),
('acc6eee2fdbd41f0a7679f38980e697a','eadab53147b84b9883cb595502b5bac7',50,5002,500103,'是对的','得到的','17384664085',1,'2017-07-28 16:28:37','2',NULL),
('ad55959b3eee46bf9953ab24bb5f9927','d8a26cfffc7248f3b922e9812e734575',50,5001,500105,'富洲新城','梁远江','13368466998',2,'2017-07-18 11:04:52','1',NULL),
('ba5a9f2d9f2d437e848fe6c3bfcd0530','admin',12,1202,120221,'阿斯达所大所大所','哈哈哈哈哈','15198075052',1,'2017-04-14 15:08:17','2',NULL),
('bc23b3d6806042109d4ef76ede99a06b','2f273c1f25e648d08f62be259cc45093',50,5001,500101,'来来咯','来咯','18982686455',1,'2017-07-15 14:17:26','2',NULL),
('bc2618f68e954e3fafb0a80ccbf2c79f','092fa3795ee6446a80e47a571ddd6ff0',11,1101,110101,'少时诵诗书所','打算','15198075051',2,'2017-05-25 15:03:52','1',NULL),
('c33f7554c3c44619a51e2beed4bf84d9','admin',50,5003,500383,'撒大大','的冯绍峰','18982686455',2,'2017-07-28 16:35:52','1',NULL),
('c3da15350c914e62b4d6008e21b3a098','ea1f967878cf483987d534552b991758',50,5002,500104,'测的纪录片','来咯噢','17384763081',2,'2017-07-13 09:40:01','1',NULL),
('c46e640b47824eb1be98328eee39db45','eadab53147b84b9883cb595502b5bac7',50,5002,500103,'hshshw','等等','17384763081',1,'2017-07-28 14:45:27','2',NULL),
('c8af4e0237774c4d848711ae476caff3','admin',15,1504,150403,'asdsad','asdsad','18982686455',1,'2017-06-13 15:29:36','2',NULL),
('ca2e05c2273d47ee80631b0d19e7c9bf','eadab53147b84b9883cb595502b5bac7',50,5002,500101,'得到的','仿佛个','13256763478',2,'2017-07-28 16:37:13','1',NULL),
('da57fdbb316e44419f67b3b266c12a15','admin',13,1302,130202,'阿斯达所大所大所','11111','15198075052',1,'2017-04-14 01:10:16','2',NULL),
('dda0ee5676ec4c51985aca08e6e5acd3','464145fc778c4229804dd2a28bbabf32',50,5001,500105,'还是宿舍','就睡觉','13012396946',1,'2017-07-17 10:08:55','2',NULL),
('e36b7baff15345359720b18c26209e1e','2f273c1f25e648d08f62be259cc45093',50,5001,500101,'来来咯','来咯','18982686455',1,'2017-07-15 14:17:25','1',NULL),
('e62c10eb630b42dd9f5d55b37332fb05','9ce11c59034d41858002437056cf22aa',50,5001,500105,'辅助我','飞哥','13983379332',2,'2017-07-14 16:14:59','1',NULL),
('ed9668b380a94b578c78ef95e4df4d7b','eadab53147b84b9883cb595502b5bac7',50,5002,500103,'是对的','得到的','17384664085',1,'2017-07-28 16:28:43','2',NULL),
('f45fe14ffe704b10904fd8b6e07b25a1','admin',11,1101,110101,'尼玛','礼拜','15198675056',1,'2017-06-21 10:28:59','2',NULL),
('f835bb0cf29d441b876e36480eca5a9c','f2f23ec74ef34dba849e7636aa11226c',50,5002,500105,'退换货','钟国','17384763081',2,'2017-08-02 15:43:41','1',NULL),
('faca728931f44ce9b6ff3b8be95cde6e','130efc8f53e54e5a86b71c25de1fadb1',50,5001,500101,'浙江省丽水市青田','慢热','13757805025',2,'2017-07-16 16:23:04','1',NULL),
('fc483338b0a44ddeb52c8041916a9e6d','092fa3795ee6446a80e47a571ddd6ff0',13,1302,130202,'少时诵诗书所修改了啊','打算','15198075051',1,'2017-05-25 15:05:52','1',NULL),
('fe4fa59ea6d946f88f7a0ffbb7afd987','0b2043c2512144b1886d22730dac52a0',50,5001,-1,'沙坪坝生米大桥','飞哥','13983379332',2,'2017-07-14 17:05:52','1',NULL);

/*Table structure for table `user_finance` */

DROP TABLE IF EXISTS `user_finance`;

CREATE TABLE `user_finance` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）和登录ID一样',
  `accuntBalance` decimal(20,2) DEFAULT '0.00' COMMENT '账户余额（只有企业，销售员才会有余额）',
  `resterPuntos` bigint(20) DEFAULT '0' COMMENT '剩余积分',
  `experience` bigint(20) DEFAULT '0' COMMENT '经验值',
  `totalConsommation` decimal(20,2) DEFAULT '0.00' COMMENT '累计消费（金额）',
  `totalPuntos` bigint(20) DEFAULT '0' COMMENT '累计积分',
  `totalVendre` decimal(20,2) DEFAULT '0.00' COMMENT '累计销售额度（只有销售人员，企业，个人才会用到此字段）',
  `innoverTime` datetime DEFAULT NULL COMMENT '更新时间',
  `concurrence` bigint(20) DEFAULT '0' COMMENT '并发性',
  `salesProportion` decimal(10,3) DEFAULT '0.000' COMMENT '公司对下级的销售比例（只有公司销售才有的数据信息）',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '预留1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员财务信息';

/*Data for the table `user_finance` */

insert  into `user_finance`(`id`,`accuntBalance`,`resterPuntos`,`experience`,`totalConsommation`,`totalPuntos`,`totalVendre`,`innoverTime`,`concurrence`,`salesProportion`,`reserve1`,`reserve2`) values 
('0429c3c755044695879a6edde9bfeb05',0.00,0,0,0.00,0,0.00,'2017-07-11 18:18:01',1,0.000,NULL,NULL),
('05996d6293964dc3a73b23aa6c0bb057',0.00,0,0,0.00,0,0.00,'2017-07-14 15:30:07',1,0.000,NULL,NULL),
('059af38ce01c49f885e9730bdac2d41f',0.00,0,0,0.00,0,0.00,'2017-07-04 15:47:27',1,0.000,NULL,NULL),
('0709fae4e98049d19515f209ac5e307b',0.00,0,0,0.00,0,0.00,'2017-07-25 11:38:55',1,0.000,NULL,NULL),
('092fa3795ee6446a80e47a571ddd6ff0',0.00,950,0,1.00,200,56.00,'2017-05-15 17:01:19',1,0.000,NULL,NULL),
('0b2043c2512144b1886d22730dac52a0',0.00,0,0,0.00,0,0.00,'2017-07-04 14:20:37',1,0.000,NULL,NULL),
('0bbd97ab2d0b4067b86a692566d562f8',0.00,0,0,0.00,0,0.00,'2017-07-31 11:59:27',1,0.000,NULL,NULL),
('107e509838074a07b783251de9d7bb1b',0.00,0,0,0.00,0,0.00,'2017-07-14 15:53:35',1,0.000,NULL,NULL),
('10dc4599f55d4d5faffdb1e47393d48d',0.00,0,0,0.00,0,0.00,'2017-07-28 09:55:45',1,0.000,NULL,NULL),
('130efc8f53e54e5a86b71c25de1fadb1',0.00,0,0,0.00,0,0.00,'2017-07-16 16:21:41',1,0.000,NULL,NULL),
('154c5014943047ca9719313cd0eb2f26',0.00,0,0,0.00,0,0.00,'2017-07-13 11:50:42',1,0.000,NULL,NULL),
('16d980d7378a455aa7e4ca11ae26a9ec',0.00,0,0,0.00,0,0.00,'2017-08-09 11:38:03',1,0.000,NULL,NULL),
('1a61e9b7339f4f089ef7c3f6291698b6',0.00,0,0,0.00,0,0.00,'2017-07-14 15:57:59',1,0.000,NULL,NULL),
('1d25004b5df24cad8f11cb8aeea4080e',0.00,0,0,1.00,0,89.00,'2017-04-07 16:44:00',1,0.000,NULL,NULL),
('25ffbe98253040788b2b0f1b95bda8f0',0.00,0,0,0.00,0,0.00,'2017-07-27 18:40:12',1,0.000,NULL,NULL),
('26b64219c06a44dfa0ac3033f8d735e1',0.00,0,0,0.00,0,0.00,'2017-07-13 11:41:35',1,0.000,NULL,NULL),
('287049ed0e6649ebaae6f9f421de472d',0.00,0,0,0.00,0,0.00,'2017-07-11 17:18:25',1,0.000,NULL,NULL),
('2b359bdf6e144dc69c83197e3e1ccb1d',0.00,0,0,0.00,0,0.00,'2017-08-05 16:30:33',1,0.000,NULL,NULL),
('2c5f974881b94c7c9811d25a500ec3eb',0.00,0,0,0.00,0,0.00,'2017-07-14 11:49:04',1,0.000,NULL,NULL),
('2f273c1f25e648d08f62be259cc45093',0.00,0,0,0.06,0,0.00,'2017-07-18 09:36:36',1,0.000,NULL,NULL),
('344550cf1c3a43d59f62f18f28845098',0.00,0,0,0.00,0,0.00,'2017-07-20 11:26:38',1,0.000,NULL,NULL),
('3691bc3411904cb9ae3455faafbe8ffe',0.00,0,0,0.00,0,0.00,'2017-07-18 18:40:01',1,0.000,NULL,NULL),
('38807ebdffa749da97d123dab998f0a0',0.00,0,0,0.00,0,0.00,'2017-07-20 14:23:07',1,0.000,NULL,NULL),
('3b378b06f5214388a70c65176e7ee490',0.00,0,0,0.00,0,0.00,'2017-07-19 12:49:15',1,0.000,NULL,NULL),
('3e5ad18b94e143d0bb64307bcd69da8b',0.00,0,0,0.00,0,0.00,'2017-07-20 11:20:34',1,0.000,NULL,NULL),
('432d329833d84f59b699348e4830f809',0.00,0,0,0.00,0,0.00,'2017-07-13 11:02:18',1,0.000,NULL,NULL),
('464145fc778c4229804dd2a28bbabf32',0.00,0,0,0.10,0,0.00,'2017-07-17 17:55:00',1,0.000,NULL,NULL),
('4b17dbcd66ae43569892494f88d9674a',0.00,0,0,0.00,0,0.00,'2017-07-23 20:36:07',1,0.000,NULL,NULL),
('4b48defd64f54978809a4c8039c8e764',0.00,90,0,1.00,0,75.00,'2017-04-07 16:45:45',1,0.000,NULL,NULL),
('4b8bc4e1d5d9472d891bcc3b3fc3c99a',0.00,0,0,0.00,0,0.00,'2017-08-03 14:11:47',1,0.000,NULL,NULL),
('4bcaffc9fcae4c0ca4e627220a281d9b',0.00,0,0,0.00,0,0.00,'2017-07-13 17:02:57',1,0.000,NULL,NULL),
('541a9e04e1734feabf074b1047c50a4e',0.00,0,0,0.00,0,0.00,'2017-07-28 11:43:50',1,0.000,NULL,NULL),
('5617922e972d490fa47408069483c628',0.00,0,0,0.00,0,0.00,'2017-07-22 11:01:36',1,0.000,NULL,NULL),
('5ac3e68717dc45b1abb62857311e7627',0.00,0,0,0.00,0,0.00,'2017-07-14 16:33:25',1,0.000,NULL,NULL),
('5d522068cf3547aabaa1a3004fd040f0',0.00,0,0,0.00,0,0.00,'2017-07-08 17:28:38',1,0.000,NULL,NULL),
('676c5192d12444aa9d3a48f1e6358864',0.00,0,0,0.00,0,0.00,'2017-07-28 09:38:16',1,0.000,NULL,NULL),
('6962218c61ba41469320fb285f9f20d9',0.00,0,0,0.00,0,0.00,'2017-07-14 15:07:14',1,0.000,NULL,NULL),
('705fe4b57eaa4e1e9016d3e95a02a678',0.00,0,0,0.00,0,0.00,'2017-07-13 10:17:02',1,0.000,NULL,NULL),
('79661ec5992d4f7a865d51a05c75139b',0.00,0,0,0.00,0,0.00,'2017-07-14 15:37:39',1,0.000,NULL,NULL),
('7aec6c70d5b749e68c48c8dea2e9d773',0.00,0,0,0.00,0,0.00,'2017-07-10 20:13:15',1,0.000,NULL,NULL),
('7d0dc74cb6ac4c1ab13f27e8517c0aa7',0.00,0,0,0.00,0,0.00,'2017-07-25 17:06:32',1,0.000,NULL,NULL),
('80f2af0b7c7a443bb63c483ea3ec2723',0.00,0,0,0.00,0,0.00,'2017-08-02 15:00:46',1,0.000,NULL,NULL),
('826ab56e50074c50969f624f0195ae51',0.00,0,0,0.00,0,0.00,'2017-07-11 18:34:41',1,0.000,NULL,NULL),
('83b49aa2cc2b4146a198ca5f1fde87cc',0.00,0,0,0.00,0,0.00,'2017-07-13 10:08:09',1,0.000,NULL,NULL),
('8bf6b1e6b534493b946ec8277621e500',0.00,0,0,0.00,0,0.00,'2017-07-11 17:09:16',1,0.000,NULL,NULL),
('953aac9e98824214b92d2ef9c930ed87',0.00,0,0,0.00,0,0.00,'2017-07-25 16:04:32',1,0.000,NULL,NULL),
('990e0c15df2d422895e8e569e3956036',0.00,0,0,0.00,0,0.00,'2017-07-26 10:48:00',1,0.000,NULL,NULL),
('9c4e5efe754948f1a9f0bf71ce20bc29',0.00,0,0,0.00,0,0.00,'2017-07-03 19:17:00',1,0.000,NULL,NULL),
('9ce11c59034d41858002437056cf22aa',0.00,0,0,0.01,0,0.00,'2017-07-18 11:13:37',1,0.000,NULL,NULL),
('9fee1f0f02904904ba0a31e3a7d20d41',0.00,0,0,0.00,0,0.00,'2017-07-13 10:17:10',1,0.000,NULL,NULL),
('a2d243b1bb954a35b67379f1233f5f99',0.00,0,0,0.00,0,0.00,'2017-08-03 10:29:33',1,0.000,NULL,NULL),
('a3335c9fb3f34e75b6df5c347e79293f',0.00,0,0,0.00,0,0.00,'2017-07-28 10:39:28',1,0.000,NULL,NULL),
('a4e1e4275f2e42caadf020d887a3fdaf',0.00,0,0,0.00,0,0.00,'2017-06-30 19:36:55',1,0.000,NULL,NULL),
('aa18e70090b64163bd74945199dcea37',0.00,0,0,0.00,0,0.00,'2017-07-13 19:05:53',1,0.000,NULL,NULL),
('admin',0.01,0,0,2.00,0,0.00,'2017-03-23 17:06:31',0,0.000,'',''),
('b026fd981e2c497294443645644e32ac',0.00,0,0,0.00,0,0.00,'2017-07-13 17:38:32',1,0.000,NULL,NULL),
('b046b99f08c247008e75669b9eeb1fc4',0.00,0,0,0.00,0,0.00,'2017-06-23 13:39:34',1,0.000,NULL,NULL),
('b8bac6f6cb544833ac69ed919e88e67d',0.00,0,0,0.00,0,0.00,'2017-08-11 18:41:57',1,0.000,NULL,NULL),
('c353ad63846944b184ec46cd7dabd6ac',0.00,0,0,0.00,0,0.00,'2017-06-30 15:26:20',1,0.000,NULL,NULL),
('c6a6ba7c52414372a12e0f03656acd39',0.00,0,0,0.00,0,0.00,'2017-07-13 11:37:03',1,0.000,NULL,NULL),
('c72a3dc193ee4a7d95c1c81ed67f0d84',0.00,0,0,0.00,0,0.00,'2017-06-19 16:32:05',1,0.000,NULL,NULL),
('ca88c38c1af44113be3e0cc5f40cabb4',0.00,0,0,0.00,0,0.00,'2017-07-28 09:19:25',1,0.000,NULL,NULL),
('cb80a9132f6a4e1992a254a59d2116ce',0.00,0,0,0.00,0,0.00,'2017-08-02 14:58:15',1,0.000,NULL,NULL),
('d1321d8338f74eb189dac75d5b5aeae6',0.00,0,0,0.00,0,0.00,'2017-08-08 18:04:32',1,0.000,NULL,NULL),
('d4f3215f2a7a41f3836e268cdd967525',0.00,0,0,0.00,0,0.00,'2017-07-20 10:05:51',1,0.000,NULL,NULL),
('d8a26cfffc7248f3b922e9812e734575',0.00,0,0,0.01,0,0.00,'2017-07-18 11:05:18',1,0.000,NULL,NULL),
('dd6a873ac4614e33a1eb34f4ad964332',0.00,0,0,0.00,0,0.00,'2017-06-19 16:18:29',1,0.000,NULL,NULL),
('e2c90a10ec0646dfaebf66388c7f9fc6',0.00,0,0,0.00,0,0.00,'2017-07-12 09:06:54',1,0.000,NULL,NULL),
('e2ceda1c794f43adbcdf355356dcab05',0.00,0,0,0.00,0,0.00,'2017-07-20 15:10:49',1,0.000,NULL,NULL),
('e47cc548fa3b4faf9d01038b3cff842a',0.00,0,0,0.00,0,0.00,'2017-06-23 13:53:39',1,0.000,NULL,NULL),
('e60d4259ab2a4d87868bd6cf0c965d00',0.00,0,0,1.00,0,42.00,'2017-04-06 18:30:25',1,0.000,NULL,NULL),
('e60d4259ab2a4d87868bd6cf0c965d0f',0.00,0,0,1.00,0,42.00,'2017-04-06 18:30:25',1,0.000,NULL,NULL),
('ea1f967878cf483987d534552b991758',0.00,0,0,0.00,0,0.00,'2017-07-11 18:31:34',1,0.000,NULL,NULL),
('eadab53147b84b9883cb595502b5bac7',0.00,0,0,0.00,0,0.00,'2017-07-28 12:01:28',1,0.000,NULL,NULL),
('f24cb9cef28949f0989e40c53140f2c4',0.00,0,0,0.00,0,0.00,'2017-07-20 11:16:38',1,0.000,NULL,NULL),
('f2f23ec74ef34dba849e7636aa11226c',0.00,0,0,0.00,0,0.00,'2017-08-02 15:05:21',1,0.000,NULL,NULL);

/*Table structure for table `user_finance_flowing` */

DROP TABLE IF EXISTS `user_finance_flowing`;

CREATE TABLE `user_finance_flowing` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '会员ID',
  `sommeCours` decimal(20,2) DEFAULT '0.00' COMMENT '用户金额 单位为元',
  `traficType` tinyint(4) DEFAULT '1' COMMENT '1-现金；2-积分;',
  `descriptif` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '流水描述',
  `sommeType` tinyint(4) DEFAULT '1' COMMENT '1-可用; 2- 不可用',
  `sommePoids` tinyint(4) DEFAULT '1' COMMENT '金额增减 1-增加；2-减少',
  `chosesId` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '如果是 家具商品 把家具商品规格ID填入此项中，',
  `waterType` tinyint(4) DEFAULT '1' COMMENT '流水状态类型 1-提现  2-派单结算 3-微信转账 4-购买商品 5-退款 6-购买积分商品 7-其他 8-商品结算',
  `isNotDelete` tinyint(4) DEFAULT '1' COMMENT '是否删除 1-未删除 2-已删除',
  `recordTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员流水信息（user_finance_flowing）';

/*Data for the table `user_finance_flowing` */

insert  into `user_finance_flowing`(`id`,`userId`,`sommeCours`,`traficType`,`descriptif`,`sommeType`,`sommePoids`,`chosesId`,`waterType`,`isNotDelete`,`recordTime`,`reserve1`,`reserve2`) values 
('129b3da42fe04fabb52b8ca5f172f1a3','9ce11c59034d41858002437056cf22aa',0.01,1,'订单支付：0.01',2,2,'6fff83f230914993aaba891fb5617253',4,1,'2017-07-18 11:13:37',NULL,NULL),
('19359480049b4c1282105793b832196c','d8a26cfffc7248f3b922e9812e734575',0.01,1,'订单支付：0.01',2,2,'30c89da1cba84e3ab5950cb7ac419fb9',4,1,'2017-07-18 11:05:18',NULL,NULL);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）和登录表ID一致',
  `wchatId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用于用户推广作用直接注册信息',
  `referrer_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '有推荐人则填，没有就不填',
  `infoName` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '昵称',
  `email` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '邮箱',
  `user_image` varchar(250) COLLATE utf8_bin DEFAULT '' COMMENT '用户头像',
  `sex` tinyint(4) DEFAULT '0' COMMENT '性别 0-保密 1-男 2-女',
  `age` int(4) DEFAULT '0' COMMENT '年龄 int',
  `identityNumber` varchar(25) COLLATE utf8_bin DEFAULT '' COMMENT '身份证号码',
  `business` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '营业执照',
  `legalPerson` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '法人姓名',
  `businessImage` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '营业执照图片',
  `realName` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人姓名/真实姓名',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `registrationNumber` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '注册号',
  `professional` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '从事行业',
  `auditType` tinyint(4) DEFAULT '1' COMMENT '审核状态 1-待完善 2-待审核 3-审核成功 4-审核失败',
  `toPromote` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '推广链接二维码图片地址（用于普通会员 推广作用）',
  `certificatesImage` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '三证照片 - 取消该字段',
  `site` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '家庭地址',
  `creationTime` datetime DEFAULT NULL COMMENT '创建时间/推广二维码 过期时间',
  `amendTime` datetime DEFAULT NULL COMMENT '修改时间',
  `erWeiMa` varchar(250) COLLATE utf8_bin DEFAULT '' COMMENT '二维码图片地址（用于销售企业，推广作用）',
  `idCardImage` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证复印件图片',
  `licensePlate` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '（货运）车牌号',
  `vehicleLicense` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '（货运）行驶证((复制/扫描/拍照)',
  `vehicleImage` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '（货运）车辆照片(复制/扫描/拍照)',
  `vehicleType` tinyint(4) DEFAULT '1' COMMENT '（货运）车辆类型:1-面包/2-小型厢货/3-大型厢货',
  `vehicleThreeHigh` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '（货运）长宽高',
  `vehicleHigh` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '（货运）载重',
  `companyName` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '（安装公司）公司名称',
  `companyImage` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '（安装公司）公司营业执照',
  `companyLianxi` varchar(220) COLLATE utf8_bin DEFAULT NULL COMMENT '（安装公司）公司联系人',
  `companyPhone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '（安装公司）联系人电话',
  `reserve1` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '驾驶证(复制/扫描/拍照)',
  `reserve2` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '推广 链接二维码图片地址（用于个人销售 推广作用）',
  `failedReason` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '审核失败原因',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wchatId` (`wchatId`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员信息表';

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`wchatId`,`referrer_id`,`infoName`,`email`,`user_image`,`sex`,`age`,`identityNumber`,`business`,`legalPerson`,`businessImage`,`realName`,`phone`,`registrationNumber`,`professional`,`auditType`,`toPromote`,`certificatesImage`,`site`,`creationTime`,`amendTime`,`erWeiMa`,`idCardImage`,`licensePlate`,`vehicleLicense`,`vehicleImage`,`vehicleType`,`vehicleThreeHigh`,`vehicleHigh`,`companyName`,`companyImage`,`companyLianxi`,`companyPhone`,`reserve1`,`reserve2`,`failedReason`) values 
('0429c3c755044695879a6edde9bfeb05',16,NULL,'mx8m1vyx27',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-11 18:18:01',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('05996d6293964dc3a73b23aa6c0bb057',33,NULL,'m9p4bq3483',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-14 15:30:07',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('059af38ce01c49f885e9730bdac2d41f',11,NULL,'m15198075052',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02iTY7EkK2dBh1C3zexp1K',NULL,NULL,'2017-02-01 00:00:00','2017-07-04 15:47:27',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('0709fae4e98049d19515f209ac5e307b',52,NULL,'娟小懒',NULL,'http://wx.qlogo.cn/mmopen/IrLaicqJuHU5icHibexSaobjsqPrSLOyq8qnrIu1F4abPRCkhicZI7NHcDdgCJmFk2ESTTwxsfA3yRMSQ4HJCrvW0L0bHuEFV5ra/0',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-07-25 11:38:55','2017-07-25 11:38:55',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('092fa3795ee6446a80e47a571ddd6ff0',1,NULL,'TCLAK','qq397482943@126.com','http://omumzem73.bkt.clouddn.com/93851491531138152.jpg',1,18,'5002626262626262626',NULL,NULL,NULL,'张三','13184848481',NULL,NULL,4,'http://weixin.qq.com/q/02kTooEiK2dBh1y2Wuhp12',NULL,NULL,'2017-07-25 10:31:31','2017-05-15 17:01:19','http://weixin.qq.com/q/02vvSeEFK2dBh1y3WuNp1M','http://omumzem73.bkt.clouddn.com/93851491531138152.jpg','HK5835','http://omumzem73.bkt.clouddn.com/93851491531138152.jpg','http://omumzem73.bkt.clouddn.com/93851491531138152.jpg',1,'50*50*50','1000t',NULL,NULL,NULL,NULL,'http://omumzem73.bkt.clouddn.com/93851491531138152.jpg','http://weixin.qq.com/q/02Q8stF_K2dBh1y3Wuhp1I','访问分润万'),
('0b2043c2512144b1886d22730dac52a0',10,NULL,'向伦飞','djcndj@qq.com','/Public/img/person/tx.png',1,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02AxdYEQK2dBh1zI7k1p1Y',NULL,NULL,'2017-02-01 00:00:00','2017-07-04 14:20:37',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('0bbd97ab2d0b4067b86a692566d562f8',63,'9ce11c59034d41858002437056cf22aa','九月校长～九月惠',NULL,'http://wx.qlogo.cn/mmopen/AeB9F3drhjHILTeGNqrXgmXo58meJNibUGnjS9siavysAbicoPPkkzRNiaDGM8jAdm04CgNbib40ibMXdnMwYl3v1xOm9sqfXD531S/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-07-31 11:59:27','2017-07-31 11:59:27',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('107e509838074a07b783251de9d7bb1b',35,NULL,'m56741ddyp',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-14 15:53:35',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('130efc8f53e54e5a86b71c25de1fadb1',39,NULL,'慢热',NULL,'http://wx.qlogo.cn/mmhead/cGNScwnYvk74lwhJGhlKenygh0nrJpiaH9iaWGura6eswJo5zxwIHE9Q/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-16 16:21:41',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('154c5014943047ca9719313cd0eb2f26',26,NULL,'m8drz44y00',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02u3bXFUK2dBh1LKzehp15',NULL,NULL,'2017-02-01 00:00:00','2017-07-13 11:50:42',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('16d980d7378a455aa7e4ca11ae26a9ec',72,NULL,'黄某人、',NULL,'http://wx.qlogo.cn/mmopen/AeB9F3drhjGM3Fddvc6pXicNG55lo0pfmicEtlL3OpO1ib4vS9tRtuaFt0ic8icDd4tSp2rSfNYQgLhh3XZJO0kqDFZuVQwddUvee/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-08-09 11:38:03','2017-08-09 11:38:03',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1a61e9b7339f4f089ef7c3f6291698b6',36,NULL,'李光泽','987615871@qq.com','/Public/img/person/tx.png',1,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02vK0OEeK2dBh1xC5Fhp1_',NULL,NULL,'2017-08-02 14:59:50','2017-07-14 15:57:59','http://weixin.qq.com/q/02kynlEoK2dBh1xC5FNp1p',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://weixin.qq.com/q/02kDjmFIK2dBh1xC5F1p1M',NULL),
('1d25004b5df24cad8f11cb8aeea4080e',2,'092fa3795ee6446a80e47a571ddd6ff0','啊啊啊',NULL,'http://omumzem73.bkt.clouddn.com/93851491531138152.jpg',0,0,NULL,NULL,NULL,NULL,'向峰','15198075052',NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-04-07 16:44:00',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('25ffbe98253040788b2b0f1b95bda8f0',56,'admin','帅得想砍头',NULL,'http://wx.qlogo.cn/mmopen/AeB9F3drhjGwiccmVIotPvibMrqUQ5sddsictk11s1FpqjXYJGk46ic5rKibnxAP2SxB7Tajf65dbY36UI2H9QWKgGvY2zC0s9u0w/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-07-27 18:40:12','2017-07-27 18:40:12',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('26b64219c06a44dfa0ac3033f8d735e1',25,NULL,'m545sr07s2',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-13 11:41:35',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('287049ed0e6649ebaae6f9f421de472d',15,NULL,'mic66g2n4w',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-11 17:18:25',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2b359bdf6e144dc69c83197e3e1ccb1d',70,NULL,'孩子王',NULL,'http://wx.qlogo.cn/mmopen/IrLaicqJuHU7MibQuR865mDYeFUdhUMlqQM8RFUrYepysPOwzX8JuGOxpD8v36xqKCN1gyJrhJUq3gI1Q7RviaJ1YyKdh9QbJ4w/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-08-05 16:30:33','2017-08-05 16:30:33',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2c5f974881b94c7c9811d25a500ec3eb',30,NULL,'mofll4obs2',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-14 11:49:04',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3691bc3411904cb9ae3455faafbe8ffe',42,NULL,'左岸',NULL,'http://wx.qlogo.cn/mmhead/lpHDr05YrIQ3zQlB6B9PpqfQnm2WGV3GDPR8SDjxClCZTic7JSC7XdQ/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-18 18:40:01',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('38807ebdffa749da97d123dab998f0a0',48,'0b2043c2512144b1886d22730dac52a0','m85ut551a9',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-20 14:23:07',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3b378b06f5214388a70c65176e7ee490',43,NULL,' 张洪',NULL,'http://wx.qlogo.cn/mmhead/ShlHS1yhKiceWsZGK2ps3tLFIEkPiaPX7R6kzh9xa9ib3w/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-19 12:49:15',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('432d329833d84f59b699348e4830f809',23,'admin','g463wk3ueg',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-13 11:02:18',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('464145fc778c4229804dd2a28bbabf32',40,NULL,'帅得想砍头',NULL,'http://wx.qlogo.cn/mmhead/PiajxSqBRaEKspzJe4VRqA9QtTcV2tByqjhsKuDSoL6UwlxqxNscfNg/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-17 10:08:03',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4b17dbcd66ae43569892494f88d9674a',51,'9ce11c59034d41858002437056cf22aa','moo00o1930',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02U-7PEEK2dBh1y-Bs1p1v',NULL,NULL,'2017-02-01 00:00:00','2017-07-23 20:36:07',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4b48defd64f54978809a4c8039c8e764',3,'admin','啊啊',NULL,'http://omumzem73.bkt.clouddn.com/93851491531138152.jpg',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-04-07 16:45:45',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4b8bc4e1d5d9472d891bcc3b3fc3c99a',69,'80f2af0b7c7a443bb63c483ea3ec2723','九月惠',NULL,'http://wx.qlogo.cn/mmopen/UhNeaDXOa11lR9lW21QrYDJeEayG9xSHTIX9gpj9aygYmwk4g5DicFCyqibf6J9pBo6jpfqsmibcoSYLIeWKAb97nJ2cPCFyyYB/0',2,0,'51168119920811001x',NULL,NULL,NULL,'九月惠','15223102088',NULL,NULL,3,'http://weixin.qq.com/q/0298eAFgK2dBh1wcsNhp1X',NULL,NULL,'2017-08-08 18:14:36','2017-08-03 14:11:47',NULL,'http://qiniuti.7secai.cn/FsOfMXuAiHJjIZVGT9Cc0li-aW_w',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'模压'),
('4bcaffc9fcae4c0ca4e627220a281d9b',27,'admin','飞哥','ddjxnn@qq.com','http://qiniuti.7secai.cn/lnaPBmWb7VhUsZ3L3zA1rNuIAX75',1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-13 17:02:57',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('541a9e04e1734feabf074b1047c50a4e',61,'admin','帅得想砍头',NULL,'http://wx.qlogo.cn/mmopen/AeB9F3drhjGwiccmVIotPvibMrqUQ5sddsictk11s1FpqjXYJGk46ic5rKibnxAP2SxB7Tajf65dbY36UI2H9QWKgGvY2zC0s9u0w/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-07-28 11:43:50','2017-07-28 11:43:50',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5617922e972d490fa47408069483c628',50,'e2ceda1c794f43adbcdf355356dcab05','muwctum590',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-22 11:01:36',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5ac3e68717dc45b1abb62857311e7627',37,NULL,'m0ywpt2z9p',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-14 16:33:25',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('6962218c61ba41469320fb285f9f20d9',31,NULL,'mf147wu3hx',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-14 15:07:14',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('705fe4b57eaa4e1e9016d3e95a02a678',21,'admin','g2ck71u23n',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-13 10:17:02',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('79661ec5992d4f7a865d51a05c75139b',34,NULL,'mh97j8r8n9',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-14 15:37:39',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('7aec6c70d5b749e68c48c8dea2e9d773',13,NULL,'七色彩','hjjhghh@qq.com','http://qiniuti.7secai.cn/FlCJdpbzrHlcKSVCIiPHaNqwgKsY',1,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-10 20:13:15',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('80f2af0b7c7a443bb63c483ea3ec2723',66,'1a61e9b7339f4f089ef7c3f6291698b6','铁汉柔情',NULL,'http://qiniuti.7secai.cn/Fva6yVmTzLEje6fhW48G64Jba9XM',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02C5w8FeK2dBh1yU5Fhp1K',NULL,NULL,'2017-08-02 15:01:13','2017-08-02 15:00:46',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://weixin.qq.com/q/0279VcF3K2dBh1yV5F1p1P',NULL),
('826ab56e50074c50969f624f0195ae51',18,NULL,'m5z1kk515i',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-11 18:34:41',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('83b49aa2cc2b4146a198ca5f1fde87cc',20,NULL,'mr6sa4yy2k','94439108@qq.com','http://qiniuti.7secai.cn/Fk--lT5rO-SbA7216VrEr4_Vpr7S',1,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/023loEFAK2dBh1Alze1p1p',NULL,NULL,'2017-02-01 00:00:00','2017-07-13 10:08:09',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('8bf6b1e6b534493b946ec8277621e500',14,NULL,'mrjwh8c98r',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-11 17:09:16',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('953aac9e98824214b92d2ef9c930ed87',53,'admin','g6n6marb99',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02tVldE-K2dBh1GJ8uNp1l',NULL,NULL,'2017-07-25 16:05:01','2017-07-25 16:04:32',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://weixin.qq.com/q/022vreEnK2dBh1GJ8uNp1X',NULL),
('990e0c15df2d422895e8e569e3956036',55,NULL,'m_17384763081',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-07-26 10:48:00','2017-07-26 10:48:00',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('9fee1f0f02904904ba0a31e3a7d20d41',22,NULL,'m7ej72r0p8',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02BdEwFnK2dBh1ARBehp1o',NULL,NULL,'2017-02-01 00:00:00','2017-07-13 10:17:10',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('a2d243b1bb954a35b67379f1233f5f99',68,'80f2af0b7c7a443bb63c483ea3ec2723','琦琦',NULL,'http://wx.qlogo.cn/mmopen/3Lqm1xHojtbFYaAKrlvZ6GuPGUfKxLDo2XYbBsgEFqZXtiaaIzEgSJ1I6h64JE7CZ9GP0lEdKvlpVlGTmZyBkj4CW4XUeMiaibw/0',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-08-03 10:29:33','2017-08-03 10:29:33',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('aa18e70090b64163bd74945199dcea37',29,NULL,'mi0r6x9557',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-13 19:05:53',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('admin',4,'1d25004b5df24cad8f11cb8aeea4080e','七色彩家具','1014998018@qq.com','http://qiniuti.7secai.cn/FhZn3uEqlokD4nmmNbGNs6L4tptD',1,12,'51168119950811001X',NULL,NULL,NULL,'小易','13174887899',NULL,NULL,3,'http://weixin.qq.com/q/02nfDREVK2dBh1wLWuNp1V',NULL,'','2017-07-25 10:30:07','2017-03-23 17:06:31',NULL,'http://qiniuti.7secai.cn/Fg68-Se-wUcGLjNJfz_f5BroZCrD','sadsa','http://qiniuti.7secai.cn/Fisspx_VcKUghcJJGTJgs-8JbtrR','http://qiniuti.7secai.cn/FpL1BF0YRxgOlrXqwJRHFU1961QU',3,'600','50',NULL,NULL,NULL,NULL,'http://qiniuti.7secai.cn/FsvO8SVPJ8YFsF6nP7FQpslK8T46','http://weixin.qq.com/q/023y3DEdK2dBh1wLWuhp19','啊实打实'),
('b026fd981e2c497294443645644e32ac',28,NULL,'m36is8b50t',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-13 17:38:32',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('b8bac6f6cb544833ac69ed919e88e67d',73,NULL,'熊杰--今磨房',NULL,'http://wx.qlogo.cn/mmopen/L4OtXkdErnViawjZ8JUtbjpoo4vAmgCeLXn1IiaYfhU0T4A7M7kicLIoOafsvaKKCqNc5LA7dTEVtkTFLfPzZpln8LgxXwOva2j/0',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-08-11 18:41:57','2017-08-11 18:41:57',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('c6a6ba7c52414372a12e0f03656acd39',24,'admin','g5370ps062',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-13 11:37:03',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('d1321d8338f74eb189dac75d5b5aeae6',71,'80f2af0b7c7a443bb63c483ea3ec2723','ChenRong',NULL,'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIYVGaPibIHYicgib4NdZn82wJZiat6TPx1ccLRFic2DPvibEd1urmJTaACib4pmb0sVicaYNnxxq9N9qLOHw/0',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-08-08 18:04:32','2017-08-08 18:04:32',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('d8a26cfffc7248f3b922e9812e734575',41,NULL,'特别的称号',NULL,'http://wx.qlogo.cn/mmhead/zZSYtpeVianTxI6lTHDuw5a8LhQhIYv6gaJ2NptuLAb8XBNUl826YWQ/0',1,0,'512324198103253176',NULL,NULL,NULL,'特别的称号','13388466998',NULL,NULL,3,'http://weixin.qq.com/q/02JzVxFPK2dBh1KuZQhp1G',NULL,NULL,'2017-08-11 16:53:50','2017-07-18 11:02:45',NULL,'http://qiniuti.7secai.cn/FjZuwtLq_RzcVG28PIMW1vUEzUQV','渝A47261','http://qiniuti.7secai.cn/FvNXqILLjQE4w6D7cicYCCgJzT5_','http://qiniuti.7secai.cn/Fo_mB1vOLbXF3dlRzhrSTUHcmCUg',1,'5.6x2.3x1.9','5',NULL,NULL,NULL,NULL,'http://qiniuti.7secai.cn/FlqWdI8Nj7Vxw9RTNhTjz-_mofAW',NULL,'图片不清楚！'),
('e2c90a10ec0646dfaebf66388c7f9fc6',19,NULL,'m695xz60c7',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2017-02-01 00:00:00','2017-07-12 09:06:54',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('e2ceda1c794f43adbcdf355356dcab05',49,NULL,'m_13983379332',NULL,NULL,0,0,'512324198109142973',NULL,NULL,NULL,'飞哥','13983379332',NULL,NULL,4,'http://weixin.qq.com/q/02daRaEKK2dBh1zDVuhp1w',NULL,NULL,'2017-07-25 10:28:55','2017-07-20 15:10:49',NULL,'http://qiniuti.7secai.cn/FhjubtBPJnHilAL0OepSUJ0qO_Sk',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'图片不清楚'),
('e60d4259ab2a4d87868bd6cf0c965d00',5,NULL,'na11',NULL,'http://omumzem73.bkt.clouddn.com/93851491531138152.jpg',0,0,NULL,NULL,NULL,NULL,'小安','15198075051',NULL,NULL,3,'http://weixin.qq.com/q/02okdEQexXbI-1rirVxp14',NULL,NULL,'2017-02-01 00:00:00','2017-04-06 18:30:25',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'萨达'),
('e60d4259ab2a4d87868bd6cf0c965d0f',6,'admin','na1','dcjdnxjen@qq.com','http://qiniuti.7secai.cn/ljR3Xw4Nz8tsq3bTzUCeSO1BnKWz',1,10,NULL,NULL,NULL,NULL,'小运','15198075050',NULL,NULL,3,'http://weixin.qq.com/q/02-kX2ELK2dBh1Cxfthp19',NULL,NULL,'2017-07-24 17:49:21','2017-04-06 18:30:25',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'失败了啊'),
('ea1f967878cf483987d534552b991758',17,NULL,'m9jq69ezub','1014998018@qq.com','http://qiniuti.7secai.cn/Fj-jssNqKcINSRPq71MNp51OEqhz',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02MLVdFPK2dBh1APwexp1I',NULL,NULL,'2017-02-01 00:00:00','2017-07-11 18:31:34',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('f2f23ec74ef34dba849e7636aa11226c',67,'80f2af0b7c7a443bb63c483ea3ec2723','PHP-钟长森',NULL,'http://qiniuti.7secai.cn/Fob__hxnqFfPbVIZeleO0abnzFJs',1,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'http://weixin.qq.com/q/02X0APEOK2dBh1ybqGhp1e',NULL,NULL,'2017-08-03 10:42:19','2017-08-02 15:05:21',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user_member_order_info` */

DROP TABLE IF EXISTS `user_member_order_info`;

CREATE TABLE `user_member_order_info` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '（主键）（唯一值）',
  `ordreCoter` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '订单编号 随机生成的订单编号',
  `tarifMong` decimal(20,2) DEFAULT NULL COMMENT '总的邮费金额，后台客服可以更改',
  `ordreSomme` decimal(20,2) DEFAULT NULL COMMENT '实际订单总价',
  `payerSomme` decimal(20,2) DEFAULT NULL COMMENT '实际支付价格',
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '购买用户id',
  `addressId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '收货信息ID',
  `orderAdresse` varchar(300) COLLATE utf8_bin DEFAULT '' COMMENT '收货地址 如：省，市，区，详细地址',
  `name` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '收货姓名',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '收货电话：eg：12333565666',
  `ordreType` tinyint(4) DEFAULT NULL COMMENT '订单状态(0待付款-1下单-2受理-3生产-4运输-5预约-6安装-7完成-8退货-9取消订单 )',
  `ordreRemarque` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '买家对商品的备注信息',
  `soustraireId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '满减优惠卷ID',
  `compenserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '使用的抵扣优惠券ID',
  `esmSurnom` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '快递号（预留）',
  `esmCompagnie` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '快递公司（预留）',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间（待支付时间）',
  `payerTime` datetime DEFAULT NULL COMMENT '下单时间（付款时间）',
  `theDeliveryTime` datetime DEFAULT NULL COMMENT '受理时间',
  `productionTime` datetime DEFAULT NULL COMMENT '生产时间',
  `transportTime` datetime DEFAULT NULL COMMENT '运输时间',
  `appointmentTime` datetime DEFAULT NULL COMMENT '预约时间',
  `makeTime` datetime DEFAULT NULL COMMENT '安装时间',
  `goodsTime` datetime DEFAULT NULL COMMENT '完成时间',
  `backTime` datetime DEFAULT NULL COMMENT '退货时间',
  `cancelTime` datetime DEFAULT NULL COMMENT '取消时间',
  `isNotEvaluation` tinyint(4) DEFAULT '1' COMMENT '是否评价 1-未评价 2-已评价',
  `isNotBilan` tinyint(4) DEFAULT '1' COMMENT '是否插入结算中 1-否 2-已插入 3-无销售人员',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员订单信息 （购买家具订单信息）';

/*Data for the table `user_member_order_info` */

insert  into `user_member_order_info`(`id`,`ordreCoter`,`tarifMong`,`ordreSomme`,`payerSomme`,`userId`,`addressId`,`orderAdresse`,`name`,`phone`,`ordreType`,`ordreRemarque`,`soustraireId`,`compenserId`,`esmSurnom`,`esmCompagnie`,`addTime`,`payerTime`,`theDeliveryTime`,`productionTime`,`transportTime`,`appointmentTime`,`makeTime`,`goodsTime`,`backTime`,`cancelTime`,`isNotEvaluation`,`isNotBilan`,`reserve1`,`reserve2`) values 
('67956569f863400a85abdc86685f2ff0','170802164551690',0.00,90.00,40.00,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','仿佛 v 过','17384763081',7,'','7e2e44ab32da45b18e1bb033ae41de86','9fe3e615cbcd4c0bb9c7c63b50e0d731',NULL,NULL,'2017-08-02 16:45:51',NULL,NULL,NULL,'2017-08-04 14:59:56','2017-08-04 15:01:16','2017-08-04 15:58:29','2017-08-04 16:00:50',NULL,NULL,1,1,NULL,NULL),
('8907f047d40742c4b89283cc0a71345f','170803174220799',0.00,0.01,0.01,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','钟国','17384763081',5,'',NULL,NULL,NULL,NULL,'2017-08-03 17:42:20',NULL,NULL,NULL,'2017-08-03 17:54:30','2017-08-03 17:54:56',NULL,NULL,NULL,NULL,1,1,NULL,NULL),
('89cbc4ff58034a71a345817d5f99e698','170804124522377',0.00,0.05,0.05,'d8a26cfffc7248f3b922e9812e734575','ad55959b3eee46bf9953ab24bb5f9927','重庆重庆市辖江北区富洲新城','梁远江','13368466998',6,'',NULL,NULL,NULL,NULL,'2017-08-04 12:45:22',NULL,NULL,NULL,'2017-08-11 16:57:58','2017-08-11 16:59:36','2017-08-11 18:04:29',NULL,NULL,NULL,1,1,NULL,NULL),
('90ecdbc0f3ce498d840bd32ee1060ee7','170803181229768',0.00,0.01,0.01,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','钟国','17384763081',5,'',NULL,NULL,NULL,NULL,'2017-08-03 18:12:29',NULL,NULL,NULL,'2017-08-03 18:15:32','2017-08-04 09:41:39',NULL,NULL,NULL,NULL,1,1,NULL,NULL),
('de9b22fbe6aa4e979345f0bc1ebca2bf','170804090929643',0.00,0.01,0.01,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','钟国','17384763081',5,'',NULL,NULL,NULL,NULL,'2017-08-04 09:09:29',NULL,NULL,NULL,'2017-08-04 09:10:02',NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL);

/*Table structure for table `user_meubleorder_details` */

DROP TABLE IF EXISTS `user_meubleorder_details`;

CREATE TABLE `user_meubleorder_details` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id值',
  `orderId` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '厂家订单ID',
  `goodsName` varchar(120) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `goodsTypeId` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '商品规格ID',
  `goodsNumber` int(11) DEFAULT '1' COMMENT '商品数量',
  `moneyPrice` decimal(20,2) DEFAULT '0.00' COMMENT '出厂价',
  `moneyGoods` decimal(20,2) DEFAULT '0.00' COMMENT '单个商品金额',
  `moneyPostage` decimal(20,2) DEFAULT '0.00' COMMENT '邮费金额',
  `moneyType` tinyint(4) DEFAULT '1' COMMENT '金额类型 1-普通价，2-活动价，3-特价',
  `isNotAvailable` tinyint(4) DEFAULT '1' COMMENT '是否可用 1-可用 2-不可用',
  `goodsId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联商品ID',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT '',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='家具订单商品详情表';

/*Data for the table `user_meubleorder_details` */

insert  into `user_meubleorder_details`(`id`,`orderId`,`goodsName`,`goodsTypeId`,`goodsNumber`,`moneyPrice`,`moneyGoods`,`moneyPostage`,`moneyType`,`isNotAvailable`,`goodsId`,`createTime`,`reserve1`,`reserve2`) values 
('1726ecb94a2345269ef21774d1af3a03','10fff023824648ca90eee63cf029d0f4','美国进口白杨木 1.5米地中海','84cbcbee1bfc4b6cbfeb54ea27216e44',1,NULL,0.01,0.00,2,1,'0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-08-02 17:15:07',NULL,NULL),
('1f6ca0868c904e64bc963f0526627cc6','b4d7e8112a434903babbc78eddfafa42','美国进口白杨木 1.5米地中海','84cbcbee1bfc4b6cbfeb54ea27216e44',1,NULL,0.01,0.00,2,1,'0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-08-04 09:09:29',NULL,NULL),
('4244b304956c4e54840314250cd44f27','4ccb67d7e3e04e878f9872eeb0aa3e42','1.8米皇室宫廷欧式双人床','b4efcd7741534e76910aab7502be1703',5,NULL,0.01,0.00,1,1,'64346f65-0850-4a5b-bc4e-4fd1ef1105f7','2017-08-04 12:45:22',NULL,NULL),
('4d2ab44e7fda47be81e24004f830b5d9','84c2ef7a3f12446aa88d523162525763','小户型餐桌折叠饭桌','b9c130b90a25486b909219d4d857231b',1,NULL,50.00,0.00,1,1,'09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 16:45:51',NULL,NULL),
('51e9fd32ef7f49e88797c278602fb07d','46a8870ad75e4cd1807a04a5508c1ec5','美国进口白杨木 1.5米地中海','84cbcbee1bfc4b6cbfeb54ea27216e44',1,NULL,0.01,0.00,2,1,'0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-08-03 17:42:20',NULL,NULL),
('5fb8e5d594654e099de262d774643d8e','84c2ef7a3f12446aa88d523162525763','皮艺坐面靠背 不锈钢框架餐椅','e274eddcaba34dcf84ee5b872f5a6665',1,NULL,20.00,0.00,3,1,'ceb79cd0-a389-4115-8546-67310d93cf14','2017-08-02 16:45:51',NULL,NULL),
('aac2a74932f94f6186214e1e02704641','be29b282def044f08a67364284305fbd','美国进口白杨木 1.5米地中海','84cbcbee1bfc4b6cbfeb54ea27216e44',1,NULL,0.01,0.00,2,1,'0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-08-03 10:18:10',NULL,NULL),
('c0f488d5b6954759a9f1240ffe5a4a20','84c2ef7a3f12446aa88d523162525763','美国进口白杨木 1.5米地中海','84cbcbee1bfc4b6cbfeb54ea27216e44',1,NULL,20.00,0.00,2,1,'0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-08-02 16:45:51',NULL,NULL),
('e88c94c88b724ae1947ac9f377dc4284','7e8e33ead288417788ffd54fe2f1e0ac','美国进口白杨木 1.5米地中海','84cbcbee1bfc4b6cbfeb54ea27216e44',1,NULL,0.01,0.00,2,1,'0c60fa7a-79e2-4fef-ac1c-1cb4577165d8','2017-08-03 18:12:29',NULL,NULL),
('fbe73273f5f148a59e75e9f2bc0e6a30','365f648b237147959e62cda1a8ffb8b3','小户型餐桌折叠饭桌','b9c130b90a25486b909219d4d857231b',1,NULL,50.00,0.00,1,1,'09ab1f2a-9af8-44c3-99d6-db52881bde7c','2017-08-02 17:32:10',NULL,NULL);

/*Table structure for table `user_meubleorder_info` */

DROP TABLE IF EXISTS `user_meubleorder_info`;

CREATE TABLE `user_meubleorder_info` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `ordreCoter` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '订单编号 随机生成的订单编号',
  `normeId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '商品规格ID（商品价格）支付以实际的规格ID中的价格为主  （暂时不要）',
  `tarifMong` decimal(20,2) DEFAULT NULL COMMENT '邮费金额，后台客服可以更改',
  `ordreNumber` int(10) DEFAULT NULL COMMENT '订单数量（暂时不要）',
  `ordreSomme` decimal(20,2) DEFAULT NULL COMMENT '实际订单总价',
  `payerSomme` decimal(20,2) DEFAULT NULL COMMENT '实际支付价格',
  `userId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '购买用户id',
  `addressId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '收货信息ID',
  `orderAdresse` varchar(300) COLLATE utf8_bin DEFAULT '' COMMENT '收货地址 如：省，市，区，详细地址',
  `name` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '收货姓名',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '收货电话：eg：12333565666',
  `ordreType` tinyint(4) DEFAULT NULL COMMENT '订单状态(0待付款-1下单-2受理-3生产-4运输-5预约-6安装-7完成-8退货-9取消订单 )',
  `ordreRemarque` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '买家对商品的备注信息',
  `soustraireId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '满减优惠卷ID（暂时不要）',
  `compenserId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '使用的抵扣优惠券ID（暂时不要）',
  `esmSurnom` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '快递号',
  `esmCompagnie` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '快递公司',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间（待支付时间）',
  `payerTime` datetime DEFAULT NULL COMMENT '下单时间（付款时间）',
  `theDeliveryTime` datetime DEFAULT NULL COMMENT '受理时间',
  `productionTime` datetime DEFAULT NULL COMMENT '生产时间',
  `transportTime` datetime DEFAULT NULL COMMENT '运输时间',
  `appointmentTime` datetime DEFAULT NULL COMMENT '预约时间',
  `makeTime` datetime DEFAULT NULL COMMENT '安装时间',
  `goodsTime` datetime DEFAULT NULL COMMENT '完成时间',
  `backTime` datetime DEFAULT NULL COMMENT '退货时间',
  `cancelTime` datetime DEFAULT NULL COMMENT '取消时间',
  `isNotEvaluation` tinyint(4) DEFAULT '1' COMMENT '是否评价 1-未评价 2-已评价',
  `isNotBilan` tinyint(4) DEFAULT '1' COMMENT '是否插入结算中 1-否 2-已插入 3-无销售人员',
  `compId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '厂家id',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '用户订单ID',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT '1' COMMENT '是否已生成供应商结算数据； 1-未生成； 2-已生成；',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='厂家订单信息 （购买家具订单信息）';

/*Data for the table `user_meubleorder_info` */

insert  into `user_meubleorder_info`(`id`,`ordreCoter`,`normeId`,`tarifMong`,`ordreNumber`,`ordreSomme`,`payerSomme`,`userId`,`addressId`,`orderAdresse`,`name`,`phone`,`ordreType`,`ordreRemarque`,`soustraireId`,`compenserId`,`esmSurnom`,`esmCompagnie`,`addTime`,`payerTime`,`theDeliveryTime`,`productionTime`,`transportTime`,`appointmentTime`,`makeTime`,`goodsTime`,`backTime`,`cancelTime`,`isNotEvaluation`,`isNotBilan`,`compId`,`reserve1`,`reserve2`) values 
('10fff023824648ca90eee63cf029d0f4','170802171507924',NULL,0.00,NULL,0.01,NULL,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','仿佛 v 过','17384763081',0,'',NULL,NULL,NULL,NULL,'2017-08-02 17:15:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'781ad64c95c842d39335f14c0bd394b4','e39162dc5298440785681fe7858ee497',NULL),
('365f648b237147959e62cda1a8ffb8b3','170802173210237',NULL,0.00,NULL,50.00,NULL,'admin','c33f7554c3c44619a51e2beed4bf84d9','重庆重庆县级永川市撒大大','的冯绍峰','18982686455',0,'',NULL,NULL,NULL,NULL,'2017-08-02 17:32:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'781ad64c95c842d39335f14c0bd394b4','679b9a1221ee4f9d8ed5a36f9bf82dc0',NULL),
('46a8870ad75e4cd1807a04a5508c1ec5','170803174220815',NULL,0.00,NULL,0.01,NULL,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','钟国','17384763081',5,'',NULL,NULL,NULL,NULL,'2017-08-03 17:42:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'781ad64c95c842d39335f14c0bd394b4','8907f047d40742c4b89283cc0a71345f','2'),
('4ccb67d7e3e04e878f9872eeb0aa3e42','170804124522393',NULL,0.00,NULL,0.05,NULL,'d8a26cfffc7248f3b922e9812e734575','ad55959b3eee46bf9953ab24bb5f9927','重庆重庆市辖江北区富洲新城','梁远江','13368466998',6,'',NULL,NULL,NULL,NULL,'2017-08-04 12:45:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'781ad64c95c842d39335f14c0bd394b4','89cbc4ff58034a71a345817d5f99e698','2'),
('7e8e33ead288417788ffd54fe2f1e0ac','170803181229784',NULL,0.00,NULL,0.01,NULL,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','钟国','17384763081',5,'',NULL,NULL,NULL,NULL,'2017-08-03 18:12:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'781ad64c95c842d39335f14c0bd394b4','90ecdbc0f3ce498d840bd32ee1060ee7','2'),
('84c2ef7a3f12446aa88d523162525763','170802164551706',NULL,0.00,NULL,90.00,NULL,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','仿佛 v 过','17384763081',7,'',NULL,NULL,NULL,NULL,'2017-08-02 16:45:51',NULL,NULL,NULL,NULL,NULL,NULL,'2017-08-04 16:00:50',NULL,NULL,1,1,'781ad64c95c842d39335f14c0bd394b4','67956569f863400a85abdc86685f2ff0','2'),
('b4d7e8112a434903babbc78eddfafa42','170804090929659',NULL,0.00,NULL,0.01,NULL,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','钟国','17384763081',0,'',NULL,NULL,NULL,NULL,'2017-08-04 09:09:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'781ad64c95c842d39335f14c0bd394b4','de9b22fbe6aa4e979345f0bc1ebca2bf','2'),
('be29b282def044f08a67364284305fbd','170803101810987',NULL,0.00,NULL,0.01,NULL,'f2f23ec74ef34dba849e7636aa11226c','f835bb0cf29d441b876e36480eca5a9c','重庆重庆县辖江北区退换货','仿佛 v 过','17384763081',0,'',NULL,NULL,NULL,NULL,'2017-08-03 10:18:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'781ad64c95c842d39335f14c0bd394b4','00c83c08b33449ea8c986e6d41ecf465',NULL);

/*Table structure for table `user_meubleorder_return` */

DROP TABLE IF EXISTS `user_meubleorder_return`;

CREATE TABLE `user_meubleorder_return` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '标识值（主键）（唯一值）',
  `orderId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '个人订单ID',
  `valueTexts` varchar(600) COLLATE utf8_bin DEFAULT NULL COMMENT '退货商品规格id，对应的details主键',
  `returnSumMoney` decimal(20,2) DEFAULT NULL COMMENT '订单总金额',
  `returnMoney` decimal(20,2) DEFAULT NULL COMMENT '退货实际返回金额(后台人员添加)',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话（自动填充，可更改）',
  `contactPeople` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人（自动填充，可更改）',
  `returnType` tinyint(4) DEFAULT NULL COMMENT '退货处理状态 1-待处理 2-已处理 3-取消退货',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `toDealWithTime` date DEFAULT NULL COMMENT '处理时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_meubleorder_return` */

/*Table structure for table `user_ordrestatut` */

DROP TABLE IF EXISTS `user_ordrestatut`;

CREATE TABLE `user_ordrestatut` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `userType` int(11) DEFAULT NULL COMMENT '用户类型 1-普通会员 2-商户(企业) 3-公司内部销售人员 4-个人销售人员 ',
  `rang` tinyint(4) DEFAULT NULL COMMENT '等级 请从1开始，请勿中断等级数据',
  `exploit` decimal(20,2) DEFAULT '0.00' COMMENT '业绩门槛（推荐人累计推荐用户购买的金额）',
  `proportion` decimal(20,3) DEFAULT '0.000' COMMENT '特价提成比例（如：5%，则直接填 0.05，',
  `activity` decimal(20,3) DEFAULT '0.000' COMMENT '活动价提成比例',
  `ordinary` decimal(20,3) DEFAULT '0.000' COMMENT '普通价提成比例',
  `texte` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '描述，用户解释该用途',
  `isNotForum` tinyint(4) DEFAULT NULL COMMENT '是否可用 1-可用 2-不可用',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员等级规则表';

/*Data for the table `user_ordrestatut` */

insert  into `user_ordrestatut`(`id`,`userType`,`rang`,`exploit`,`proportion`,`activity`,`ordinary`,`texte`,`isNotForum`,`addTime`,`reserve1`,`reserve2`) values 
('1',1,1,NULL,0.000,1.000,1.000,'普通会员（只提到积分中）',1,'2017-03-29 16:05:01',NULL,NULL),
('2',2,1,NULL,0.000,0.070,0.150,'企业（商户）',1,'2017-03-29 16:05:01',NULL,NULL),
('3',3,1,0.00,0.000,0.000,0.000,'公司内部销售人员（无结算）',1,'2017-03-29 16:05:01',NULL,NULL),
('4',4,1,0.00,0.000,0.040,0.080,'个人销售人员1级',1,'2017-03-29 16:05:01',NULL,NULL),
('5',4,2,10000.00,0.000,0.050,0.100,'个人销售人员2级',1,'2017-03-29 16:05:01',NULL,NULL),
('6',4,3,80000.00,0.000,0.050,0.120,'个人销售人员3级',1,'2017-03-29 16:05:01',NULL,NULL),
('7',4,4,0.00,0.000,0.000,0.000,'个人销售人员4级',2,'2017-03-29 16:05:01',NULL,NULL),
('8',4,5,0.00,0.000,0.000,0.000,'个人销售人员5级',2,'2017-03-29 16:05:01',NULL,NULL),
('9',10,1,NULL,0.000,0.000,0.010,'二级销售比例（二级销售比例固定）',1,'2017-03-29 16:05:01',NULL,NULL);

/*Table structure for table `user_ticket_had` */

DROP TABLE IF EXISTS `user_ticket_had`;

CREATE TABLE `user_ticket_had` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户标识值（主键）（唯一值）',
  `userId` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '会员ID',
  `ticketId` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '电子券（ID）',
  `number` int(10) DEFAULT '0' COMMENT '优惠卷数量',
  `addTime` datetime DEFAULT NULL COMMENT '创建时间',
  `employerTime` datetime DEFAULT NULL COMMENT '使用时间',
  `utiliser` tinyint(4) DEFAULT '1' COMMENT '是否被使用（1:未使用 2:已使用）',
  `isNotRejeter` tinyint(4) DEFAULT '1' COMMENT '是否丢弃 1:未丢弃 2:已丢弃',
  `reserve1` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '预留1',
  `reserve2` varchar(120) COLLATE utf8_bin DEFAULT '' COMMENT '预留2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会员优惠卷信息（user_ticket_had）';

/*Data for the table `user_ticket_had` */

insert  into `user_ticket_had`(`id`,`userId`,`ticketId`,`number`,`addTime`,`employerTime`,`utiliser`,`isNotRejeter`,`reserve1`,`reserve2`) values 
('0b06f334e96e45dbb08f735d9fc453a4','e60d4259ab2a4d87868bd6cf0c965d00','9fe3e615cbcd4c0bb9c7c63b50e0d731',1,'2017-08-02 17:41:19',NULL,1,1,NULL,NULL),
('1911408d3a0c46319b0e5b08808fedc7','f2f23ec74ef34dba849e7636aa11226c','22',1,'2017-08-07 09:50:14',NULL,1,1,NULL,NULL),
('1c6c747a51b9477db7e90041c33dbbfc','80f2af0b7c7a443bb63c483ea3ec2723','11',1,'2017-08-07 14:36:28',NULL,1,1,NULL,NULL),
('26efc7a36a1f45d393ba2574efbab118','f2f23ec74ef34dba849e7636aa11226c','11',1,'2017-08-07 09:50:11',NULL,1,1,NULL,NULL),
('2f35f00fbe33429dbcedd3e37d9a093b','e60d4259ab2a4d87868bd6cf0c965d0f','33',1,'2017-07-19 17:26:52',NULL,1,1,NULL,NULL),
('3c98810cdf1d4b018ba579bacd663908','80f2af0b7c7a443bb63c483ea3ec2723','33',1,'2017-08-07 14:36:20',NULL,1,1,NULL,NULL),
('5c31f5b1f83c4092aaa4d0d7d600e66d','admin','02a59bfd54764ac5acb63175f2cb0e2b',1,'2017-08-02 15:39:09',NULL,1,1,NULL,NULL),
('6cdd73451acc4c06b18da3f832918cc6','80f2af0b7c7a443bb63c483ea3ec2723','7e2e44ab32da45b18e1bb033ae41de86',1,'2017-08-07 14:36:23',NULL,1,1,NULL,NULL),
('87722a5ff4a4468d996611e55b79b1b1','admin','11',1,'2017-08-02 15:39:42',NULL,1,1,NULL,NULL),
('9d5f92f609434ed9a1413b9d091fd34f','eadab53147b84b9883cb595502b5bac7','33',1,'2017-07-28 14:54:00',NULL,1,1,NULL,NULL),
('a590af30006f4f2e9e9fc9f262e71517','admin','33',1,'2017-08-02 15:39:11',NULL,1,1,NULL,NULL),
('b2c24f20630140778a8b1c6c41b8088a','f2f23ec74ef34dba849e7636aa11226c','9fe3e615cbcd4c0bb9c7c63b50e0d731',1,'2017-08-02 15:40:06',NULL,2,1,NULL,NULL),
('b7f64789234048d5a981d39a12402f37','admin','7e2e44ab32da45b18e1bb033ae41de86',1,'2017-08-02 15:39:13',NULL,1,1,NULL,NULL),
('bd7463b623fa40539d30bdd24db7e44f','admin','22',1,'2017-08-02 15:39:44',NULL,1,1,NULL,NULL),
('c617cde5de104c518e1c715568f44f49','80f2af0b7c7a443bb63c483ea3ec2723','22',1,'2017-08-07 14:36:27',NULL,1,1,NULL,NULL),
('ce3ef73b64ad452087d76b6e3954ac94','f2f23ec74ef34dba849e7636aa11226c','7e2e44ab32da45b18e1bb033ae41de86',1,'2017-08-02 15:12:15',NULL,2,1,NULL,NULL),
('e928d0ac849645f6ac09e264875cd2a2','f2f23ec74ef34dba849e7636aa11226c','02a59bfd54764ac5acb63175f2cb0e2b',1,'2017-08-02 15:12:28',NULL,1,1,NULL,NULL),
('f165e70764e84c82aca25e92544e8953','admin','9fe3e615cbcd4c0bb9c7c63b50e0d731',1,'2017-08-02 15:39:46',NULL,1,1,NULL,NULL),
('f2d0b31b8e4a4a139e82b6b507d9c581','80f2af0b7c7a443bb63c483ea3ec2723','02a59bfd54764ac5acb63175f2cb0e2b',1,'2017-08-07 14:36:18',NULL,1,1,NULL,NULL),
('ffa141d11c0942898d74e60b9dfc1798','f2f23ec74ef34dba849e7636aa11226c','33',1,'2017-08-07 09:50:21',NULL,1,1,NULL,NULL);

/*Table structure for table `weixincreatemenu` */

DROP TABLE IF EXISTS `weixincreatemenu`;

CREATE TABLE `weixincreatemenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namew` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '菜单标题，不超过16个字节，子菜单不超过40个字节',
  `typew` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '菜单的响应动作类型',
  `keyw` varchar(130) COLLATE utf8_bin DEFAULT '' COMMENT '菜单KEY值，用于消息接口推送，不超过128字节',
  `url` varchar(1024) COLLATE utf8_bin DEFAULT '' COMMENT '网页链接，用户点击菜单可打开链接，不超过1024字节',
  `parentId` int(11) DEFAULT NULL COMMENT '父级Id',
  `rank` int(4) DEFAULT '1' COMMENT '排序',
  `createTime` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `weixincreatemenu` */

insert  into `weixincreatemenu`(`id`,`namew`,`typew`,`keyw`,`url`,`parentId`,`rank`,`createTime`) values 
(1,'商城','click','1','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login&from=singlemessage&isappinstalled=0#wechat_redirect\r\n',0,1,'2017-03-21 14:49:31'),
(2,'商城首页','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login&from=singlemessage&isappinstalled=0#wechat_redirect',1,1,'2017-07-10 11:22:11'),
(3,'新品上线','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login&from=singlemessage&isappinstalled=0#wechat_redirect',1,2,'2017-07-11 14:47:31'),
(5,'兑换','click','2','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http://www.7secai.cn/index.php/home/user/weixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login#wechat_redirect',0,2,'2017-07-11 14:48:32'),
(6,'我的','click','3','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http://www.7secai.cn/index.php/home/user/weixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login#wechat_redirect',0,3,'2017-07-11 14:48:38'),
(7,'幸运抽奖','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login&from=singlemessage&isappinstalled=0#wechat_redirect',5,1,'2017-07-11 14:49:38'),
(9,'个人中心','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin1&response_type=code&scope=snsapi_userinfo&state=userinfo#wechat_redirect',6,1,'2017-07-11 14:51:00'),
(11,'每日签到','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http://www.7secai.cn/index.php/home/user/weixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login#wechat_redirect',6,2,'2017-07-11 14:56:28'),
(12,'限时抢购','view','k','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin3&response_type=code&scope=snsapi_userinfo&state=activity#wechat_redirect',1,1,'2017-07-13 17:32:17'),
(13,'领券中心','view','k','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin4&response_type=code&scope=snsapi_userinfo&state=getcouponcenter#wechat_redirect',5,1,'2017-07-13 17:33:26'),
(14,'家具搭配','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login&from=singlemessage&isappinstalled=0#wechat_redirect',5,1,'2017-07-13 17:33:47'),
(15,'我的礼品','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login&from=singlemessage&isappinstalled=0#wechat_redirect',6,1,'2017-07-13 17:34:22'),
(16,'我的分享','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login&from=singlemessage&isappinstalled=0#wechat_redirect',6,1,'2017-07-13 17:35:06'),
(17,'绑定手机','view','','https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin2&response_type=code&scope=snsapi_userinfo&state=bindphone#wechat_redirect',6,1,'2017-07-13 17:35:48');

/*Table structure for table `viewuser` */

DROP TABLE IF EXISTS `viewuser`;

/*!50001 DROP VIEW IF EXISTS `viewuser` */;
/*!50001 DROP TABLE IF EXISTS `viewuser` */;

/*!50001 CREATE TABLE  `viewuser`(
 `id` int(11) unsigned ,
 `userName` varchar(64) ,
 `passWord` varchar(128) ,
 `userImage` varchar(298) ,
 `roleId` int(11) ,
 `realName` varchar(128) ,
 `sex` tinyint(4) ,
 `address` varchar(255) ,
 `telephone` varchar(15) ,
 `createTime` datetime ,
 `userId` int(11) ,
 `isDelete` tinyint(4) ,
 `roleName` varchar(64) 
)*/;

/*View structure for view viewuser */

/*!50001 DROP TABLE IF EXISTS `viewuser` */;
/*!50001 DROP VIEW IF EXISTS `viewuser` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewuser` AS select `t1`.`id` AS `id`,`t1`.`userName` AS `userName`,`t1`.`passWord` AS `passWord`,`t1`.`userImage` AS `userImage`,`t1`.`roleId` AS `roleId`,`t1`.`realName` AS `realName`,`t1`.`sex` AS `sex`,`t1`.`address` AS `address`,`t1`.`telephone` AS `telephone`,`t1`.`createTime` AS `createTime`,`t1`.`userId` AS `userId`,`t1`.`isDelete` AS `isDelete`,`t2`.`name` AS `roleName` from (`admin_user` `t1` join `admin_role` `t2`) where (`t1`.`roleId` = `t2`.`id`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
