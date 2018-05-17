<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>提现记录</title>
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
			<span class="font16">提现记录</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
		<?php if(is_array($record)): $i = 0; $__LIST__ = $record;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="row bg-fff bor-b-f2">
				<div class="col-xs-12 pad-up15">
					<div class="col-xs-8 padd_0">
						<p class="font15 mar-b0"><?php echo ($vo["descriptif"]); ?></p>
						<p class="color-4c4c4c mar-b0"><?php echo ($vo["recordTime"]); ?></p>
					</div>
					<div class="col-xs-4 font18  mar-b0 mar-t10 text-right padd_0">
						￥<?php echo ($vo["sommeCours"]); ?>
					</div>
				</div>
			</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
		</div>
	</body>

</html>