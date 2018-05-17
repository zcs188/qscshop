<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>货运评价处理回复</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/tuihuo.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
				<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
				<script type="text/javascript" src="/Public/js/jquery.js" ></script>
		        <script type="text/javascript" src="/Public/js/plupload.full.min.js" ></script>
        <script type="text/javascript" src="/Public/js/qiniu.js" ></script>
	</head>
	<body>
		 <!--顶部标题-->
		<div class="nav text-center">
					<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">货运评价处理回复</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
	
				<div class="col-xs-12">
					<textarea class="font12 color-666" ><?php if(empty($content)): else: echo ($content); endif; ?></textarea>
				</div>
			</div>
		</div>
		
	</body>
	
	
</html>