<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>我的积分</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/integral.css"/>
	</head>
	<body>
			<!--顶部标题-->
		<div class="nav text-center">
		<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">我的积分</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 bg-82ab30">
						<a href="<?php echo U('user/lookforward');?>" class="color-fff pull-right mar-t10">
							积分商城
							<img class="r" src="/Public/img/integral/r.png"/>
						</a>
				</div>
				<div class="col-xs-12 bg-82ab30">
					<div class="user mar-t10">
						<img class="center-block" src="<?php echo ((isset($info["user_image"]) && ($info["user_image"] !== ""))?($info["user_image"]):'/Public/img/integral/per.png'); ?>"/>
					</div>
					<p class="font17 color-fff text-center mar-t15 mar-b15">
						<img class="score" src="/Public/img/integral/score.png"/>
						累计积分 : <?php echo ($jifen); ?>
					</p>
				</div>
			</div>
			<div class="row bg-fff">
				<div class="col-xs-10 col-xs-offset-1 classify text-center">
					<div class="col-xs-4 active pad-up15">
						全部
					</div>
					<div class="col-xs-4 pad-up15">
						收入
					</div>
					<div class="col-xs-4 pad-up15">
						支出
					</div>
				</div>
			</div>
			<div class="row cont-list active">
			
			<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 padd_0 bg-fff" >
					<div class="col-xs-6 text-center mar-b15">
						<img class="center-block zl" src="/Public/img/integral/text.png"/>
						<span class="zl-infor"><?php echo ($v["descriptif"]); ?></span>
					</div>
					<div class="col-xs-6 font15 mar-b15">
						<p class="mar-t20">
							<?php echo ($v["descriptif"]); ?>
							<?php if($v['sommePoids'] == 1): ?><span class="color-82ab30">+<?php echo ($v["sommeCours"]); ?></span>
					<?php else: ?>
							<span class="color-82ab30">-<?php echo ($v["sommeCours"]); ?></span><?php endif; ?>
						</p>
						<p class="font12 color-808080"><?php echo ($v["recordTime"]); ?></p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
				</div>
						<div class="row cont-list">
						<?php if(is_array($list1)): $i = 0; $__LIST__ = $list1;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 padd_0 bg-fff" >
					<div class="col-xs-6 text-center mar-b15">
						<img class="center-block zl" src="/Public/img/integral/text.png"/>
						<span class="zl-infor"><?php echo ($v["descriptif"]); ?></span>
					</div>
					<div class="col-xs-6 font15 mar-b15">
						<p class="mar-t20">
							<?php echo ($v["descriptif"]); ?>
							<span class="color-82ab30">+<?php echo ($v["sommeCours"]); ?></span>
						</p>
						<p class="font12 color-808080"><?php echo ($v["recordTime"]); ?></p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
		
			</div>
			<div class="row cont-list">
			<?php if(is_array($list2)): $i = 0; $__LIST__ = $list2;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 padd_0 bg-fff" >
					<div class="col-xs-6 text-center mar-b15">
						<img class="center-block zl" src="/Public/img/integral/text.png"/>
						<span class="zl-infor"><?php echo ($v["descriptif"]); ?></span>
					</div>
					<div class="col-xs-6 font15 mar-b15">
						<p class="mar-t20">
							<?php echo ($v["descriptif"]); ?>
							<span class="color-82ab30">-<?php echo ($v["sommeCours"]); ?></span>
						</p>
						<p class="font12 color-808080"><?php echo ($v["recordTime"]); ?></p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
	
		
			</div>
				
			
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript">
		$('.classify div').click(function() {
			$('.classify div').removeClass('active');
			$('.cont').removeClass('active');
			$('.cont').eq($(this).index()).addClass('active');
			$(this).addClass('active');
			$('.cont-list').removeClass('active');
			$('.cont-list').eq($(this).index()).addClass('active');
		})
	</script>
</html>