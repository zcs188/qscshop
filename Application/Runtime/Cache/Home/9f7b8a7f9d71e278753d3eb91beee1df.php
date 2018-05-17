<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>领券中心</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/shouhou.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/swiper.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
	</head>
	<body>
		<!--顶部标题-->
		<div class="nav text-center">
					<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">领券中心</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont26">
			<div class="row mar-t15">
			<?php if(is_array($manjian)): $i = 0; $__LIST__ = $manjian;if( count($__LIST__)==0 ) : echo "暂时没有满减优惠券" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-12">
				<a href="#"  style="color:#000000" onclick="getcouponone('<?php echo ($vo["id"]); ?>')">
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
					</a>
				</div><?php endforeach; endif; else: echo "暂时没有满减优惠券" ;endif; ?>
			</div>
			<div class="row mar-t15">
			<?php if(is_array($daijin)): $i = 0; $__LIST__ = $daijin;if( count($__LIST__)==0 ) : echo "暂时没有代金优惠券" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-12">
				<a href="#" style="color:#000000" onclick="getcouponone('<?php echo ($vo["id"]); ?>')">
					<div class="col-xs-12 quan padd_0">
						<div class="col-xs-4 font24 text-center pad-up20 color-ff5a00 money">
							<span class="font16">￥</span><?php echo ($vo["compenser"]); ?>
							<div class="bq bg-ff5a00">满 减 券</div>
						</div>
						<div class="col-xs-8">
							<p class="font12 color-333 mar-t10 mar-b5">使用范围：<span class="color-ff5a00">全店通用</span></p>
							<p class="font12 color-333 mar-b5">
								使用期限：
								<span class="color-999"><?php echo ($vo["fastTime"]); ?>至<?php echo ($vo["lastTime"]); ?></span>
							</p>
						</div>
					</div>
					</a>
				</div><?php endforeach; endif; else: echo "暂时没有代金优惠券" ;endif; ?>
			</div>
		</div>
		
	</body>
	
	<script type="text/javascript">
	
	function getcouponone(id)	   
    {
		
         var url = "<?php echo U('good/getcoupon');?>";
         $.post(url, {id:id}, function(msg){
         if(msg.message == '200') 
         {
        	 layer.open({
      		    content: msg.message
      		    ,skin: 'msg'
      		    ,time: 3 //3秒后自动关闭
      		  });
         }
         else if(msg.state == '400')
         {
        	 window.location.href ='/index.php/home/user/login';
         }
         else 
         {
        	 layer.open({
     		    content: msg.message
     		    ,skin: 'msg'
     		    ,time: 3 //3秒后自动关闭
     		  });
         }
       }, 'json')
       
   }
	
	</script>
</html>