<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>安装管理</title>
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
			$('.WeiFa').show();
			$('.ShouHuo').show();
			$('.PinJia1').show();
			$('.PinJia').show();
		});	
		
		$('.PaymentOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').show();	
			$('.WeiFa').hide();
			$('.ShouHuo').hide();
			$('.PinJia1').hide();
			$('.PinJia').hide();
		});	
		
		$('.ReceiptOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.WeiFa').hide();
			$('.ShouHuo').show();
			$('.PinJia1').hide();
			$('.PinJia').hide();
		});	
		$('.EvaluationOrder1').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.WeiFa').hide();
			$('.ShouHuo').hide();
			$('.PinJia1').show();
			$('.PinJia').hide();
		});	
		$('.EvaluationOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.WeiFa').hide();
			$('.ShouHuo').hide();
			$('.PinJia1').hide();
			$('.PinJia').show();
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
			<span class="font16">安装管理</span>
		</div>
		<!--顶部标题-->
	<div class=" container-fluid padd_0 cont">
       	<div class="col-xs-12 padd_0 infoBox">
       		<div class="OrderTypeBox mar-b5">
	        	<div class="OrderType1 AllOrder TypeClick">全部</div>
	             <div class="OrderType1 PaymentOrder " >未接受</div>
	            <div class="OrderType1 ReceiptOrder " >已接受</div>
				<div class="OrderType1 EvaluationOrder1 " >已预约</div>
	            <div class="OrderType1 EvaluationOrder " >已完成</div>
	        </div>
	        
	        
	        <!--货运未接受-->
        	<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo['returnType'] == 1): ?><div class="OredrBox DaiFu">
		<?php if($vo['isNotType'] == 1): ?><div class="OredrInfo">
            	      	<div class="shopinfo">
            	<?php if($vo['returnType'] == 1): ?><span class="color-669900 font15">安装未接受</span> 
				<?php elseif($vo['returnType'] == 2): ?>
				 <span class="color-669900 font15">安装已接受</span>
				<?php elseif($vo['returnType'] == 3): ?>
				 <span class="color-669900 font15">安装已预约</span>
				<?php else: ?>
				 <span class="color-669900 font15">安装已完成</span><?php endif; ?>
                   
                </div>
          </div>
          
		<div class="container-fluid cont1">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
		
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/installdetail',array('anzuaid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
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
            	<?php if($vo['returnType'] == 1): ?><span class="color-669900 font15">安装未接受</span> 
				<?php elseif($vo['returnType'] == 2): ?>
				 <span class="color-669900 font15">安装已接受</span>
				<?php elseif($vo['returnType'] == 3): ?>
				 <span class="color-669900 font15">安装已预约</span>
				<?php else: ?>
				 <span class="color-669900 font15">安装已完成</span><?php endif; ?>
                   
                </div>
                
          
		<div class="container-fluid cont1">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
		
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/installdetail',array('anzuaid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
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

	<?php else: endif; endforeach; endif; else: echo "" ;endif; ?>
	                        <!--安装已预约-->
        	<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo['returnType'] == 3): ?><div class="OredrBox PinJia1">
		<?php if($vo['isNotType'] == 1): ?><div class="OredrInfo">
           <div class="shopinfo">
            	<?php if($vo['returnType'] == 1): ?><span class="color-669900 font15">安装未接受</span> 
				<?php elseif($vo['returnType'] == 2): ?>
				 <span class="color-669900 font15">安装已接受</span>
				<?php elseif($vo['returnType'] == 3): ?>
				 <span class="color-669900 font15">安装已预约</span>
				<?php else: ?>
				 <span class="color-669900 font15">安装已完成</span><?php endif; ?>
                   
                </div>
                
          
		<div class="container-fluid cont1">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
		
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/installdetail',array('anzuaid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
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
        
           
      
       
       
        
        </div>
        
          <!--安装已完成-->
        	<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo['returnType'] == 5): ?><div class="OredrBox PinJia">
		<?php if($vo['isNotType'] == 1): ?><div class="OredrInfo">
           <div class="shopinfo">
            	<?php if($vo['returnType'] == 1): ?><span class="color-669900 font15">安装未接受</span> 
				<?php elseif($vo['returnType'] == 2): ?>
				 <span class="color-669900 font15">安装已接受</span>
				<?php elseif($vo['returnType'] == 3): ?>
				 <span class="color-669900 font15">安装已预约</span>
				<?php else: ?>
				 <span class="color-669900 font15">安装已完成</span><?php endif; ?>
                   
                </div>
                
          
		<div class="container-fluid cont1">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
		
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/installdetail',array('anzuaid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
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
 <!-- <!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>安装管理</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/huoyun.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/common.css" />

