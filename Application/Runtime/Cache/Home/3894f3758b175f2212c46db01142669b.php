<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>礼品详情</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/gift.css" />
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
		<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">积分商品详情</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 bg-fff">
						<img class="img-responsive center-block" src="/Public/img/js/pic.png" />
						<p class="color-333 text-center mar-t10">煮蛋器</p>
						<div class="tip">
							<img src="/Public/img/js/duihuan.png" />
						</div>
				</div>
				<div class="col-xs-12 mar-t10 bg-fff pad-up10">
					<p class="color-333 font15">
						【每会员限兑1件】煮蛋器 兑换攻略：完善资料+邀请27位好友注册
					</p>
					<p class="font24 color-ff5b01">14500积分</p>
					<p class="font15 color-999">价格：<s>￥124.00</s></p>
					<p class="font15 color-999">剩余可兑换数量：1</p>
				</div>
				<div class="col-xs-12 mar-t5 padd_0 bg-fff">
					<p class="r"> 礼品描述</p>
				</div>
				<div class="col-xs-12 bg-fff">
					<table class="table font13 mar0">
						<tr class="bg-e6e6e6">
							<td class=" b">品牌</td>
							<td>七色彩家具</td>
						</tr>
						<tr>
							<td class="b">尺寸</td>
							<td>高16.4CM；宽14.8CM</td>
						</tr>
						<tr class="bg-e6e6e6">
							<td class=" b">颜色分类</td>
							<td>粉色</td>
						</tr>
						<tr>
							<td class="b">煮蛋器容量</td>
							<td>10枚</td>
						</tr>
						<tr class="bg-e6e6e6">
							<td class=" b">功能</td>
							<td>蒸蛋羹  蒸面食  煮蛋</td>
						</tr>
						<tr>
							<td class="b">产品介绍</td>
							<td>高品质多功能煮蛋器;蒸煮热多功能;防干烧断电;食品级材质</td>
						</tr> 
					</table>
				</div>
				<div class="col-xs-12 mar-t5 padd_0 bg-fff">
					<p class="r"> 礼品详情</p>
					<p class="text-center bg-ff5a00 color-fff font17 pad-up15 font-w">时尚智能煮蛋器</p>
				</div>
				<div class="col-xs-12 bg-fff">
					<img class="img-responsive center-block" src="/Public/img/js/pic.png" />
				</div>
			</div>
		</div>
		<div class="pay">
			<a href="<?php echo U('good/jifensc');?>"><button type="button" class="text-center bg-ff5a00 color-fff font17 pad-up15 mybtn btn-block font-w">我要兑换</button></a>
		</div>
	</body>

</html>