<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>关于七色彩</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/pasword.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<style type="text/css">
			p{
				line-height: 16px;
				font-size: 9px;
				word-break: break-all;
				text-align: justify;
			}
		</style>
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back mar-t5">
				<img src="/Public/img/r1.png"/>
				
			</button></a>
			<span class="font16">关于七色彩</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid mar-t50">
			<div class="row">
				<div class="col-xs-12 mar-t10">
					<p class="text-indent2">
						<?php echo ($about); ?>
					</p>
					
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
	</script>

</html>