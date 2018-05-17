<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>我的账单</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/money.css"/>
	</head>
	<body>
		<!--顶部标题-->
		<div class="nav text-center">
					<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">我的账单</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
		<?php if(is_array($bill)): $i = 0; $__LIST__ = $bill;if( count($__LIST__)==0 ) : echo "暂时相关没有数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="row bg-fff">
				<div class="col-xs-12 pad-up10  bor-b-f2">
					<p class="font12 color-4c4c4c mar-b0">订单编号：<?php echo ($vo["ordreCoter"]); ?></p>
				</div>
				<div class="col-xs-12 pad-up15">
					<div class="col-xs-4 font18 color-666 mar-b0 mar-t10">
						￥<?php echo ($vo["ordreSomme"]); ?>
					</div>
					<div class="col-xs-8 text-right">
					   <?php if(vo.ordreType == 1): ?><p class="font15 color-669900 mar-b0">已结算</p>
					
						<?php else: ?> <p class="font15 color-cf000f mar-b0 mar-t10">未结算</p><?php endif; ?>
					
						<p class="color-666 mar-b0"><?php echo ($vo["addTime"]); ?></p>
					</div>
						
				</div>
			</div><?php endforeach; endif; else: echo "暂时相关没有数据" ;endif; ?>
			
		</div>
	</body>
</html>