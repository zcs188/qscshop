<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>货运管理</title>
<link rel="stylesheet" href="/Public/Bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/Public/css/public.css" />
<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
<link rel="stylesheet" href="/Public/css/MyOrder.css" />
<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
	<link rel="stylesheet" type="text/css" href="/Public/css/huoyun.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/common.css" />
<script type="text/javascript" src="/Public/Bootstrap/js/jquery.min.js" ></script>
<script type="text/javascript" src="/Public/layer/layer.js" ></script>
<script type="text/javascript" src="/Public/js/plupload.full.min.js" ></script>
<script type="text/javascript" src="/Public/js/qiniu.js" ></script>

<script type="text/javascript">
	$(function(){
		$('.AllOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').show();
			$('.ShouHuo').show();
			$('.PinJia1').show();
			$('.Wancen').show();
		});	
		
		$('.PaymentOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').show();	
			$('.ShouHuo').hide();
			$('.PinJia1').hide();
			$('.Wancen').hide();
		});	
		
		$('.ReceiptOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.ShouHuo').show();
			$('.PinJia1').hide();
			$('.Wancen').hide();
		});	
		$('.EvaluationOrder1').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.ShouHuo').hide();
			$('.PinJia1').show();
			$('.Wancen').hide();
		});	
		$('.WchenOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.ShouHuo').hide();
			$('.PinJia1').hide();
			$('.Wancen').show();
		});	
			
	});
</script>
</head>

