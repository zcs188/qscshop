<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>商品分类</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/Classify.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
	</head>

	<body>
		<div class="nav">
			
			<input type="text" class="search"  id="sea" />
			<button class="mybtn pull-right" type="button">
				<img class="mycar" src="/Public/img/sousuo.png" />
			</button>
		</div>
		<!--内容区-->
		<div class="container-fluid tit">
			<div class="row classify text-center font15 color-1a1a1a bor-b-cccccc">
				
		<?php if(is_array($onecate)): foreach($onecate as $key=>$v): ?><div class="col-xs-6 pad-up15 ">
					<?php echo ($v["typeName"]); ?>
				</div><?php endforeach; endif; ?>
			</div>
		</div>
		<?php if(is_array($onecategory)): foreach($onecategory as $key=>$v): ?><div class="container-fluid mar-b52 cont active">
			<div class="row">
				<div class="col-xs-2 color-666 text-center nav-list padd_0">
					
					<?php if(is_array($v["son"])): $k = 0; $__LIST__ = $v["son"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v1): $mod = ($k % 2 );++$k; if($k == 1): ?><div class="col-xs-12 mar-t20 pad-lr0 active" sdf="<?php echo ($v1["id"]); ?>">
						<a href="#item1" class="color-666">
							<?php echo ($v1["typeName"]); ?>
						</a>
					</div>
					<?php else: ?>
					<div class="col-xs-12 mar-t20 pad-lr0" sdf="<?php echo ($v1["id"]); ?>">
						<a href="#item1" class="color-666" >
							<?php echo ($v1["typeName"]); ?>
						</a>
					</div><?php endif; endforeach; endif; else: echo "" ;endif; ?>
				</div>
				
				<div class="col-xs-10 col-xs-offset-2 nav-cont padd_0" id="demo">
					<!--限时疯抢-->
				
            			
						
				<?php if(is_array($v["son"])): $k = 0; $__LIST__ = $v["son"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v1): $mod = ($k % 2 );++$k;?><div class="col-xs-12 padd_0 list">
				
				<?php if($k == 1): ?><div class="col-xs-12 pad-up16" style="margin-top:20px" class="product">
						
							<a href="<?php echo U('good/goodlist',array('categoryid1'=>$v1['id']));?>"><img class="img-responsive" src="<?php echo ($v1["typeImage"]); ?>"  /></a>
						</div>
						<div class="col-xs-12 mar-b20">
							<span class="font15"><?php echo ($v1["typeName"]); ?></span>
							<a href="<?php echo U('good/goodlist',array('categoryid1'=>$v1['id']));?>"><button type="button" class="mybtn font12 color-669900 pull-right"> 更多</button></a>
						</div>
					<?php else: endif; ?>
						
						<div class="col-xs-12 padd_0">
						<?php if(is_array($v1["son1"])): $i = 0; $__LIST__ = $v1["son1"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v2): $mod = ($i % 2 );++$i;?><div class="col-xs-4">
								<a href="<?php echo U('good/goodlist',array('categoryid'=>$v2['id']));?>">
								<img class="img-responsive" src="<?php echo ($v2["typeImage"]); ?>" /></a>
								<p class="color-333 font12 text-center mar-t20"><?php echo ($v2["typeName"]); ?></p>
							    </div><?php endforeach; endif; else: echo "" ;endif; ?>
						</div>
					</div><?php endforeach; endif; else: echo "" ;endif; ?>	
					
		           
			
				</div>
				
			</div>
		</div><?php endforeach; endif; ?>
		 <?php if(is_array($onecategory1)): foreach($onecategory1 as $key=>$v): ?><div class="container-fluid mar-b52 cont">
			<div class="row">
				<div class="col-xs-2 color-666 text-center nav-list1 padd_0">
					<?php if(is_array($v["son"])): $k = 0; $__LIST__ = $v["son"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v1): $mod = ($k % 2 );++$k; if($k == 1): ?><div class="col-xs-12 mar-t20 pad-lr0 active" sdf1="<?php echo ($v1["id"]); ?>">
						<a href="#item1" class="color-666">
							<?php echo ($v1["typeName"]); ?>
						</a>
					</div>
					<?php else: ?>
					<div class="col-xs-12 mar-t20 pad-lr0" sdf1="<?php echo ($v1["id"]); ?>">
						<a href="#item6" class="color-666">
							<?php echo ($v1["typeName"]); ?>
						</a>
					</div><?php endif; endforeach; endif; else: echo "" ;endif; ?>
			
				</div>
				<div class="col-xs-10 col-xs-offset-2 nav-cont padd_0" id="demo1" >
					<div  style="margin-top:20px"></div>
					
				
						<div class="col-xs-12 padd_0 list" >
			   
						<div class="col-xs-12 padd_0" >
							<?php if(is_array($v["sum"])): foreach($v["sum"] as $key=>$v2): if(is_array($v2["sonn"])): foreach($v2["sonn"] as $key=>$v3): ?><div class="col-xs-6">

								<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v3['id']));?>" >
								<img class="img-responsive" src="<?php echo ($v3["meubleImage"]); ?>" />
								<p class="color-333 font12 text-center mar-t10 mar-t5 mar-b5 heightControl-1"><?php echo ($v3["meubleName"]); ?></p>
								<p class="font14 color-ff5b01 text-center">￥<?php echo ($v3['ionic']); ?></p>
								</a>
							</div><?php endforeach; endif; endforeach; endif; ?>
						</div>
					</div>
					
                
				  
				</div>
			</div>
		</div><?php endforeach; endif; ?> 
		<!--底部选项卡-->
		<div class="bottom">
			<a href="<?php echo U('index/index');?>"><div class="other">
				<img class="center-block" src="/Public/img/bottomTab/home.png" />
				<p>首页</p>
			</div></a>
			<a href="<?php echo U('good/classify');?>">
			<div class="other">
				<img class="center-block" src="/Public/img/bottomTab/classify.png" />
				<p class="color-669900">分类</p>
			</div></a>
			<a href="<?php echo U('good/goodlist');?>">
			<div class="myplus">
				<img class="center-block" src="/Public/img/bottomTab/plus.png" />
			</div></a>
			<a href="<?php echo U('good/cart');?>">
			<div class="other">
				<img class="center-block" src="/Public/img/bottomTab/shopcar.png" />
				<p>购物车</p>
			</div></a>
			<a href="<?php echo U('user/userinfo');?>">
			<div class="other">
				<img class="center-block" src="/Public/img/bottomTab/mine.png" />
				<p>我的</p></a>
			</div>
		</div>
