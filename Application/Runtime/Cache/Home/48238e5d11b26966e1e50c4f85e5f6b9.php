<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>积分商城</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/jfsc.css" />
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
				<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">积分商城</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid bg-fff mar-t50">
			<div class="row">
				<div class="col-xs-12 padd_0">
					<img class="img-responsive" src="/Public/img/js/jftit.png" />
				</div>
				<div class="col-xs-12 font15 pad-up10 bor-b-cccccc">
					<span>可用积分：100</span>
					<span class="pull-right">我的礼品</span>
				</div>
			</div>
		</div>
		<ul class="list-unstyled tit bg-fff mar0">
			<li class="active">全部</li>
			<li>新人礼</li>
			<li>生日礼</li>
			<li>周年礼</li>
			<li>家居日用</li>
		</ul>
		<div class="container-fluid cont">
			<div class="row cont-list active" >
				<div class="col-xs-12">
				<?php if(is_array($jifengood)): foreach($jifengood as $key=>$v): ?><div class="list bg-fff">
					<a href="<?php echo U('good/giftdetail',array('jifengdid'=>$v['id']));?>">
						<img class="img-responsive mar-t10" src="<?php echo ($v["goodDefaultImg"]); ?>" />
						<div class="bg-fff pad-lr5">
							<p class="color-333 text-center pad-t10"><?php echo ($v["goodName"]); ?></p>
							<!-- <p class="color-666 heightControl-1">【每会员限兑1件】煮蛋器</p> -->
							<p class="mar-b10">
								<span class="color-c21b1b font13"><?php echo ($v["payPoint"]); ?>积分</span>
								<span class="font13  color-666 pull-right">￥<?php echo ($v["goodMoney"]); ?></span>
							</p>
						</div>
						<div class="tip">
							<img src="/Public/img/js/duihuan.png"/>
						</div></a>
					</div><?php endforeach; endif; ?>
<!-- 					<div class="list bg-fff">
					<a href="<?php echo U('good/giftdetail');?>">
						<img class="img-responsive mar-t10" src="/Public/img/js/pic.png" />
						<div class="bg-fff pad-lr5">
							<p class="color-333 text-center pad-t10">煮蛋器</p>
							<p class="color-666 heightControl-1">【每会员限兑1件】煮蛋器</p>
							<p class="mar-b10">
								<span class="color-c21b1b font13">14500积分</span>
								<span class="font13  color-666 pull-right">￥124.00</span>
							</p>
						</div>
						<div class="tip">
							<img src="/Public/img/js/duihuan.png"/>
						</div></a>
					</div>
					<div class="list bg-fff">
					<a href="<?php echo U('good/giftdetail');?>">
						<img class="img-responsive mar-t10" src="/Public/img/js/pic.png" />
						<div class="bg-fff pad-lr5">
							<p class="color-333 text-center pad-t10">煮蛋器</p>
							<p class="color-666 heightControl-1">【每会员限兑1件】煮蛋器</p>
							<p class="mar-b10">
								<span class="color-c21b1b font13">14500积分</span>
								<span class="font13  color-666 pull-right">￥124.00</span>
							</p>
						</div>
						<div class="tip">
							<img src="/Public/img/js/duihuan.png"/>
						</div></a>
					</div>
					<div class="list bg-fff">
					<a href="<?php echo U('good/giftdetail');?>">
						<img class="img-responsive mar-t10" src="/Public/img/js/pic.png" />
						<div class="bg-fff pad-lr5">
							<p class="color-333 text-center pad-t10">煮蛋器</p>
							<p class="color-666 heightControl-1">【每会员限兑1件】煮蛋器</p>
							<p class="mar-b10">
								<span class="color-c21b1b font13">14500积分</span>
								<span class="font13  color-666 pull-right">￥124.00</span>
							</p>
						</div>
						<div class="tip">
							<img src="/Public/img/js/duihuan.png"/>
						</div></a>
					</div> -->
				</div>
			</div>
		</div>
		<div class="container-fluid b-t">
			<div class="row">
				<div class="col-xs-4 bg-669900 pad-up10">
					<a href="<?php echo U('user/luck');?>"><img class="img-responsive" src="/Public/img/js/haoli.png"/></a>
				</div>
				<div class="col-xs-4 pad-up10 r">
					<a href="<?php echo U('user/luck');?>"><img class="img-responsive" src="/Public/img/js/choujjiang.png"/></a>
				</div>
				<div class="col-xs-4 pad-up10">
					<a href="<?php echo U('user/luck');?>"><img class="img-responsive" src="/Public/img/js/jf.png"/></a>
				</div>
			</div>
		</div>
	
	
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript">
		$('.tit li').click(function(){
			$('.tit li').removeClass('active');
			$(this).addClass('active');
			$('.cont-list').removeClass('active');
			$('.cont-list').eq($(this).index()).addClass('active');
		})
	</script>

</html>