<?php if (!defined('THINK_PATH')) exit();?><html>
	<head>
		 <meta charset="utf-8">
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <title>排名规则</title>
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
					
						<?php echo ($lc); ?>
				
					</div>
				</div>
    </div>
   

</div>
      
	
	</body>
	



</html>