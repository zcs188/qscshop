<?php if (!defined('THINK_PATH')) exit();?><html>
	<head>
		 <meta charset="utf-8">
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <title>活动商品</title>
    <link type="text/css" rel="stylesheet" href="/Public/css/page_common.css" />
    <link type="text/css" rel="stylesheet" href="/Public/css/style-wap.css" />
    <link type="text/css" rel="stylesheet" href="/Public/css/index.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/order_sel.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/js/jquery-1.9.1.min.js" ></script>
        <script src='/Public/js/click.js' type="text/javascript"></script>
        <script src='/Public/js/index.js' type="text/javascript"></script>		
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
		<script type="text/javascript" src="/Public/js/jquery-1.7.2.min.js" ></script>
		<script type="text/javascript" src="/Public/js/jquery.scrollExtend.js" ></script>
	</head>
	
	<body>
	      <div class="header">
    <div class="back">
            <div style="margin-top:20px;"></div>
			<a href="#" onClick="javascript:history.back(-1);" class="to-back">
				<img src="/Public/img/list/right.png"/>
			</a>
		
    </div>
    <div class="title">
       	<div class="col-xs-12 padd_0">
					<div id="owl-demo" class="owl-carousel">
					
						<a href="#" class="item"><img src="/Public/img/activity1.jpg" class="img-responsive" alt=""></a>
					
					</div>
				</div>
    </div>
   

</div>
      	<div class="col-xs-12 padd_0">
					<div id="owl-demo" class="owl-carousel">
					
						<a href="<?php echo U('good/gooddetail',array('goodsid'=>'05b23faa-b771-4400-a27e-d156faa05455'));?>" class="item"><img src="/Public/img/activitypro.jpg" class="img-responsive" alt=""></a>
					
					</div>
				</div>
	    	<div class="col-xs-12 padd_0">
					<div id="owl-demo" class="owl-carousel">
					
						<a href="<?php echo U('good/gooddetail',array('goodsid'=>'0c60fa7a-79e2-4fef-ac1c-1cb4577165d8'));?>" class="item"><img src="/Public/img/sdf1.jpg" class="img-responsive" alt=""></a>
					
					</div>
				</div>
		 	<div class="col-xs-12 padd_0">
					<div id="owl-demo" class="owl-carousel">
					
						<a href="<?php echo U('good/gooddetail',array('goodsid'=>'05b23faa-b771-4400-a27e-d156faa05455'));?>" class="item"><img src="/Public/img/sdf2.jpg" class="img-responsive" alt=""></a>
					
					</div>
				</div>
	<div style="margin-top:300px;"></div>
		
		<!--内容区-->
		 
       <!--<div class="product-list">
 
    <div class="p-list">
        <ul>
		   <?php if(is_array($activity)): $i = 0; $__LIST__ = $activity;if( count($__LIST__)==0 ) : echo "暂时没有相关活动商品噢" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li>
                <div class="p-info">
                    <a href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>"><img src="<?php echo ($v["meubleImage"]); ?>" alt=""/></a>
                    <div class="p-list-info">
                        <p><a href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000"><?php echo (getsubstr($v["meubleName"],0,10)); ?>&nbsp;<?php echo ($v["reserve1"]); ?></a></p>
                       <span class="p-price">&nbsp;&nbsp;&nbsp;¥<?php echo ($v["maxPrice"]); ?></span> 
                        <a href="##" class="add-car"></a>
                    </div>
                </div>
            </li><?php endforeach; endif; else: echo "暂时没有相关活动商品噢" ;endif; ?>
        </ul>
        <div class="clears"></div>
    </div>

</div>-->
	</body>
	



</html>