<!--model-->
	<div class="container-fluid searchCover">
		<div class="row bg-fff bor-b-f2">
			<div class="col-xs-10 pad-r0">
				<input type="search" class="model-search" value="布艺沙发" />
			</div>
			<div class="col-xs-2 padd_0 text-center mar-t15 ">
				<button class="mybtn model-btn">搜索</button>
			</div>
		</div>
		<div class="row bg-fff">
			<div class="col-xs-12 font10 color-999 pad-up10">
				<span>热门搜索</span>
				<button class="mybtn pull-right">换一换</button>
			</div>
			<div class="col-xs-12 padd_0">
			 <?php if(is_array($goodname)): foreach($goodname as $key=>$v): ?><div class="col-xs-4">
						<button class="model-button pad-up20"><?php echo (getsubstr($v["meubleName"],0,20)); ?></button>
					</div><?php endforeach; endif; ?>

			</div>
		</div>
		<div class="row bg-fff mar-t15">
			<div class="col-xs-12 font10 color-999 pad-up10 bor-b-f2">
				<span>历史搜索</span>
				<button class="mybtn pull-right">清除</button>
			</div>
			<div class="col-xs-12 font10 color-999 pad-up10 bor-b-f2">
				<span>商品</span>
				<span class="font13 color-333 model-lx">布艺沙发</span>
			</div>
		</div>
	</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		function bg() {
			$('.search').addClass('active');
			$('.searchCover').css('display','block').animate({top:'0px'});
		}

		function bga() {
			$('.search').removeClass('active')
		}
		$('.nav-list div').click(function() {
			var t = $(this).index();
			//var a = $('.list').eq(t).offset().top
			$('.nav-list div').removeClass('active');
			$(this).addClass('active');
			//$(document).scrollTop(a - 100);
		})
			$('.nav-list1 div').click(function() {
			var t = $(this).index();
			//var a = $('.list').eq(t).offset().top
			$('.nav-list1 div').removeClass('active');
			$(this).addClass('active');
			//$(document).scrollTop(a - 100);
		})
		$('.classify div').click(function() {
			$('.classify div').removeClass('active');
			$('.cont').removeClass('active');
			$('.cont').eq($(this).index()).addClass('active');
			$(this).addClass('active');
		})
			$('.classify div').click(function() {
			$('.classify div').removeClass('active');
			$('.cont1').removeClass('active');
			$('.cont1').eq($(this).index()).addClass('active');
			$(this).addClass('active');
		})
		$('.nav-list div').click(function() {
			$('.nav-list div').removeClass('active');
			$(this).addClass('active');
				var category_id=$(this).attr('sdf');
			$.post("<?php echo U('good/cateAjax');?>",{ category_id:category_id},
				function(res){
			   		$('#demo').empty().append(res);
				});
		})
			$('.nav-list1 div').click(function() {
			$('.nav-list1 div').removeClass('active');
			$(this).addClass('active');
				var category_id=$(this).attr('sdf1');
				
			$.post("<?php echo U('good/cateAjax1');?>",{ category_id:category_id },
				function(res1){
				   
			   		$('#demo1').empty().append(res1);
				});
		})
		$('.model-btn').click(function(){
			$('.searchCover').animate({top:'-300px'},200).slideUp();
		})
		
	</script>
	<script>
$(function(){
    
	$('.classify').children('.col-xs-6').eq(0).addClass('active');
	 $('#sea').focusout(function(){
	    var url = "<?php echo U('Good/goodList');?>";
	    location.href=url+'?search='+$('#sea').val();
	})
	
})

</script>
</html>