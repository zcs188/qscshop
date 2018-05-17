<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>退货/售后</title>
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
			<span class="font16">退货/售后</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			
			<?php if(is_array($refund)): $i = 0; $__LIST__ = $refund;if( count($__LIST__)==0 ) : echo "暂时没有相关退货数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['ordreType'] == 7): ?>订单编号：<?php echo ($vo["ordreCoter"]); ?>
			<div class="row bg-fff mar-t15">
			<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有相关退货数据" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?><div class="col-xs-12 padd_0 mar-t10 pad-up10 bor-b-f2">
					<div class="col-xs-3 pad-r7">
						<img class="img-rounded img-responsive" src="<?php echo ($vo1["goodimage"]); ?>"/>
					</div>
					<div class="col-xs-9 padd_0">
						<div class="col-xs-8 padd_0">
							<p class="font12 color-333 mar-b5 heightControl-2">
								<?php echo ($vo1["goodsName"]); ?>
							</p>
							<p class="font12 color-4c4c4c heightControl-1 mar-b0">规格：<?php echo ($vo1["norme2"]); ?>【<?php echo ($vo1["norme1"]); ?>】</p>
						</div>
						<div class="col-xs-4 text-right pad-l0">
							<p class="font13 color-669900">￥<?php echo ($vo1["moneyGoods"]); ?></p>
							<p class="mar-b0">x<?php echo ($vo1["goodsNumber"]); ?></p>
						 <?php if($vo1['returnType'] == ''): ?><a href="<?php echo U('user/applyrefund',array('refundid'=>$vo1['detailid']));?>" style="color:#000000"><button type="button" class="btn-round1 bg-e60012 no-bor color-fff pull-right">申请退货</button></a>  
						         
						        <?php elseif($vo1['returnType'] == 1): ?>
						         <button type="button" class="btn-round1 bg-e60012 no-bor color-fff pull-right">退 货 中</button>
						        
						        <?php elseif($vo1['returnType'] == 2): ?>
						        <!-- <a href="<?php echo U('user/refundhandle',array('specid'=>$vo1['detailid']));?>" style="color:#000000"> -->
						        <button type="button" class="btn-round1 bg-669900 no-bor color-fff pull-right">退货完成</button>
						      <!--   </a> -->

						<?php else: ?>
						  <button type="button" class="btn-round1 bg-669900 no-bor color-fff pull-right">退货成功</button><?php endif; ?>
						
						
						</div>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有相关退货数据" ;endif; ?>
				<div class="col-xs-12 pad-up15 bor-b-f2">
					<!-- <span class="font13 color-4c4c4c">送货并入户安装</span> -->
		<span class="font12 color-666 pull-right">实际支付：<span class="font15 color-669900">￥<?php echo ($vo["payerSomme"]); ?> <?php if($vo['son1'] > 0): ?>(含运费:<?php echo ($vo["son1"]); ?>)<?php else: ?>包邮<?php endif; ?></span></span>
				</div>

			</div>
			<?php else: endif; endforeach; endif; else: echo "暂时没有相关退货数据" ;endif; ?>
		</div>
	</body>
</html>