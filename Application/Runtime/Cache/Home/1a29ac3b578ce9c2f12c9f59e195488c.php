<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>收入管理</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/jilu.css" />
	</head>
	<body>
		<!--顶部标题-->
		<div class="nav text-center">
				<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16 tit">收入管理</span>
			<a href="<?php echo U('user/tmoneyrecord');?>" style="color:#000000"><button class="mybtn pull-right font15 compile" type="button">
				提现记录
			</button></a>
		</div>
		
		<!--顶部标题-->
		<div class="cont bg-fff">
			<div class="inner">
				<img class="img-responsive" src="/Public/img/mine/ty.png"/>
				<div class="infor">
					<p class="font17"> 收入金额</p>
					<p class="font30 color-669900">
					<?php if($info['userType'] == 6): if($res1 > 0): ?>￥<?php echo ($res1); ?></font>
						<?php else: ?>
						￥0.00</p><?php endif; ?>
					
					<?php else: ?>
					<?php if($res > 0): ?>￥<?php echo ($res); ?></font>
						<?php else: ?>
						￥0.00</p><?php endif; endif; ?>
				</div>
			</div>
			<div class="circle">
				
			</div>
		</div>
		<div class="col-xs-12 mar-t50">
			<a href="<?php echo U('user/tmoney1');?>" style="color:#000000"><div class="col-xs-6 text-center">
				<img class="qd" src="/Public/img/mine/qd.png"/>
				<p class="color-4c4c4c mar-t15">我要提现</p>
			</div></a>
			<a href="<?php echo U('user/bill');?>" style="color:#000000"><div class="col-xs-6 text-center">
				<img class="qd" src="/Public/img/mine/zd.png"/>
				<p class="color-4c4c4c mar-t15">我的账单</p>
			</div></a>
		</div>
	</body>
</html>