<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>用户中心</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/mine.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
	</head>
	<body>
		<div class="container-fluid mine-top">
			<div class="row bg-fff">
				<a href="<?php echo U('user/information');?>" style="color:#000000"><div class="col-xs-12 top padd_0">
					<img class="user center-block img-rounded" src="<?php echo ((isset($userinfo["user_image"]) && ($userinfo["user_image"] !== ""))?($userinfo["user_image"]):'/Public/img/person/tx.png'); ?>"/>
					<?php if($userinfo['infoName'] == ''): ?><a href="<?php echo U('user/login');?>" style="color:green"><p class="font12 text-center username">你好,请登录</p></a>
					<?php else: ?>
						
					<p class="font12 text-center username"><?php echo ($userinfo["infoName"]); ?>&nbsp;&nbsp;&nbsp;<?php if($infotype['userType'] == 4): ?>L<?php echo ($infotype["userGrade"]); ?>
					<?php else: endif; ?><br/>
					<?php if($infotype['userType'] == 1): ?>普通会员
					 <?php elseif($infotype['userType'] == 2): ?>  
					      商户(企业)
					 <?php elseif($infotype['userType'] == 3): ?>  
					       公司内部销售人员
					 <?php elseif($infotype['userType'] == 4): ?>  
					     个人销售人员
					 <?php elseif($infotype['userType'] == 5): ?>  
					      货运师傅
					 <?php elseif($infotype['userType'] == 6): ?>  
					      安装工人
					<?php else: endif; ?>
					</p><?php endif; ?>
					<div class="float"></a>
						<a href="<?php echo U('user/myfoot');?>"><div class="f-list text-center">
							<img class="z" src="/Public/img/mine/z.png"/>
							<span class="color-fff">我的足迹</span>
						</div></a>
						<a href="<?php echo U('user/address');?>"><div class="f-list text-center">
							<img class="z" src="/Public/img/mine/d.png"/>
							<span class="color-fff">收货地址</span>
						</div></a>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid cont">
			<div class="row bg-fff mar-t15">
			<a href="<?php echo U('user/myorder');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
					
						<img class="order" src="/Public/img/mine/myorder.png"/>
						我的订单
						<span class="color-666 font12 pull-right"> 查看全部订单 <img class="r" src="/Public/img/huoyun/r.png"/></span>
					
				</div>
				</a>
				<div class="col-lg-12 text-center pad-up10">
					
			
					<a href="<?php echo U('user/myorder');?>" style="color:#000000">
					<div class="col-xs-3 padd_0 pad-up10">
						<img class="pay pay1 mar-b5 center-block" src="/Public/img/mine/a.png"/>
						<p class="mar-b0">待付款</p>
						<?php if($dmoneynumber > 0): ?><span class="mybadge"><?php echo ($dmoneynumber); ?></span>
						<?php else: endif; ?>
					</div>
					</a>
					<a href="<?php echo U('user/myorder');?>" style="color:#000000"><div class="col-xs-3 padd_0 pad-up10">
						<img class="pay mar-b5 center-block" src="/Public/img/mine/b.png"/>
						<p class="mar-b0">待收货</p>
						<?php if($dgoodnumber > 0): ?><span class="mybadge"><?php echo ($dgoodnumber); ?></span>
						<?php else: endif; ?>
					</div></a>
					<a href="<?php echo U('user/myorder');?>" style="color:#000000"><div class="col-xs-3 padd_0 pad-up10">
						<img class="pay mar-b5 center-block" src="/Public/img/mine/c.png"/>
						<p class="mar-b0">待评价</p>
						<?php if($dcommentnumber > 0): ?><span class="mybadge"><?php echo ($dcommentnumber); ?></span>
						<?php else: endif; ?>
					</div></a>
					<a href="<?php echo U('user/refund');?>" style="color:#000000"><div class="col-xs-3 padd_0 pad-up10">
						<img class="pay mar-b5 pay2 center-block" src="/Public/img/mine/d1.png"/>
						<p class="mar-b0">退货/售后</p>
						<?php if($refundnumber > 0): ?><span class="mybadge"><?php echo ($refundnumber); ?></span>
						<?php else: endif; ?>
					</div></a>
				</div>
			</div>
			<div class="row font15 bg-fff mar-t15">
					<a href="<?php echo U('user/coupon');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/1.png"/>
						<span>我的卡券</span>
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/integral');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/2.png"/>
						我的积分
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('good/jifensc');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/3.png"/>
						积分商城
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/lookforward');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/4.png"/>
						积分抽奖
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/invitefriends');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/5.png"/>
						邀请好友
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
			</div>
			<?php if(($infotype['userType'] == 2) OR ($infotype['userType'] == 3) OR ($infotype['userType'] == 4)): ?><div class="row font15 bg-fff mar-t15">
					<a href="<?php echo U('user/ranking');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/6.png"/>
						我的排名
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/teammange');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/7.png"/>
						团队管理
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/performancesearch');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/8.png"/>
						业绩查询
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
			</div><?php endif; ?>
			<div class="row font15 bg-fff mar-t15">
			<?php if($infotype['userType'] == 5): ?><a href="<?php echo U('user/goodyun');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/9.png"/>
						货运管理<?php if($giyun > 0): ?><font color="red" size="1">(<?php echo ($giyun); ?>单未接受)</font>
						<?php else: endif; ?>
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/moneymange');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/11.png"/>
						收入管理
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/areamange');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
					<img class="order1" src="/Public/img/armn.jpg"/>
						区域管理
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/goodyunneed');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/fwxz.jpg"/>
						服务须知
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
				<?php elseif(($infotype['userType'] == 6)): ?>
				
					<a href="<?php echo U('user/install');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/10.png"/>
						安装管理<?php if($giyun1 > 0): ?><font color="red" size="1">(<?php echo ($giyun1); ?>单未接受)</font>
						<?php else: endif; ?>
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="<?php echo U('user/moneymange');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/11.png"/>
						收入管理
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				
				</div>
					</a>
					<a href="<?php echo U('user/areamange');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/armn.jpg"/>
						区域管理
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
				<a href="<?php echo U('user/installneed');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/fwxz.jpg"/>
						服务须知
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a><?php endif; ?>
			</div>
			<div class="row font15 bg-fff mar-t15">
					<a href="<?php echo U('user/set');?>" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/12.png"/>
						设置
						 <img class="r1 pull-right" src="/Public/img/huoyun/r.png"/>
				</div>
					</a>
					<a href="tel:023-8168-2567" class="color-1a1a1a">
				<div class="col-xs-12 pad-up15 bor-b-f2">
						<img class="order1" src="/Public/img/mine/13.png"/>
						客服电话
						<span class="pull-right color-666">
							023-8168-2567
						 	<img class="r1" src="/Public/img/huoyun/r.png"/>
						</span>
				</div>
					</a>
			</div>
		</div>
						<!--底部选项卡-->
		<div class="bottom">
			<a href="<?php echo U('index/index');?>"><div class="other">
				<img class="center-block" src="/Public/img/bottomTab/home.png" />
				<p>首页</p>
			</div></a>
			<a href="<?php echo U('good/classify');?>">
			<div class="other">
				<img class="center-block" src="/Public/img/bottomTab/classify1.png" />
				<p>分类</p>
			</div></a>
			<a href="<?php echo U('good/goodlist');?>">
			<div class="myplus">
				<img class="center-block" src="/Public/img/bottomTab/plus.png" />
			</div></a>
			<a href="<?php echo U('good/cart');?>">
			<div class="other">
				<img class="center-block" src="/Public/img/bottomTab/shopcar.png" />
				<p>购物车</p>
			</div></a>
			<a href="<?php echo U('user/userinfo');?>">
			<div class="other">
				<img class="center-block" src="/Public/img/bottomTab/mine1.png" />
				<p class="color-669900">我的</p></a>
			</div>
		</div>
		<!--model-->
	</body>
</html>