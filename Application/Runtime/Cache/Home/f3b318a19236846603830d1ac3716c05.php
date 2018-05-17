<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>消息</title>
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
			<span class="font17">消 息</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont1">
			<div class="row bg-fff">
				<div class="col-xs-12 font15 pad-up15 bor-b-f2 text-center">
					<?php echo ($messageone["title"]); ?>
				</div>
				<div class="col-xs-12 font15 pad-up15 bor-b-f2">
					<p class="font13 text-indent2 line-h18">
						<?php echo ($messageone["content"]); ?>
					</p>
				</div>
				<div class="col-xs-12">
					<p class="font12 text-right pad-up15 mar-b0s"><?php echo ($messageone["create_time"]); ?></p>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
	</script>

</html>