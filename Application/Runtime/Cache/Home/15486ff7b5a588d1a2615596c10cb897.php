<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>我的订单</title>
<link rel="stylesheet" href="/Public/Bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/Public/css/public.css" />
<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
<link rel="stylesheet" href="/Public/css/MyOrder.css" />
<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
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
			$('.PinJia').show();
			$('.PinJia1').show();
		});	
		
		$('.PaymentOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').show();	
			$('.WeiFa').hide();
			$('.ShouHuo').hide();
			$('.PinJia').hide();
			$('.PinJia1').hide();
		});	
		
		$('.ReceiptOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.WeiFa').hide();
			$('.ShouHuo').show();
			$('.PinJia').hide();
			$('.PinJia1').hide();
		});	
		
		$('.EvaluationOrder').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.WeiFa').hide();
			$('.ShouHuo').hide();
			$('.PinJia').show();
			$('.PinJia1').hide();
		});	
		$('.EvaluationOrder1').click(function(){
			$(this).siblings().removeClass("TypeClick");
			$(this).addClass("TypeClick");
			$('.DaiFu').hide();
			$('.WeiFa').hide();
			$('.ShouHuo').hide();
			$('.PinJia').hide();
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
			<span class="font16">我的订单</span>
		</div>
		<!--顶部标题-->
	<div class=" container-fluid padd_0 cont">
       	<div class="col-xs-12 padd_0 infoBox">
       		<div class="OrderTypeBox mar-b5">
	        	<div class="OrderType1 AllOrder TypeClick">全部</div>
	            <div class="OrderType1 PaymentOrder ">待付款</div>
	            <div class="OrderType1 ReceiptOrder ">待收货</div>
	            <div class="OrderType1 EvaluationOrder ">待评价</div>
				<div class="OrderType1 EvaluationOrder1 ">已完成</div>
	        </div>

        <?php if(is_array($orderlist)): $i = 0; $__LIST__ = $orderlist;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if($v['ordreType'] == 0): if($v['son3'] != 9): ?><div class="OredrBox DaiFu">
                    订单编号：<?php echo ($v["ordreCoter"]); ?>
            <div class="OredrInfo">
            	<div class="shopinfo">
           
					<?php if($v['son3'] == 0): ?><span class="color-669900 font15">待付款</span>
					<?php elseif(($v['son3'] > 0) AND ($v['son3'] < 6)): ?><span class="color-669900 font15">待收货</span>
					<?php elseif($v['son3'] == 6): ?><span class="color-669900 font15">安装评价</span>
					<?php elseif($v['son3'] == 7): ?><span class="color-669900 font15">交易已完成</span>
					<?php else: endif; ?>
                </div>
                <?php if(is_array($v["son"])): foreach($v["son"] as $key=>$v1): ?><div class="OrderContent bg-fff">
                 <a href="<?php echo U('user/orderdetail',array('orderid'=>$v['id']));?>" style="color:#000000">
                     <div class="orderImg">
                        <img src="<?php echo ($v1["reserve1"]); ?>" class="img-responsive">
                     </div>
                     <div class="orderName">
                        <div class="ProductName"><?php echo ($v1["goodsName"]); ?></div>
                        <div class="specification font11">规格：<?php echo ($v1["norme2"]); echo ($v1["norme1"]); ?></div>
                     </div>
                     <div class="orderPice">
                        <div class="CurrentPrice color-669900 text-center">￥<?php echo ($v1["moneyGoods"]); ?></div>
                        <div class="CurrentPrice text-right PiceColor">X<?php echo ($v1["goodsNumber"]); ?></div>
                              <?php if($v["son6"] == 3): ?><font size="1" color="green"><a href="<?php echo U('user/goodyuncomment',array('orderid'=>$v['id'],'specid'=>$v1['specid']));?>"> <button class="DistributionButton">有瑕疵</button></a> </font>
						<?php elseif($v['son12'] != ''): ?>
						<font size="1" color="green"><a href="<?php echo U('user/goodyunhandle',array('goodyunid'=>$v['son10']));?>"> <button class="DistributionButton">查看有瑕疵回复</button></a>  </font>
						<?php else: endif; ?>
                     </div>
                  </a>
                </div><?php endforeach; endif; ?>
                <div class="Distribution">
                 	<!-- <span class="font13 color-4c4c4c">送货并入户安装</span>  -->
                    <span class="font12 color-666 pull-right">实际支付：<span class="font15 color-669900">￥<?php echo ($v["payerSomme"]); ?> <?php if($v['son1'] > 0): ?>(含运费:<?php echo ($v["son1"]); ?>)<?php else: ?>包邮<?php endif; ?></span></span>
                </div>
                	
                <?php if($v['son3'] == 0): ?><div class="Distribution text-right">
             
                	<button class="DistributionButton" onclick="cancelorder('<?php echo ($v["id"]); ?>');">取消订单</button>
                    <button class="ConfirmButton bg-669900" onclick="oncepay('<?php echo ($v["id"]); ?>');">立即付款</button>
                    
                </div> 

					<?php elseif(($v['son3'] > 0) AND ($v['son3'] < 6)): ?>
					 <div class="Distribution text-right">
		 	
                    <button class="ConfirmButton bg-669900" onclick="suregood('<?php echo ($v["id"]); ?>');">确认收货</button>
                </div> 
					 
                <?php elseif($v['isNotEvaluation'] == 1): ?>
                    <div class="Distribution text-right">
                     
                         <?php if($v["son5"] == 4): ?><a href="<?php echo U('user/installcomment',array('orderid'=>$v['id']));?>"><button class="ConfirmButton bg-669900 evaluate" >安装评价</button></a>
				 				
						<?php else: endif; ?> 
                </div> 
					<?php else: endif; ?>
            </div>
        </div>
        <?php else: endif; ?>
        <?php else: endif; endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
   
        <?php if(is_array($orderlist)): $i = 0; $__LIST__ = $orderlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if(($v['son3'] > 0) AND ($v['son3'] < 6)): ?><!--待收货-->
        <div class="OredrBox ShouHuo">
                 订单编号：<?php echo ($v["ordreCoter"]); ?>
            <div class="OredrInfo">
            	<div class="shopinfo">
                   
					<?php if($v['son3'] == 0): ?><span class="color-669900 font15">待付款</span>
							<?php elseif(($v['son3'] > 0) AND ($v['son3'] < 6)): ?><span class="color-669900 font15">待收货</span>
					<?php elseif($v['son3'] == 6): ?><span class="color-669900 font15">安装评价</span>
					<?php elseif($v['son3'] == 7): ?><span class="color-669900 font15">交易已完成</span>
					<?php else: endif; ?>
                </div>
           <?php if(is_array($v["son"])): foreach($v["son"] as $key=>$v1): ?><div class="OrderContent bg-fff">
                 <a href="<?php echo U('user/orderdetail',array('orderid'=>$v['id']));?>" style="color:#000000">
                     <div class="orderImg">
                        <img src="<?php echo ($v1["reserve1"]); ?>" class="img-responsive">
                     </div>
                     <div class="orderName">
                        <div class="ProductName"><?php echo ($v1["goodsName"]); ?></div>
                        <div class="specification font11">规格：<?php echo ($v1["norme2"]); echo ($v1["norme1"]); ?></div>
                     </div>
                     <div class="orderPice">
                        <div class="CurrentPrice color-669900 text-center">￥<?php echo ($v1["moneyGoods"]); ?></div>
                        <div class="CurrentPrice text-right PiceColor">X<?php echo ($v1["goodsNumber"]); ?></div>
                     </div>
                         <?php if($v["son6"] == 3): ?><font size="1" color="green"><a href="<?php echo U('user/goodyuncomment',array('orderid'=>$v['id'],'specid'=>$v1['specid']));?>"> <button class="DistributionButton">有瑕疵</button></a> </font>
						<?php elseif($v['son12'] != ''): ?>
						<font size="1" color="green"><a href="<?php echo U('user/goodyunhandle',array('goodyunid'=>$v['son10']));?>"> <button class="DistributionButton">查看有瑕疵回复</button></a>  </font>
						<?php else: endif; ?>
                  </a>
         
                </div><?php endforeach; endif; ?>
                <div class="Distribution">
                 	
                    <span class="font12 color-666 pull-right">实际支付：<span class="font15 color-669900">￥<?php echo ($v["payerSomme"]); ?> <?php if($v['son1'] > 0): ?>(含运费:<?php echo ($v["son1"]); ?>)<?php else: ?>包邮<?php endif; ?></span></span>
                </div>
                <div class="Distribution text-right">
                <?php if($v['son3'] == 6): ?><a href="<?php echo U('user/installcomment',array('orderid'=>$v['id']));?>"><button class="ConfirmButton bg-669900 evaluate" >安装评价</button></a>
                    <?php else: ?>
                    <button class="ConfirmButton bg-669900" onclick="suregood('<?php echo ($v["id"]); ?>');">确认收货</button><?php endif; ?>
                </div> 
            </div>
        </div>
               <?php else: endif; endforeach; endif; else: echo "" ;endif; ?>
        
          <?php if(is_array($orderlist)): $i = 0; $__LIST__ = $orderlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if($v['son3'] == 6): ?><!--待评价-->
        <div class="OredrBox PinJia">
         订单编号：<?php echo ($v["ordreCoter"]); ?>
            <div class="OredrInfo">
            	<div class="shopinfo">
             
					<?php if($v['son3'] == 0): ?><span class="color-669900 font15">待付款</span>
							<?php elseif(($v['son3'] > 0) AND ($v['son3'] < 6)): ?><span class="color-669900 font15">待收货</span>
					<?php elseif($v['son3'] == 6): ?><span class="color-669900 font15">安装评价</span>
					<?php elseif($v['son3'] == 7): ?><span class="color-669900 font15">交易已完成</span>
					<?php else: endif; ?>
				
                </div>
                <?php if(is_array($v["son"])): foreach($v["son"] as $key=>$v1): ?><div class="OrderContent bg-fff">
                 <a href="<?php echo U('user/orderdetail',array('orderid'=>$v['id']));?>" style="color:#000000">
                     <div class="orderImg">
                        <img src="<?php echo ($v1["reserve1"]); ?>" class="img-responsive">
                     </div>
                     <div class="orderName">
                        <div class="ProductName"><?php echo ($v1["goodsName"]); ?></div>
                        <div class="specification font11">规格：<?php echo ($v1["norme2"]); echo ($v1["norme1"]); ?></div>
                     </div>
                     <div class="orderPice">
                        <div class="CurrentPrice color-669900 text-center">￥<?php echo ($v1["moneyGoods"]); ?></div>
                        <div class="CurrentPrice text-right PiceColor">X<?php echo ($v1["goodsNumber"]); ?></div>
                     </div>
                  </a>
                       
                </div><?php endforeach; endif; ?>
                <div class="Distribution">
                 	
                     <span class="font12 color-666 pull-right">实际支付：<span class="font15 color-669900">￥<?php echo ($v["payerSomme"]); ?> <?php if($v['son1'] > 0): ?>(含运费:<?php echo ($v["son1"]); ?>)<?php else: ?>包邮<?php endif; ?></span></span>
                      <?php if($v['son13'] != ''): ?><br/>
                      <span class="font12 color-666 pull-right">师傅/电话:<?php echo ($v['son13']['membersNameAndPhone']); ?> </span>
                    <br/>
                      <span class="font12 color-666 pull-right">完成时间:<?php echo ($v['son13']['membersTime']); ?> </span>
					<?php else: endif; ?>
                </div>
                <div class="Distribution text-right">		
                       <a href="<?php echo U('user/installcomment',array('orderid'=>$v['id']));?>"><button class="ConfirmButton bg-669900 evaluate" >安装评价</button></a>
				 		
                </div> 
            </div>
        </div>
                  <?php else: endif; endforeach; endif; else: echo "" ;endif; ?>
      <?php if(is_array($orderlist)): $i = 0; $__LIST__ = $orderlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if($v['son3'] == 7): ?><!--已完成-->
        <div class="OredrBox PinJia1">
         订单编号：<?php echo ($v["ordreCoter"]); ?>
            <div class="OredrInfo">
            	<div class="shopinfo">
             
					<?php if($v['son3'] == 0): ?><span class="color-669900 font15">待付款</span>
							<?php elseif(($v['son3'] > 0) AND ($v['son3'] < 6)): ?><span class="color-669900 font15">待收货</span>
					<?php elseif($v['son3'] == 6): ?><span class="color-669900 font15">安装评价</span>
					<?php elseif($v['son3'] == 7): ?><span class="color-669900 font15">交易已完成</span>
					<?php else: endif; ?>
				
                </div>
                <?php if(is_array($v["son"])): foreach($v["son"] as $key=>$v1): ?><div class="OrderContent bg-fff">
                 <a href="<?php echo U('user/orderdetail',array('orderid'=>$v['id']));?>" style="color:#000000">
                     <div class="orderImg">
                        <img src="<?php echo ($v1["reserve1"]); ?>" class="img-responsive">
                     </div>
                     <div class="orderName">
                        <div class="ProductName"><?php echo ($v1["goodsName"]); ?></div>
                        <div class="specification font11">规格：<?php echo ($v1["norme2"]); echo ($v1["norme1"]); ?></div>
                     </div>
                     <div class="orderPice">
                        <div class="CurrentPrice color-669900 text-center">￥<?php echo ($v1["moneyGoods"]); ?></div>
                        <div class="CurrentPrice text-right PiceColor">X<?php echo ($v1["goodsNumber"]); ?></div>
                     </div>
                  </a>
                       
                </div><?php endforeach; endif; ?>
                <div class="Distribution">
                 	
                     <span class="font12 color-666 pull-right">实际支付：<span class="font15 color-669900">￥<?php echo ($v["payerSomme"]); ?> <?php if($v['son1'] > 0): ?>(含运费:<?php echo ($v["son1"]); ?>)<?php else: ?>包邮<?php endif; ?></span></span>
                      <?php if($v['son13'] != ''): ?><br/>
                      <span class="font12 color-666 pull-right">师傅/电话:<?php echo ($v['son16']); ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ($v['son15']); ?></span>
                    <br/>
                      <span class="font12 color-666 pull-right">完成时间:<?php echo ($v['son13']['completeTime']); ?> </span>
					<?php else: endif; ?>
                </div>
                <div class="Distribution text-right">		
                     <button class="ConfirmButton bg-669900 evaluate" >已完成</button>
				 		
                </div> 
            </div>
        </div>
                  <?php else: endif; endforeach; endif; else: echo "" ;endif; ?>
   
        </div>
    </div>
   
</body>


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