<link rel="stylesheet" type="text/css"
	href="/Public/layer/need/layer.css" />
<script type="text/javascript" src="/Public/layer/layer.js"></script>

<script type="text/javascript" src="/Public/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="/Public/js/date.js"></script>
<script type="text/javascript" src="/Public/js/iscroll.js"></script>
	</head>
<style type="text/css">
.model.demo {
	width: 300px;
	margin: 40px auto 0 auto;
}

.model.demo .lie {
	margin: 0 0 20px 0;
}
</style>
	<body>
		顶部标题
		<div class="nav text-center">
					<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">安装管理</span>
		</div>
			
        <div class="col-xs-12 padd_0">
                <select id="search" class="mar0 color-fff tit bg-fff color-333">
			<option value=""  class="mar0 color-fff tit bg-fff color-333">
			<?php if(empty($keyword)): ?>请选择<?php else: ?> <?php echo ($keyword); endif; ?><button class="mybtn pull-right" type="button">
			<img class="d" src="/Public/img/huoyun/d.png"/></button></option>
			<option value="1" sbqsc="安装已派单" class="mar0 color-fff tit bg-fff color-333">安装已派单<button class="mybtn pull-right" type="button"><img class="d" src="/Public/img/huoyun/d.png"/></button></option> 
			<option value="2" sbqsc="安装已接受" class="mar0 color-fff tit bg-fff color-333">安装已接受<button class="mybtn pull-right" type="button"><img class="d" src="/Public/img/huoyun/d.png"/></button></option>
			<option value="3" sbqsc="安装已预约" class="mar0 color-fff tit bg-fff color-333">安装已预约<button class="mybtn pull-right" type="button"><img class="d" src="/Public/img/huoyun/d.png"/></button></option>
			<option value="4" sbqsc="安装待评价" class="mar0 color-fff tit bg-fff color-333">安装待评价<button class="mybtn pull-right" type="button"><img class="d" src="/Public/img/huoyun/d.png"/></button></option>
			<option value="5" sbqsc="安装已完成" class="mar0 color-fff tit bg-fff color-333">安装已完成<button class="mybtn pull-right" type="button"><img class="d" src="/Public/img/huoyun/d.png"/></button></option>
				</select>
						    
				
		</div>
		顶部标题
		<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($vo['isNotType'] == 1): ?><div class="container-fluid cont1">
					<div class="row">
				<div class="cover1" v-show="bool"></div>	
				<div class="col-xs-12 bor-b-f2 mar-t5 bg-fff">
				   		<?php if($vo['returnType'] == 1): ?><p class="font15 pull-right color-669900 mar-t10 mar-b10 ">安装已派单</p>  
				<?php elseif($vo['returnType'] == 2): ?>
				<p class="font15 pull-right color-669900 mar-t10 mar-b10 ">安装已接受</p>
				<?php elseif($vo['returnType'] == 3): ?>
				<p class="font15 pull-right color-669900 mar-t10 mar-b10 ">安装已预约</p>
				<?php elseif($vo['returnType'] == 4): ?>
				<p class="font15 pull-right color-669900 mar-t10 mar-b10 ">安装待评价</p>
				<?php else: ?>
				<p class="font15 pull-right color-669900 mar-t10 mar-b10 ">安装已完成</p><?php endif; ?>
				</div>
					<?php if(is_array($vo["son"])): $i = 0; $__LIST__ = $vo["son"];if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="<?php echo U('user/installdetail',array('anzuaid'=>$v['pdid']));?>"><div class="col-xs-12 bg-fff padd_0 bor-b-f2">
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
				</div></a>
				<div class="col-xs-12 font13 text-right pad-up15 bor-b-f2">
				 <a href="<?php echo U('user/installdetail',array('anzuaid'=>$v['pdid']));?>"><button class="btn2 pull-right order" type="button">查看详情</button></a> 
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
					<div class="row bg-fff">
			<div class="col-xs-12 font13 pad-up15 font-w bor-b-f2">
				<a href="tel:$vo.membersNameAndPhone" class="color-1a1a1a"><span class="color-333"><?php echo ($vo["membersNameAndPhone"]); ?></span></a>
				<button type="button" class="mybtn pull-right">
					<img class="dh" src="/Public/img/huoyun/dh.png" />
				</button>
			</div>
			<div class="col-xs-12 font13 pad-up15 bor-b-f2">
				<p class="heightControl-1 mar-b0">
					<img class="dw" src="/Public/img/huoyun/dw.png" />
					<?php echo ($vo["membersAddress"]); ?>
				</p>
			</div>

				<div class="col-xs-12 font13 text-right pad-up15 bor-b-f2">
				 <?php if($vo['returnType'] == 1): ?><button class="btn2  bg-b3b3b3" type="button"
					onclick="canceliorder('<?php echo ($vo["id"]); ?>');">取消订单</button>
				<button class="btn2 " type="button"
					onclick="acceptiorder('<?php echo ($vo["id"]); ?>');">接受订单</button>

				<?php elseif($vo['returnType'] == 2): ?>
				<button class="btn2 pull-right order" type="button">预约安装</button>
            
				<?php else: endif; ?> 

			</div>
			</div>
		
			model
	<div class="cover"></div>
	<div id="datePlugin"></div>
	<div class="model">
		<div class="demo">
			<div class="lie">日期设置-1:<input  id="beginTime" class="kbtn" /></div>
			<div class="lie">
				日期设置:<input id="endTime" class="kbtn" value="<?php echo ($k); ?>"/>
			<button type="button"class="btn1 pull-right" onclick="makeinstall('<?php echo ($vo["orderId"]); ?>');">确认</button>
			</div>
		</div>
	</div>
	<?php else: endif; ?>
	</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
	</body>
	
	<script type="text/javascript">
	$('#search').change(function(){
	    var url = "<?php echo U('user/install');?>";
	    location.href=url+'?search='+$('#search').val()+'&keyword='+$('#search option:selected').attr('sbqsc');
	})
	$('.order').click(function() {
		$('.cover').slideDown(1);
		$('.model').slideDown(10);
	})
	$('.btn1').click(function() {
		$('.cover').slideUp(1);
		$('.model').slideUp(10);
	})
