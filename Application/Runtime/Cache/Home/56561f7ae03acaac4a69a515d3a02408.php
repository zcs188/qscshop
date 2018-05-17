<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>销售管理，我的排名</title>
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
			<span class="font16">我的排名</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row bg-fff">
				<div class="col-xs-12 text-center">
					<div class="col-xs-4 list active">
						销售额度
					</div>
					<div class="col-xs-4 list">
						推荐排名
					</div>
					<div class="col-xs-4 list">
						我的推广
					</div>
				</div>
			</div>
			<div class="row bg-fff mar-t10 cont-list active">
				<div class="col-xs-12 pad-up5 bor-b-f2">
					<a href="<?php echo U('user/activityrule');?>" style="color:#000000"><img class="wh" src="/Public/img/mine/wh.png"/></a>
					<span class="pull-right font13">
					  
					    <select id="search" class="color-669900 month">
						         <option value=""  class="mybtn dd color-669900 pull-right"><?php if(empty($keyword)): ?>请选择<?php else: ?> <?php echo ($keyword); endif; ?><img src="/Public/img/mine/dd.png" alt="" /></option>
						    
						        <option value="2"  sbqsc="季度" class="month">季度<img src="/Public/img/mine/dd.png" alt="" /></option>
						    </select>
						    
						<!-- <span class="color-669900 month">本月</span>&nbsp;&nbsp;
						<span class="month">季度</span> -->
					</span>
				</div>
				 <?php if(empty($merrank)): else: ?>
				<div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-3 padd_0">
						<span class="ph1 font20 color-c30319">我的排名:<?php echo ($rank[0]['sort']); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销售额:<?php echo ($rank1); ?></span>
						<?php if($merrank["user_image"] != ''): ?><img class="people"  src="<?php echo ($merrank["user_image"]); ?>" style="width:30px;height:30px"/>
						<?php else: ?>
						<img class="people"  src="/Public/img/person/tx.png" style="width:30px;height:30px"/><?php endif; ?>
					</div>
					<div class="col-xs-9 pad-r0 pad-l7">
						<p class="mar-t10 color-c30319">
							<?php echo ($merrank["infoName"]); ?>
							<span class=" pull-right">销售额:￥<?php echo ($merrank["salesQuota"]); ?></span>
						</p>
					</div>
				</div><?php endif; ?> 
				<?php if(is_array($allrank1)): $k = 0; $__LIST__ = $allrank1;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($k % 2 );++$k;?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-3 padd_0">
					<?php if($k == 1): ?><img class="ph" src="/Public/img/mine/jin.png"/>
					<?php elseif($k == 2): ?><img class="ph" src="/Public/img/mine/yin.png"/>
					<?php else: ?><img class="ph" src="/Public/img/mine/tong.png"/><?php endif; ?>
						<?php if($v["user_image"] != ''): ?><img class="people"  src="<?php echo ($v["user_image"]); ?>" style="width:30px;height:30px"/>
						<?php else: ?>
						<img class="people"  src="/Public/img/person/tx.png" style="width:30px;height:30px"/><?php endif; ?>
						
					</div>
					<div class="col-xs-9 pad-r0 pad-l7">
						<p class="mar-t10">
							<?php echo ($v["infoName"]); ?>
							<span class=" pull-right">销售额:￥<?php echo ($v["salesQuota"]); ?></span>
						</p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
				<?php if(is_array($allrank)): $k = 0; $__LIST__ = $allrank;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($k % 2 );++$k;?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-3 padd_0">
						<span class="ph1 font20 color-808080"><?php echo ($k); ?></span>
						<?php if($v["user_image"] != ''): ?><img class="people"  src="<?php echo ($v["user_image"]); ?>" style="width:30px;height:30px"/>
						<?php else: ?>
						<img class="people"  src="/Public/img/person/tx.png" style="width:30px;height:30px"/><?php endif; ?>
					</div>
					<div class="col-xs-9 pad-r0 pad-l7">
						<p class="mar-t10">
							<?php echo ($v["infoName"]); ?>
							<span class=" pull-right">销售额:￥<?php echo ($v["salesQuota"]); ?></span>
						</p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
			
					<div class="row bg-fff mar-t10 cont-list">
					
				<div class="col-xs-12 pad-up5 bor-b-f2">
				
					<a href="<?php echo U('user/activityrule1');?>" style="color:#000000"><img class="wh" src="/Public/img/mine/wh.png"/></a>
					<span style="margin-left:40px;"><?php if($berank == ''): ?>您不能参与排名<?php else: ?>我的排名:第<?php echo ($berank); ?>名<?php endif; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;推荐人数:<?php echo ($myrank); ?></span>
					<span class="pull-right font13">
						    	      <select id="search1" class="color-669900 month">
									   <option value=""  class="mybtn dd color-669900 pull-right"><?php if(empty($keyword1)): ?>请选择<?php else: ?> <?php echo ($keyword1); endif; ?><img src="/Public/img/mine/dd.png" alt="" /></option>
						        <option value="2"  sbqsc1="季度" class="month">季度<img src="/Public/img/mine/dd.png" alt="" /></option>
						    </select>
					</span>
				</div>
							
				<?php if(is_array($tui)): $k = 0; $__LIST__ = $tui;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($k % 2 );++$k; if($k < 4): ?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-3 padd_0">
				 
					<?php if($k == 1): ?><span class="ph1 font20 color-808080" ><img class="ph" src="/Public/img/one.jpg"/></span>
					<?php elseif($k == 2): ?><span class="ph1 font20 color-808080" ><img class="ph" src="/Public/img/two.jpg"/></span>
					<?php elseif($k == 3): ?><span class="ph1 font20 color-808080" ><img class="ph" src="/Public/img/san.jpg"/></span>
					<?php else: ?><span class="ph1 font20 color-808080" style="margin-left:8px;"><font size="3"><?php echo ($k); ?></font></span><?php endif; ?> 
						
						<?php if($v["user_image"] != ''): ?><img class="people"  src="<?php echo ($v["user_image"]); ?>" style="width:30px;height:30px"/>
						<?php else: ?>
						<img class="people"  src="/Public/img/person/tx.png" style="width:30px;height:30px"/><?php endif; ?>
					</div>
					<div class="col-xs-9 pad-r0 pad-l7">
						<p class="mar-t10">
							<?php echo (getsubstr1($v["infoName"],0,8)); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;推荐<?php echo ($v["son"]); ?>人
						</p>
					</div>
		
				
				</div>
					<?php else: endif; endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
                		<?php if(is_array($tui1)): $k = 0; $__LIST__ = $tui1;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($k % 2 );++$k;?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-3 padd_0">
				 
					
					<span class="ph1 font20 color-808080" style="margin-left:8px;"><font size="3"><?php echo ($k+2); ?></font></span>
					
						
						<?php if($v["user_image"] != ''): ?><img class="people"  src="<?php echo ($v["user_image"]); ?>" style="width:30px;height:30px"/>
						<?php else: ?>
						<img class="people"  src="/Public/img/person/tx.png" style="width:30px;height:30px"/><?php endif; ?>
					</div>
					<div class="col-xs-9 pad-r0 pad-l7">
						<p class="mar-t10">
							<?php echo (getsubstr1($v["infoName"],0,8)); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;推荐<?php echo ($v["son"]); ?>人
						</p>
					</div>
		
				
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
		
	
			</div>
					<div class="row bg-fff mar-t10 cont-list">
				<div class="col-xs-12 pad-up5 bor-b-f2">
					<a href="<?php echo U('user/activityrule2');?>" style="color:#000000"><img class="wh" src="/Public/img/mine/wh.png"/></a>
					<span class="pull-right font13">
						     <select id="search" class="color-669900 month">
						    	<option value="1"  sbqsc="本月" class="color-669900 month">本月<img src="/Public/img/mine/dd.png" alt="" /></option>
						        <option value="2"  sbqsc="季度" class="month">季度<img src="/Public/img/mine/dd.png" alt="" /></option>
						    </select>
					</span>
				</div>
						<?php if(is_array($tui)): $k = 0; $__LIST__ = $tui;if( count($__LIST__)==0 ) : echo "此模块尚未开通！！！！" ;else: foreach($__LIST__ as $key=>$v): $mod = ($k % 2 );++$k;?><!-- 				<div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-3 padd_0">
					<?php if($k == 1): ?><img class="ph" src="/Public/img/mine/jin.png"/>
					<?php elseif($k == 2): ?><img class="ph" src="/Public/img/mine/yin.png"/>
					<?php else: ?><img class="ph" src="/Public/img/mine/tong.png"/><?php endif; ?>
						
						<img class="people"  src="<?php echo ($v["user_image"]); ?>"/>
					</div>
					<div class="col-xs-9 pad-r0 pad-l7">
						<p class="mar-t10">
							<?php echo ($v["infoName"]); ?>
							<span class=" pull-right">推荐<?php echo ($count); ?>人</span>
						</p>
					</div>
				</div>
	 --><?php endforeach; endif; else: echo "此模块尚未开通！！！！" ;endif; ?>
	
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript">
		$('#search').change(function(){
	    var url = "<?php echo U('user/ranking');?>";
	  
	    location.href=url+'?search='+$('#search').val()+'&keyword='+$('#search option:selected').attr('sbqsc');
	})
		$('#search1').change(function(){
	    var url = "<?php echo U('user/ranking');?>";
	  
	    location.href=url+'?search1='+$('#search1').val()+'&keyword1='+$('#search1 option:selected').attr('sbqsc1');
	})
		$('.list').click(function(){
			$('.list').removeClass('active');
			$(this).addClass('active');
			$('.cont-list').removeClass('active');
			$('.cont-list').eq($(this).index()).addClass('active');
		})
		$('.month').click(function(){
			$('.month').removeClass('color-669900');
			$(this).addClass('color-669900');
		})
	</script>
</html>