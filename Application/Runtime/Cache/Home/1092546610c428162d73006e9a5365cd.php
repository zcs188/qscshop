<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>设  置</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/safe.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">设 置</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont1">
			<div class="row bg-fff mar-t15">
				<a href="<?php echo U('user/information');?>"><div class="col-xs-12 font15 pad-up15 bor-b-f2">
					
						<span class="color-1a1a1a">个人信息</span>
						<span class="color-999 pull-right"><img class="r" src="/Public/img/huoyun/r.png"/> </span>
					
				</div>
				</a>
				<a href="<?php echo U('user/address');?>">
				<div class="col-xs-12 font15 pad-up15 bor-b-f2">
					
						<span class="color-1a1a1a">收货地址</span>
						<span class="color-999 pull-right"><img class="r" src="/Public/img/huoyun/r.png"/> </span>
					
				</div>
				</a>
				<?php if($info['userType'] == 6): ?><a href="<?php echo U('user/installcheck');?>">
				<div class="col-xs-12 font15 pad-up15 bor-b-f2">
					
						<span class="color-1a1a1a">审核资料</span>
						<span class="color-999 pull-right"><img class="r" src="/Public/img/huoyun/r.png"/> </span>
					
				</div>
					</a>
					<?php elseif($info['userType'] == 5): ?>
					<a href="<?php echo U('user/goodsmangecheck');?>">
					<div class="col-xs-12 font15 pad-up15 bor-b-f2">
					
						<span class="color-1a1a1a">审核资料</span>
						<span class="color-999 pull-right"><img class="r" src="/Public/img/huoyun/r.png"/> </span>
					
					</div>
					</a>
					<?php else: endif; ?>
				<a href="<?php echo U('user/safecenter');?>">
				<div class="col-xs-12 font15 pad-up15 bor-b-f2">
					
						<span class="color-1a1a1a">安全中心</span>
						<span class="color-999 pull-right"><img class="r" src="/Public/img/huoyun/r.png"/> </span>
					
				</div>
				</a>
			</div>
			<div class="row bg-fff mar-t15">
				<a href="<?php echo U('user/aboutqisecai');?>">
				<div class="col-xs-12 font15 pad-up15 bor-b-f2">
				
						<span class="color-1a1a1a">关于七色彩</span>
						<span class="color-999 pull-right"><img class="r" src="/Public/img/huoyun/r.png"/> </span>
					
				</div>
				</a>
			</div>
		</div>
		<div class="container-fluid mar-t50">
			<div class="row">
				<div class="col-xs-12">
					<a href="<?php echo U('user/loginout');?>"><button type="button" class="btn-block font18 bor-radius5 color-fff bg-e60012 no-bor pad-up10"> 退出当前账号</button></a>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
	</script>

</html>