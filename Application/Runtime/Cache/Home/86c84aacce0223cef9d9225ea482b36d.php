<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>订单详情</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/dingdanxq.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">订单详情</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 padd_0">
				<?php if($detail['ordreType'] == 0): ?><p class="mar0 color-fff tit font-w">待付款</p>
					<?php elseif(($detail['ordreType'] > 0) AND ($detail['ordreType'] < 6)): ?>
					<p class="mar0 color-fff tit font-w">待收货</p>
					<?php else: ?>
					<p class="mar0 color-fff tit font-w">安装评价</p><?php endif; ?>
				</div>
				<div class="col-xs-12 pad-up10 bg-fff">
					<p class="mar-b5 font14 color-333 font-w pad-l10">
						<span class="name"><?php echo ($detail["name"]); ?></span>
						<span><?php echo ($detail["phone"]); ?></span>
					</p>
					<p class="font12">
						<div class="col-xs-1 padd_0">
							<img class="dw" src="/Public/img/order/dingwei.png" />
						</div>
						<div class="col-xs-11 padd_0">
							<?php echo ($detail["orderAdresse"]); ?>
						</div>
					</p>
				</div>
				<?php if(is_array($detail1)): $i = 0; $__LIST__ = $detail1;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 pad-up15 bg-fff mar-t15">
					<div class="col-xs-3 padd_0">
						<img class="img-responsive img-rounded" src="<?php echo ($v["image"]); ?>" />
					</div>
					<div class="col-xs-9 padd_0">
						<div class="col-xs-9 font11">
							<p class="color-333 heightControl-2">
								<?php echo ($v["goodsName"]); ?>
							</p>
							<p class="color-4c4c4c">规格:<?php echo ($v['norme2']); ?>【<?php echo ($v['norme1']); ?>】</p>
						</div>
						<div class="col-xs-3 padd_0">
							<p class="color-669900 font13">￥<?php echo ($v["moneyGoods"]); ?></p>
							<p class="color-666 font11 text-right">×<?php echo ($v["goodsNumber"]); ?></p>
						</div>
						 <?php if($v["son6"] == 3): ?><a href="<?php echo U('user/goodyuncomment',array('orderid'=>$v['id'],'specid'=>$v['specid']));?>"> <button class="DistributionButton">有瑕疵</button></a> 
						<?php elseif($v['son12'] != ''): ?>
						<a href="<?php echo U('user/goodyunhandle',array('goodyunid'=>$v['specid']));?>"> <button class="DistributionButton">查看有瑕疵回复</button></a> 
						<?php else: endif; ?>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
			<div class="row bg-fff mar-t15">
				<div class="col-xs-12 pad-up15 bor-b-f2">
					<p class="mar0 font12 color-669900 text-right">共<?php echo ($sumnumber); ?>件商品小计：￥<span class="font14"><?php echo ($sumprice); ?></span>（含运费￥<?php echo ($detail["tarifMong"]); ?>）</p>
				</div>
				  <?php if($detail['son1'] > 0): ?><div class="col-xs-12 font13 pad-up15">
					<span class="color-4c4c4c">使用代金券</span>
					<span class="color-999 pull-right">-￥<?php echo ($detail["son1"]); ?></span>
				</div>
				<?php else: endif; ?>
				<?php if($detail['son2'] > 0): ?><div class="col-xs-12 font13 pad-up15">
					<span class="color-4c4c4c">使用满减券</span>
					<span class="color-999 pull-right">-￥<?php echo ($detail["son2"]); ?></span>
				</div>
				<?php else: endif; ?>
				<div class="col-xs-12 font13 pad-up15 bor-b-f2">
					<span class="color-4c4c4c">合计</span>
					<span class="color-669900 pull-right">￥<?php echo ($csumprice); ?></span>
				</div>
				<div class="col-xs-12 pad-up10">
					<div class="col-xs-8 font13 color-808080 padd_0">
						<p>订单编号：<?php echo ($detail["ordreCoter"]); ?></p>
						<p>下单时间：<?php echo ($detail["addTime"]); ?></p>
						
					</div>
					<div class="col-xs-4 padd_0 text-right">
						<!-- <button type="button" class="btn-round1 color-4c4c4c mar-t25">复制单号</button> -->
					</div>
				</div>
			</div>
		</div>
		<div class="bottom text-right bg-fff">
			<span class="font12">
				 合计：<span class="color-669900 font14">￥<?php echo ($csumprice); ?></span> 
			</span>
			<?php if($detail['ordreType'] == 0): ?><button class="order"  type="button" onclick="cancelorder('<?php echo ($detail["id"]); ?>');">取消订单</button>
				  <button class="order"  type="button" onclick="oncepay('<?php echo ($detail["id"]); ?>');">立即付款</button>
					<?php elseif(($detail['ordreType'] > 0) AND ($detail['ordreType'] < 6)): ?>
					<button class="order" type="button" onclick="suregood('<?php echo ($detail["id"]); ?>');">确认收货</button>
					<?php else: ?>
					
			<a href="<?php echo U('user/installcomment',array('orderid'=>$detail['id']));?>"><button class="order" type="button">安装评价</button></a><?php endif; ?>
		</div>

	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		
	/*  取消订单*/
	function cancelorder(id)
	{
		var url="<?php echo U('good/cancelorder');?>";
		$.post(url, {id:id}, function(msg){
            if(msg.state=='200'){
            	
            	window.location.reload();
            }
            else if(msg.state == '400')
            {
           	 window.location.href ='/index.php/home/user/login';
            }
            else if(msg.state!='200'){
           layer.open({
       		    content: msg.msg
       		    ,skin: 'msg'
       		    ,time: 3 //3秒后自动关闭
       		  }); 
            }
          }, 'json')  
	}
	/*  确认收货*/
	function suregood(id)
	{
		var url="<?php echo U('good/suregood');?>";
		$.post(url, {id:id}, function(msg){
            if(msg.state=='200'){
             window.location.reload();
            }
            else if(msg.state == '400')
            {
           	 window.location.href ='/index.php/home/user/login';
            }
            else if(msg.state!='200'){
           layer.open({
       		    content: msg.msg
       		    ,skin: 'msg'
       		    ,time: 3 //3秒后自动关闭
       		  }); 
            }
          }, 'json')  
	}
	/*  立即付款*/
	function oncepay(orderid)
	{
		 window.location.href ='/index.php/home/user/getweixinopenid?orderid='+orderid;
	}
	</script>

</html>