</script>

<script type="text/javascript">
	$(function() {
		$('#beginTime').date();
		$('#endTime').date({
			theme : "datetime"
		});
	});
</script>


	
<script type="text/javascript">
	function canceliorder(id) {
		var url = "<?php echo U('good/installcancelorder');?>";
		$.post(url, {
			id : id
		}, function(msg) {

			if (msg.state == 200) {
				/* layer.open({
					content : msg.msg,
					skin : 'msg',
					time : 3
				//3秒后自动关闭
				}); */
				window.location.reload();
			}
			else if(msg.state == 400)
            {
           	 window.location.href ='/index.php/home/user/login';
            }
			else {
				layer.open({
					content : msg.msg,
					skin : 'msg',
					time : 3
				//3秒后自动关闭
				});
			}
		}, 'json')
	}
</script>
<script type="text/javascript">
	function acceptiorder(id) {
		var url = "<?php echo U('good/installacceptorder');?>";
		$.post(url, {
			id : id
		}, function(msg) {

			if (msg.state == 200) {
				/* layer.open({
					content : msg.msg,
					skin : 'msg',
					time : 3
				//3秒后自动关闭
				}); */
				 window.location.reload();
			}
			else if(msg.state == 400)
            {
           	 window.location.href ='/index.php/home/user/login';
            }
			else {
				layer.open({
					content : msg.msg,
					skin : 'msg',
					time : 3
				//3秒后自动关闭
				});
			}
		}, 'json')
	}
</script>
<script type="text/javascript">
	function makeinstall(id) {
		var time=$('#endTime').val();
		
		 var url = "<?php echo U('good/installappointmentorder');?>";
		$.post(url, {
			id : id,time:time
		}, function(msg) {
       
			if (msg.state == 200) {
				/* layer.open({
					content : msg.msg,
					skin : 'msg',
					time : 3
				//3秒后自动关闭
				}); */
				 window.location.reload();
			}
			else if(msg.state == 400)
            {
           	 window.location.href ='/index.php/home/user/login';
            }
			else {
				layer.open({
					content : msg.msg,
					skin : 'msg',
					time : 3
				//3秒后自动关闭
				});
			}
		}, 'json') 
	}
</script>
</html>  -->