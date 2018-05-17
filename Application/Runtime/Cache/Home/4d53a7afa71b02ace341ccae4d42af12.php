<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>团队管理</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/orderAdmin.css" />
	</head>
	<body>
		<!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">团队管理</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row bg-fff">
				<div class="col-xs-12 pad-up10 bor-b-f2">
				          <!--  <select id="search" class="mybtn dd color-669900 pull-right">
				                <option value=""  class="mybtn dd color-669900 pull-right"><?php if(empty($keyword)): ?>请选择<?php else: ?> <?php echo ($keyword); endif; ?><img src="/Public/img/mine/dd.png" alt="" /></option>
						    	<option value="1" sbqsc="本月" class="mybtn dd color-669900 pull-right">本月<img src="/Public/img/mine/dd.png" alt="" /></option>
						        <option value="2" sbqsc="季度" class="mybtn dd color-669900 pull-right">季度<img src="/Public/img/mine/dd.png" alt="" /></option>
						    </select> -->
					<!-- <button type="button" class="mybtn dd color-669900 pull-right">本月<img src="/Public/img/mine/dd.png" alt="" /></button> -->
				</div>
				
				<div class="col-xs-12 text-center">
					<div class="col-xs-3 list active">
						全部
					</div>
					<?php if($info['userType'] == 2): ?><div class="col-xs-3 list">
						公司
					</div>

					<?php elseif($info['userType'] == 4): ?>

					<div class="col-xs-3 list">
						个人
					</div>
					<?php else: ?>
					<div class="col-xs-3 list">
						客户
					</div><?php endif; ?>
					
				</div>
			</div>
			<span ><font size="3" style="color:green;margin-left:80px;" >累计:&nbsp;&nbsp;<font size="1" color="000000"><?php echo ($ljperson); ?>人</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本月新增:&nbsp;&nbsp;<font size="1" color="000000"><?php echo ($dmonthperson); ?>人</font></font></span>
			<div class="row bg-fff mar-t10 cont-list active">
			<?php if(is_array($myrank)): $i = 0; $__LIST__ = $myrank;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-2 padd_0">
					
						<?php if($v["user_image"] != ''): ?><img class="img-responsive"  src="<?php echo ($v["user_image"]); ?>"/>
						<?php else: ?>
						<img class="img-responsive"  src="/Public/img/person/tx.png" /><?php endif; ?>
					</div>
					<div class="col-xs-10 pad-r0">
						<p class="mar-t10">
							昵称:<?php echo ($v["infoName"]); ?>
							<?php if($v["acc_phone"] != ''): ?><span class="pull-right">电话:<?php echo ($v["acc_phone"]); ?></span>
							<?php else: ?>
							<span class=" pull-right">暂无电话</span><?php endif; ?>
							<!--<?php if($v['son1'] == 7): ?><span class="color-669900 pull-right">￥<?php echo ($v["salesQuota"]); ?></span>
							<?php else: ?>
							<span class="color-c30319 pull-right">￥<?php echo ($v["salesQuota"]); ?></span><?php endif; ?>-->
							
						</p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
				
			</div>
			<div class="row bg-fff mar-t10 cont-list">
			
						<?php if(is_array($myrank)): $i = 0; $__LIST__ = $myrank;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-2 padd_0">
					
						<?php if($v["user_image"] != ''): ?><img class="img-responsive"  src="<?php echo ($v["user_image"]); ?>"/>
						<?php else: ?>
						<img class="img-responsive"  src="/Public/img/person/tx.png" /><?php endif; ?>
					</div>
					<div class="col-xs-10 pad-r0">
						<p class="mar-t10">
							昵称:<?php echo ($v["infoName"]); ?>
							<?php if($v["acc_phone"] != ''): ?><span class="pull-right">电话:<?php echo ($v["acc_phone"]); ?></span>
							<?php else: ?>
							<span class=" pull-right">暂无电话</span><?php endif; ?>
							<!--<?php if($v['son1'] == 7): ?><span class="color-669900 pull-right">￥<?php echo ($v["salesQuota"]); ?></span>
							<?php else: ?>
							<span class="color-c30319 pull-right">￥<?php echo ($v["salesQuota"]); ?></span><?php endif; ?>-->
							
						</p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
			<div class="row bg-fff mar-t10 cont-list">
						<?php if(is_array($myrank)): $i = 0; $__LIST__ = $myrank;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-2 padd_0">
					
						<?php if($v["user_image"] != ''): ?><img class="img-responsive"  src="<?php echo ($v["user_image"]); ?>"/>
						<?php else: ?>
						<img class="img-responsive"  src="/Public/img/person/tx.png" /><?php endif; ?>
					</div>
					<div class="col-xs-10 pad-r0">
						<p class="mar-t10">
							昵称:<?php echo ($v["infoName"]); ?>
							<?php if($v["acc_phone"] != ''): ?><span class="pull-right">电话:<?php echo ($v["acc_phone"]); ?></span>
							<?php else: ?>
							<span class=" pull-right">暂无电话</span><?php endif; ?>
							<!--<?php if($v['son1'] == 7): ?><span class="color-669900 pull-right">￥<?php echo ($v["salesQuota"]); ?></span>
							<?php else: ?>
							<span class="color-c30319 pull-right">￥<?php echo ($v["salesQuota"]); ?></span><?php endif; ?>-->
							
						</p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
		</div>
		<div class="orderbottom">
			<div class="wc">
				<span class="bz bg-669900"></span>
				可分成
			</div>
			<div class="wc">
				<span class="bz bg-c30319"></span>
				待分成
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript">
	$('#search').change(function(){
	    var url = "<?php echo U('user/ordermange');?>";
	  
	    location.href=url+'?search='+$('#search').val()+'&keyword='+$('#search option:selected').attr('sbqsc');
	})
		$('.list').click(function(){
			$('.list').removeClass('active');
			$(this).addClass('active');
			$('.cont-list').removeClass('active');
			$('.cont-list').eq($(this).index()).addClass('active');
		})
	</script>
</html>