<body>
	<!--顶部标题-->
		<div class="nav text-center">
				<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">货运管理</span>
		</div>
		<!--顶部标题-->
	<div class=" container-fluid padd_0 cont">
       	<div class="col-xs-12 padd_0 infoBox">
       		<div class="OrderTypeBox mar-b5">
	        	<div class="OrderType1 AllOrder TypeClick">全部</div>
	            <div class="OrderType1 PaymentOrder " >未接受</div>
	            <div class="OrderType1 ReceiptOrder " >已接受</div>
				  <div class="OrderType1 EvaluationOrder1" >已预约</div>
	            <div class="OrderType1 WchenOrder" >已完成</div>
	        </div>
	        
	        
	        <!--货运未接受-->
        	<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo['returnType'] == 1): ?><div class="OredrBox DaiFu">
		<?php if($vo['isNotType'] == 1): ?><div class="OredrInfo">
            	      	<div class="shopinfo">
            	<?php if($vo['returnType'] == 1): ?><span class="color-669900 font15">货运未接受</span> 
				<?php elseif($vo['returnType'] == 2): ?>
				 <span class="color-669900 font15">货运已接受</span>
				<?php elseif($vo['returnType'] == 3): ?>
				 <span class="color-669900 font15">货运已预约</span>
				<?php else: ?>
				 <span class="color-669900 font15">货运已完成</span><?php endif; ?>
                   
                </div>
          </div>
         
		<div class="container-fluid cont1" id="zhujia">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
		
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/goodyundetail',array('huoyunid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
					<div class="mar-t10">
						<div class="col-xs-3 pad-lr10 mar-b10">
							<img class="img-responsive img-rounded" src="<?php echo ($v["meubleImage"]); ?>" />
						</div>
						<div class="col-xs-9 font11">
							<p class="color-333 heightControl-2">
								<?php echo ($v["goodsName"]); ?>
							</p>
							<p class="color-4c4c4c">规格:<?php echo ($v["norme2"]); ?>【<?php echo ($v["norme1"]); ?>】</p>
						</div>
					</div>
				</div></a><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
			
					<div class="row bg-fff">
				 <div class="col-xs-12 font13 pad-up15 font-w bor-b-f2"  >
			<a href="tel:<?php echo ($vo['son2'][1]); ?>" class="color-1a1a1a"><span class="color-333"><?php echo ($vo["membersNameAndPhone"]); ?></span>
				<button type="button" class="mybtn pull-right" >
					<img class="dh" id="hio" src="/Public/img/huoyun/dh.png" />
				</button></a>
			</div>
			<div class="col-xs-12 font13 pad-up15 bor-b-f2">
				<p class="heightControl-1 mar-b0">
					<img class="dw" src="/Public/img/huoyun/dw.png" />
					<?php echo ($vo["membersAddress"]); ?>
				</p>
			</div>

				
			</div>
			</div>
			</div>
		<?php else: endif; ?>

	<?php else: endif; endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
        
       
	        
	          
                <!--货运已接受-->
        	<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo['returnType'] == 2): ?><div class="OredrBox ShouHuo">
		<?php if($vo['isNotType'] == 1): ?><div class="OredrInfo">
            	<div class="shopinfo">
            	<?php if($vo['returnType'] == 1): ?><span class="color-669900 font15">货运未接受</span> 
				<?php elseif($vo['returnType'] == 2): ?>
				 <span class="color-669900 font15">货运已接受</span>
				<?php elseif($vo['returnType'] == 3): ?>
				 <span class="color-669900 font15">货运已预约</span>
				<?php else: ?>
				 <span class="color-669900 font15">货运已完成</span><?php endif; ?>
                   
                </div>
                
          
		<div class="container-fluid cont1">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
		
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/goodyundetail',array('huoyunid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
					<div class="mar-t10">
						<div class="col-xs-3 pad-lr10 mar-b10">
							<img class="img-responsive img-rounded" src="<?php echo ($v["meubleImage"]); ?>" />
						</div>
						<div class="col-xs-9 font11">
							<p class="color-333 heightControl-2">
								<?php echo ($v["goodsName"]); ?>
							</p>
							<p class="color-4c4c4c">规格:<?php echo ($v["norme2"]); ?>【<?php echo ($v["norme1"]); ?>】</p>
						</div>
					</div>
				</div></a><?php endforeach; endif; else: echo "" ;endif; ?>
			</div>
					<div class="row bg-fff">
				 <div class="col-xs-12 font13 pad-up15 font-w bor-b-f2"  >
			<a href="tel:<?php echo ($vo['son2'][1]); ?>" class="color-1a1a1a"><span class="color-333"><?php echo ($vo["membersNameAndPhone"]); ?></span>
				<button type="button" class="mybtn pull-right" >
					<img class="dh" id="hio" src="/Public/img/huoyun/dh.png" />
				</button></a>
			</div>
			<div class="col-xs-12 font13 pad-up15 bor-b-f2">
				<p class="heightControl-1 mar-b0">
					<img class="dw" src="/Public/img/huoyun/dw.png" />
					<?php echo ($vo["membersAddress"]); ?>
				</p>
			</div>
			
			</div>
	</div>
	</div>
	</div>
		<?php else: endif; ?>

	<?php else: endif; endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
	                        <!--货运已预约-->
        	<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo['returnType'] == 3): ?><div class="OredrBox PinJia1">
		<?php if($vo['isNotType'] == 1): ?><div class="OredrInfo">
            	<div class="shopinfo">
            	<?php if($vo['returnType'] == 1): ?><span class="color-669900 font15">货运未接受</span> 
				<?php elseif($vo['returnType'] == 2): ?>
				 <span class="color-669900 font15">货运已接受</span>
				<?php elseif($vo['returnType'] == 3): ?>
				 <span class="color-669900 font15">货运已预约</span>
				<?php else: ?>
				 <span class="color-669900 font15">货运已完成</span><?php endif; ?>
                   
                </div>
                
          
		<div class="container-fluid cont1">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
		
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/goodyundetail',array('huoyunid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
					<div class="mar-t10">
						<div class="col-xs-3 pad-lr10 mar-b10">
							<img class="img-responsive img-rounded" src="<?php echo ($v["meubleImage"]); ?>" />
						</div>
						<div class="col-xs-9 font11">
							<p class="color-333 heightControl-2">
								<?php echo ($v["goodsName"]); ?>
							</p>
							<p class="color-4c4c4c">规格:<?php echo ($v["norme2"]); ?>【<?php echo ($v["norme1"]); ?>】</p>
						</div>
					</div>
				</div></a><?php endforeach; endif; else: echo "" ;endif; ?>
			</div>
					<div class="row bg-fff">
		 <div class="col-xs-12 font13 pad-up15 font-w bor-b-f2"  >
			<a href="tel:<?php echo ($vo['son2'][1]); ?>" class="color-1a1a1a"><span class="color-333"><?php echo ($vo["membersNameAndPhone"]); ?></span>
				<button type="button" class="mybtn pull-right" >
					<img class="dh" id="hio" src="/Public/img/huoyun/dh.png" />
				</button></a>
			</div>
			<div class="col-xs-12 font13 pad-up15 bor-b-f2">
				<p class="heightControl-1 mar-b0">
					<img class="dw" src="/Public/img/huoyun/dw.png" />
					<?php echo ($vo["membersAddress"]); ?>
				</p>
			</div>
            <?php if($vo['returnType'] == 3): ?><div class="col-xs-12 font13 pad-up15 bor-b-f2">
				<p class="heightControl-1 mar-b0">
					预约时间：<?php echo ($vo["appointmentTime"]); ?>
					
				</p>
			</div>
		<?php else: endif; ?>
				
			</div>
	</div>
	</div>
	</div>
		<?php else: endif; ?>

	<?php else: endif; endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
        
       
                             <!--货运已完成-->
        	<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo['returnType'] == 4): ?><div class="OredrBox Wancen">
		<?php if($vo['isNotType'] == 1): ?><div class="OredrInfo">
            	<div class="shopinfo">
            	<?php if($vo['returnType'] == 1): ?><span class="color-669900 font15">货运未接受</span> 
				<?php elseif($vo['returnType'] == 2): ?>
				 <span class="color-669900 font15">货运已接受</span>
				<?php elseif($vo['returnType'] == 3): ?>
				 <span class="color-669900 font15">货运已预约</span>
				<?php else: ?>
				 <span class="color-669900 font15">货运已完成</span><?php endif; ?>
                   
                </div>
                
          
		<div class="container-fluid cont1">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
		
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/goodyundetail',array('huoyunid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
					<div class="mar-t10">
						<div class="col-xs-3 pad-lr10 mar-b10">
							<img class="img-responsive img-rounded" src="<?php echo ($v["meubleImage"]); ?>" />
						</div>
						<div class="col-xs-9 font11">
							<p class="color-333 heightControl-2">
								<?php echo ($v["goodsName"]); ?>
							</p>
							<p class="color-4c4c4c">规格:<?php echo ($v["norme2"]); ?>【<?php echo ($v["norme1"]); ?>】</p>
						</div>
					</div>
				</div></a><?php endforeach; endif; else: echo "" ;endif; ?>
			</div>
					<div class="row bg-fff">
		 <div class="col-xs-12 font13 pad-up15 font-w bor-b-f2"  >
			<a href="tel:<?php echo ($vo['son2'][1]); ?>" class="color-1a1a1a"><span class="color-333"><?php echo ($vo["membersNameAndPhone"]); ?></span>
				<button type="button" class="mybtn pull-right" >
					<img class="dh" id="hio" src="/Public/img/huoyun/dh.png" />
				</button></a>
			</div>
			<div class="col-xs-12 font13 pad-up15 bor-b-f2">
				<p class="heightControl-1 mar-b0">
					<img class="dw" src="/Public/img/huoyun/dw.png" />
					<?php echo ($vo["membersAddress"]); ?>
				</p>
			</div>

				
			</div>
	</div>
	  </div>
	   </div>
		<?php else: endif; ?>

	<?php else: endif; endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
        
     
        
  </div>
   </div> 
   
</body>
<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript">
   
	$('.evaluate').click(function(){
		$('.cover').slideDown(1);
		$('.model').slideDown(10);
	})
	$('.btn1').click(function(){
		$('.cover').slideUp(1);
		$('.model').slideUp(10);
	})
	$('.sh').click(function(){
		$('.cover').slideDown(1);
		$('.model1').slideDown(10);
	})
	$('.sure').click(function(){
		$('.cover').slideUp(1);
		$('.model1').slideUp(10);
	})
</script>
</html>