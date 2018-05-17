<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>选择到账账户</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/xgpasword1.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font17">选择到账账户</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row bg-fff">
			<a href="<?php echo U('user/tmoney');?>" style="color:#000000">
				<div class="col-xs-12 padd_0 pad-up15 bor-b-f2 bank">
					<div class="col-xs-2 pad-r0 pad-l10">
						<span>银行卡</span>
					</div>
					<div class="col-xs-10 pad-l7">
						<img class="yh" src="/Public/img/mine/yh.png"/>
						
					</div>
					<img class="gou" src="/Public/img/mine/gou.png"/>
				</div>
			</a>
				<!-- <a href="<?php echo U('user/tmoney2');?>" style="color:#000000"><div class="col-xs-12 padd_0 pad-up15 bor-b-f2 bank">
					<div class="col-xs-2 pad-r0 pad-l10">
						<span>微信</span>
					</div>
					<div class="col-xs-10 pad-l7">
						<img class="yh" src="/Public/img/mine/wx.png"/>
					</div>
					<img class="gou active" src="/Public/img/mine/gou.png"/>
				</div></a> -->
			</div>
		<!-- 	<div class="row mar-t15">
				<div class="col-xs-12">
					<button type="button" class="mybtn color-999 font17">
						<img class="plus" src="/Public/img/mine/jia.png"/>
						添加银行卡
					</button>
				</div>
			</div> -->
		</div>
	</body>
<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript">
	$('.bank').click(function(){
		$('.bank').children('.gou').removeClass('active');
		$(this).children('.gou').addClass('active');
	})
</script>
</html>