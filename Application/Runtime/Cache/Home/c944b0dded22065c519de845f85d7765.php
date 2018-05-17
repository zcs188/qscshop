<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>提现</title>
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
			<span class="font17">提现</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 padd_0 bg-fff pad-up15">
					<div class="col-xs-2">
						<img class="img-responsive" src="/Public/img/mine/wx.png"/>
					</div>
					<div class="col-xs-10 pad-l0">
						<span>微信账户</span>
						<span class="pull-right">
							用户15213145121
							<img class="r" src="/Public/img/huoyun/r.png"/>
						</span>
					</div>
				</div>
				<div class="col-xs-12 bg-fff pad-up15 mar-t15">
					<span>提现金额</span>
					<input type="text" class="inp" />
				</div>
				<div class="col-xs-12">
					<p class="font12 mar-t5">余额：200.00 <span class="disply-ib mar-l5 color-972030">*只能提现100的倍数</span></p>
				</div>
			</div>
		</div>
		<div class="col-xs-12 mar-t50 padd_0">
			<a href="<?php echo U('user/performancesearch');?>"><button type="button" class="btn-block pad-up10 color-999 font17 bg-ccc no-bor">24小时内到账，确认提现</button></a>
		</div>
	</body>

</html>