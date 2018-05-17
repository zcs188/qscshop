<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>我的卡券</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/shouhou.css" />
	</head>
	<body>
		<!--顶部标题-->
		<div class="nav text-center">
					<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">我的卡券</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row bg-fff">
				<div class="col-xs-12 pad-up10 color-333 text-center tit bor-b-f2">
					<span class="left active">
						代金券
					</span><!--
					--><span class="right">
						满减券
					</span>
				</div>
				<div class="col-xs-12 pad-up15">
	<!-- 			 <select  id="search" class="color-333 font15">
			<option value="" class="color-333 font15"><?php if(empty($keyword)): ?>请选择<?php else: ?> <?php echo ($keyword); endif; ?><img class="d pull-right" src="/Public/img/huoyun/d.png" alt="" /> </option>
			<option value="1" sbqsc="未使用" class="color-333 font15">未使用<img class="d pull-right" src="/Public/img/huoyun/d.png" alt="" /> </option>
	        <option value="2" sbqsc="已使用" class="color-333 font15">已使用<img class="d pull-right" src="/Public/img/huoyun/d.png" alt="" /> </option>
				</select> -->
					
				</div>
			</div>
<!-- 				<div class="row mar-t15 list active">
			<?php if(is_array($allcoupon)): $i = 0; $__LIST__ = $allcoupon;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-12">
				
					<div class="col-xs-12 quan padd_0">
						<div class="col-xs-4 font24 text-center pad-up20 color-eb2522 money">
							<span class="font16">￥</span><?php echo ($vo["compenser"]); ?>
							<div class="bq">代 金 券</div>
						</div>
						<div class="col-xs-8">
							<p class="font12 color-333 mar-t10 mar-b5">使用范围：<span class="color-eb2522">全店通用</span></p>
							<p class="font12 color-333 mar-b5">
								使用期限：
								<span class="color-999"><?php echo ($vo["fastTime"]); ?>至<?php echo ($vo["lastTime"]); ?></span>
							</p>
						</div>
					</div>
					
				</div><?php endforeach; endif; else: echo "" ;endif; ?>
			</div> -->
			 <!-- <span class="color-333 font15">未使用</span>
					<img class="d pull-right" src="/Public/img/huoyun/d.png" alt="" />   -->
			<div class="row mar-t15 list active">
			<?php if(is_array($dcoupon)): $i = 0; $__LIST__ = $dcoupon;if( count($__LIST__)==0 ) : echo "暂时没有代金券哟" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-12">
				
					<div class="col-xs-12 quan padd_0">
						<div class="col-xs-4 font24 text-center pad-up20 color-eb2522 money">
							<span class="font16">￥</span><?php echo ($vo["compenser"]); ?>
							<div class="bq">代 金 券</div>
						</div>
						<div class="col-xs-8">
							<p class="font12 color-333 mar-t10 mar-b5">使用范围：<span class="color-eb2522">全店通用</span></p>
							<p class="font12 color-333 mar-b5">
								使用期限：
								<span class="color-999"><?php echo ($vo["fastTime"]); ?>至<?php echo ($vo["lastTime"]); ?></span>
							</p>
						</div>
					</div>
					
				</div><?php endforeach; endif; else: echo "暂时没有代金券哟" ;endif; ?>
			</div>
			<div class="row mar-t15 list">
			<?php if(is_array($wcoupon)): $i = 0; $__LIST__ = $wcoupon;if( count($__LIST__)==0 ) : echo "暂时没有满减券哟" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-12">
				
					<div class="col-xs-12 quan padd_0">
						<div class="col-xs-4 font24 text-center pad-up20 color-eb2522 money">
							<span class="font16">￥</span><?php echo ($vo["compenser"]); ?>
							<div class="bq bg-ff5a00">满 减 券</div>
						</div>
						<div class="col-xs-8">
							<p class="font12 color-333 mar-t10 mar-b5">使用范围：<span class="color-eb2522">全店通用</span></p>
							<p class="font12 color-333 mar-b5">
								使用期限：
								<span class="color-999"><?php echo ($vo["fastTime"]); ?>至<?php echo ($vo["lastTime"]); ?></span>
							</p>
						</div>
					</div>
					
				</div><?php endforeach; endif; else: echo "暂时没有满减券哟" ;endif; ?>
			</div>
		</div>
		<div class="tickets mar-t50">
			<a href="<?php echo U('user/getcouponcenter');?>">
				<img class="center-block" src="/Public/img/lq.png"/>
			</a>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript">
	$('#search').change(function(){
	    var url = "<?php echo U('user/coupon');?>";
	  
	    location.href=url+'?search='+$('#search').val()+'&keyword='+$('#search option:selected').attr('sbqsc');
	})
		$('.tit span').click(function(){
			$('.tit span').removeClass('active');
			$(this).addClass('active');
			$('.list').removeClass('active');
			$('.list').eq($(this).index()).addClass('active');
		})
	</script>
</html>