<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>业绩查询</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/money.css" />
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
					<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">业绩查询</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont1">
			<div class="row">
				<div class="col-xs-12 bg-669900">
					<p class="font18 color-fff mar-b0 mar-t15">可提现余额（元）</p>
					<p class="font50 color-fff mar-b0 mar-t10">
						<img class="money" src="/Public/img/mine/money.png"/>
						<?php echo ($account["accuntBalance"]); ?>
					</p>
					<p class="pull-right mar-b15">
						<a href="<?php echo U('user/tmoney1');?>"><button type="button" class="btn-round3 bg-fff no-bor font17">提现</button></a>
					</p>
				</div>
			</div>
			<div class="row bg-fff">
				<div class="col-xs-12 font17 text-center pad-up10 bor-b-f2">
					提现记录
				</div>
			<?php if(is_array($record)): $i = 0; $__LIST__ = $record;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-12 pad-up15 bor-b-f2">
					<div class="col-xs-8 padd_0">
						<p class="font15 mar-b0"><?php echo ($vo["descriptif"]); ?></p>
						<p class="color-4c4c4c mar-b0"><?php echo ($vo["recordTime"]); ?></p>
					</div>
					<div class="col-xs-4 font18  mar-b0 mar-t10 text-right padd_0">
						￥<?php echo ($vo["sommeCours"]); ?>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
		</div>
		<div class="search bg-fff">
			<a href="<?php echo U('user/orderfind');?>"><button type="button" class="btn-round4 bg-669900 no-bor color-fff"> 订单查询</button></a>
		<!-- 	<span class="pull-right">
				<button type="button" class="btn-round4  color-666">上一页</button>
				<button type="button" class="btn-round4  color-666">下一页</button>
			</span> -->
		</div>
	</body>

</html>