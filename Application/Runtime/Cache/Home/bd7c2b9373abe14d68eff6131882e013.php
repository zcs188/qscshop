<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>订单查询</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/orderAdmin.css" />
		<link rel="stylesheet" href="/Public/Bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/Public/css/MyOrder.css" />
<script type="text/javascript" src="/Public/Bootstrap/js/jquery.min.js" ></script>
	</head>
	<script type="text/javascript">
	$(function(){
		
		$('.PaymentOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').show();	
			$('.ShouHuo').hide();
			$('.PinJia1').hide();
			
		});	
		
		$('.ReceiptOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.ShouHuo').show();
			$('.PinJia1').hide();
			
		});	
		$('.EvaluationOrder1').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.ShouHuo').hide();
			$('.PinJia1').show();
			
		});	
		
			
	});
</script>
	<body>
		<!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">订单查询</span>
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
					<div class="OrderTypeBox mar-b5">
					<?php if($info['userType'] == 3): ?><div class="OrderType2 PaymentOrder TypeClick" >公司</div>
	            <div class="OrderType2 ReceiptOrder " >个人</div>
				  <div class="OrderType2 EvaluationOrder1" >客户</div>
				<?php elseif($info['userType'] == 4): ?>
				  <div class="OrderType3 ReceiptOrder " >个人</div>
	            <div class="OrderType3 EvaluationOrder1 " >客户</div>
				 
				<?php else: endif; ?>
	        </div>
			
					
				</div>
			</div>
		
			
			      <!--公司内部销售-->
        		<?php if(is_array($myrank)): $i = 0; $__LIST__ = $myrank;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="OredrBox DaiFu">
		<?php if($v['userType'] == 3): ?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-2 padd_0">
					
					
						<?php if($v["user_image"] != ''): ?><img class="people"  src="<?php echo ($v["user_image"]); ?>" style="width:30px;height:30px"/>
						<?php else: ?>
						<img class="people"  src="/Public/img/person/tx.png" style="width:30px;height:30px"/><?php endif; ?>
					</div>
					<div class="col-xs-10 pad-r0">
						<p class="mar-t10">
							昵称:<?php echo ($v["infoName"]); ?>
							
							<span class="pull-right"><font color="green">可分成:</font></span>
							</br>
							<span class=" pull-right"><font color="red">待分成:</font></span>
							<!--<?php if($v['son1'] == 7): ?><span class="color-669900 pull-right">￥<?php echo ($v["salesQuota"]); ?></span>
							<?php else: ?>
							<span class="color-c30319 pull-right">￥<?php echo ($v["salesQuota"]); ?></span><?php endif; ?>-->
							
						</p>
					</div>
				</div>
					<?php else: endif; ?>
			</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
	  <!--个人销售-->
        		<?php if(is_array($myrank)): $i = 0; $__LIST__ = $myrank;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="OredrBox ShouHuo">
	
          	<?php if($v['userType'] == 4): ?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-2 padd_0">
					
					
						<?php if($v["user_image"] != ''): ?><img class="people"  src="<?php echo ($v["user_image"]); ?>" style="width:30px;height:30px"/>
						<?php else: ?>
						<img class="people"  src="/Public/img/person/tx.png" style="width:30px;height:30px"/><?php endif; ?>
					</div>
					<div class="col-xs-10 pad-r0">
						<p class="mar-t10">
							昵称:<?php echo ($v["infoName"]); ?>
							
							<span class="pull-right"><font color="green">可分成:</font></span>
						</br>
							<span class=" pull-right"><font color="red">待分成:</font></span>
						
							<!--<?php if($v['son1'] == 7): ?><span class="color-669900 pull-right">￥<?php echo ($v["salesQuota"]); ?></span>
							<?php else: ?>
							<span class="color-c30319 pull-right">￥<?php echo ($v["salesQuota"]); ?></span><?php endif; ?>-->
							
						</p>
					</div>
				</div>
				
	<?php else: endif; ?>
			</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			 <!--用户-->
        		<?php if(is_array($myrank)): $i = 0; $__LIST__ = $myrank;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="OredrBox PinJia1">
	
          	<?php if($v['userType'] == 1): ?><div class="col-xs-12 pad-up10 bor-b-f2">
					<div class="col-xs-2 padd_0">
					
					
						<?php if($v["user_image"] != ''): ?><img class="people"  src="<?php echo ($v["user_image"]); ?>" style="width:30px;height:30px"/>
						<?php else: ?>
						<img class="people"  src="/Public/img/person/tx.png" style="width:30px;height:30px"/><?php endif; ?>
					</div>
					<div class="col-xs-10 pad-r0">
						<p class="mar-t10">
							昵称:<?php echo ($v["infoName"]); ?>
							<span class="pull-right"><font color="green">可分成:</font></span>
							</br>
							<span class=" pull-right"><font color="red">待分成:</font></span>
							<!--<?php if($v['son1'] == 7): ?><span class="color-669900 pull-right">￥<?php echo ($v["salesQuota"]); ?></span>
							<?php else: ?>
							<span class="color-c30319 pull-right">￥<?php echo ($v["salesQuota"]); ?></span><?php endif; ?>-->
							
						</p>
					</div>
				</div>
				<?php else: endif; ?>
			</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			
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

<!--
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>订单查询</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/shouhou.css" />
	</head>
	<body>
		<!--顶部标题
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">订单查询</span>
		</div>
		<!--顶部标题
		<div class="container-fluid cont">
			<div class="row bg-fff">
			
			<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 padd_0 mar-t10 pad-up10 bor-b-f2">
					<div class="col-xs-3 pad-r7">
						<img class="img-rounded img-responsive" src="<?php echo ($v['image']); ?>"/>
					</div>
					
					<a href="<?php echo U('user/orderdetail',array('orderid'=>$v['id']));?>" style="color:#000000"><div class="col-xs-9 padd_0">
						<div class="col-xs-8 padd_0">
							<p class="font12 color-333 mar-b5 heightControl-2">
								<?php echo ($v['goodsName']); ?>
							</p>
							<p class="font12 color-4c4c4c heightControl-1 mar-b0">规格：<?php echo ($v['norme2']); ?>【<?php echo ($v['norme1']); ?>】</p>
						</div>
						<div class="col-xs-4 text-right pad-l0">
							<p class="font13 color-669900">￥<?php echo ($v["moneyGoods"]); ?></p>
							<p class="mar-b0">x<?php echo ($v["goodsNumber"]); ?></p>
						</div>
					</div></a>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
		</div>
	</body>
</html>-->