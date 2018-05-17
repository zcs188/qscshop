<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>商品详情</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/goodsInfor.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/swiper.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/style.css"/>
		<link rel="stylesheet" href="/Public/owl/css/owl.carousel.css" />
		<link rel="stylesheet" href="/Public/owl/css/owl.theme.css" />
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
			<span class="font16">商品详情</span>
		</div>

		<!--顶部标题-->
		<!--图片轮播部分-->
		<div class="container-fluid mar-t30 bg-fff" style="margin-top:42px">
			<div class="row">
				<div class="col-xs-12 padd_0">
					<div id="owl-demo" class="owl-carousel Imgbox">
					<?php if(is_array($goodsimage)): foreach($goodsimage as $key=>$v): ?><a class="item"><img src="<?php echo ($v["meubleImage"]); ?>" class="img-responsive" alt=""></a><?php endforeach; endif; ?>
					</div>
				</div>
			</div>
		</div>
		<!--图片轮播部分结束-->
		<div class="container-fluid infor">
			<div class="row bg-fff">
				<div class="col-xs-12 font15 color-333 mar-t10">
					<p><?php echo ($goodsdetail["meubleName"]); echo ($goodsdetail["productid"]); ?></p>
							<?php if(($goodsdetail['isNotTeJia'] == 1) OR ($goodsdetail['isNotActif'] == 1) ): ?><p class="color-669900 font15 mar0">￥<?php echo ($goodsdetail["meubleActifPrix"]); ?><span style="margin-left:180px;"><span style="color:#000000">销量:<?php echo ($goodsdetail["imaginerNumber"]); ?></span></span></p>
				<?php else: ?>
				    <p class="color-669900 font15 mar0" id="dianprice" >
						¥ <?php echo ($goodsdetail['son'][0]['meublePrix']); ?><span style="margin-left:180px;"><span style="color:#000000">销量:<?php echo ($goodsdetail["imaginerNumber"]); ?></span></span>
					</p>
					<!--<s class="font9 color-999">¥ <?php echo ($goodsdetail["minPrice"]); ?>-<?php echo ($goodsdetail["maxPrice"]); ?></s>--><?php endif; ?>
				</div>
				<div class="col-xs-12 text-center bg-f2f2f2 pad-up10 fuwu mar-t10">
					<div class="col-xs-3 list padd_0">
						<img src="/Public/img/goods/1.png" /> 承诺保价
					</div>
					<div class="col-xs-3 list padd_0">
						<img src="/Public/img/goods/2.png" /> 极速发货
					</div>
					<div class="col-xs-3 list padd_0">
						<img src="/Public/img/goods/3.png" /> 品质保证
					</div>
					<div class="col-xs-3 list padd_0">
						<img src="/Public/img/goods/4.png" /> 快捷支付
					</div>
				</div>
				<div class="col-xs-12 font12 pad-up10">
					<span class="color-fff score">积分</span>
					<span class="color-333" id="dianprice1">购买该商品可获得<?php echo ($goodsdetail['son'][0]['meublePrix']); ?>积分</span>
				</div>
			</div>
			<div class="row bg-fff mar-t10">
				<div class="col-xs-12 font13 pad-up15 b selGG">
					<span class="color-666">已选择：</span>
					<span class="color-333">请选择规格</span>
					<img class="right pull-right mar-t5" src="/Public/img/order/r.png" />
				</div>
				<div class="col-xs-12 font13 pad-up15">
					<span class="color-666">配送至：</span>
					<span class="color-333"><?php echo ($province1); echo ($city); echo ($area); ?></span>
					<span class="pull-right color-666 font12">
					<?php if($mall['moneyPostage'] == ''): ?>包邮
				
				<?php else: ?>
				运费：￥<?php echo ($mall['moneyPostage']); endif; ?>
							<img class="right" src="/Public/img/order/r.png"/>
						</span>
				</div>
			</div>
		</div>
		<!--商品详情-->
				
		<div class="container-fluid mar-t10 bg-fff mar-b52">
			<div class="row bg-fff bor-b-f2 mar-t10 text-center t-infor">
				<div class="col-xs-4 col-xs-offset-2 pad-up10 f">
					图文详情
				</div>
				<div class="col-xs-4 pad-up10 ">
					产品参数
				</div>
			</div>
			<div class="row product active">
	  <p class="img-responsive"><?php echo ($goodsdetail["meubleRecommander"]); ?></p>
				<!-- <img class="img-responsive" src="/Public/img/detail/tw1.png"/>
				<img class="img-responsive" src="/Public/img/detail/tw1.png"/>
				<img class="img-responsive" src="/Public/img/detail/tw1.png"/> -->
			</div>
			<div class="row product">
			   <div class="col-xs-12 padd_0">
			   <p class="img-responsive"><?php echo ($goodsdetail["meubleParameter"]); ?></p>
				</div>
			
				<div class="col-xs-12 mar-t15 pad-up10 bor-b-f2">
					<p class="font15 text-center mar0">商品推荐</p>
				</div>
				<div class="col-xs-12">
					<div class="swiper-container mar-t10">
						<div class="swiper-wrapper">
						<?php if(is_array($tuijiangoods)): $i = 0; $__LIST__ = $tuijiangoods;if( count($__LIST__)==0 ) : echo "暂时没有相关推荐" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="swiper-slide">
							<a href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000">
								<img class="img-responsive img-rounded" src="<?php echo ($v["meubleImage"]); ?>" style="width:300px;height:130px" alt="" />
								<p class="font12 heightControl-1 mar-b5 mar-t5"><?php echo ($v["meubleName"]); ?></p>
								<p class="font15 color-ff5b01 mar-b5">￥<?php echo ($v['son'][0]['meublePrix']); ?></p>
							</a>
							</div><?php endforeach; endif; else: echo "暂时没有相关推荐" ;endif; ?>
							
						</div>
					</div>
				</div>
			</div>
		</div>
			
		<!--商品详情-->
		<!--底部菜单-->
		<div class="container-fluid bg-fff bottom1 ">
			<div class="row">
				<div class="col-xs-4 text-center padd_0 text-center">
					<div class="col-xs-6 padd_0">
						<img class="pic1 center-block mar-t5" src="/Public/img/goods/11.png" alt="" />
						<a href="tel:023-8168-2567"><p class="color-666 font12 mar0">客服</p></a>
					</div>
					<div class="col-xs-6 padd_0">
					<a href="<?php echo U('good/cart');?>">
						<img class="pic1 center-block mar-t5" src="/Public/img/goods/1111.png" />
						<p class="color-666 font12 mar0">购物车</p>
						</a>
					</div>
				</div>
				<div class="col-xs-8 padd_0">
					<div class="col-xs-6 padd_0">
						<button class="btn1 shopcar bg-ff5a00" id="cartadd">加入购物车</button>
					</div>
					<div class="col-xs-6 padd_0">
						<button class="btn1 buy bg-669900" id="mabuy">立即购买</button>
					</div>
				</div>
			</div>
		</div>
		<!--底部菜单-->

		<!--model-->
		<div class="cover"></div>
		<div class="model">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-4 pad-r0 pic">
						<img class="img-rounded img-responsive" src="<?php echo ($goodsdetail["meubleImage1"]); ?>" id="qiehuan" />
					</div>
					<div class="col-xs-8">
						<p class="font14 color-ff5b01 mar-b5 mar-t5" id="dianprice">￥<?php echo ($goodsdetail["minPrice"]); ?></p>
						<p class="font10 color-999 mar-b5">库存：<?php echo ($kucun); ?></p>
						<p class="font12 color-999" id="dianji">已选:</p>
					</div>
					<button type="button" class="mybtn space"><img src="/Public/img/list/cc.png"/></button>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<p class="font13 font-w">规格</p>
						<ul class="color-333 font13 list-unstyled lx" id="getid">
					<?php if(is_array($guige)): foreach($guige as $key=>$v): ?><li value="<?php echo ($v["id"]); ?>" eee="<?php echo ($v["meubleActifPrix"]); ?>" kkk="<?php echo ($v["reserve1"]); ?>"><?php echo ($v["norme2"]); ?>【<?php echo ($v["norme1"]); ?>】</li><?php endforeach; endif; ?>		
						</ul>
						<p>选择数量</p>
						<div class="mar-b10">
							<button type="button" class="mybtn minu"><img src="/Public/img/list/min1.png"/></button>
							<span class="number" id="libuy">1</span>
							<button type="button" class="mybtn plus"><img src="/Public/img/list/plus1.png"/></button>
						</div>
					</div>
					<div class="col-xs-12 padd_0">
						<button class="btn-block color-fff sure">立即购买</button>
					</div>
				</div>
			</div>
		</div>

	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="/Public/Bootstrap/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="/Public/js/jquery.touchSlider.js" ></script>
	<script type="text/javascript" src="/Public/js/jquery.event.drag-1.5.min.js" ></script>
	<script type="text/javascript" src="/Public/js/swiper.js"></script>
	<script type="text/javascript" src="/Public/owl/js/owl.carousel.js" ></script>
	<script type="text/javascript">
			$(function(){
				
		        $('#owl-demo').owlCarousel({
		            items: 1,
		        });
		        addClass();
              
			});
			function addClass(){
				$('.product img').addClass('img-responsive');
			}
    var swiper = new Swiper('.swiper-container', {
			pagination: '.swiper-pagination',
			slidesPerView: 2.5,
			paginationClickable: true,
			spaceBetween:10,
			freeMode: true
		});
		$('.t-infor div').click(function() {
			$('.t-infor div').removeClass('f');
			$(this).addClass('f');
			$('.product').removeClass('active');
			$('.product').eq($(this).index()).addClass('active');
		})
		$('.cover').click(function(){
			$('.model').slideUp();
			$('.cover').slideUp(10);
		})

		//		弹出框
		$('.buy').click(function() {
			$('.sure').html('立即够买');
			$('.model').slideDown();
			$('.cover').slideDown(10);
			var specid=$('#getid li.active').attr('value');//立即购买选中的规格id
			if (typeof(specid) == "undefined") { 
			    return false;
			}   
			var number=$('#libuy').html();//选择的数量
			
		if(specid==''&&number=='')
      	  {
      	  layer.open({
       		    content: "请选择你要商品规格，数量！"
       		    ,skin: 'msg'
       		    ,time: 3 //3秒后自动关闭
       		  }); 
      	  return;
      	  }
  
        else
        {
		window.location.href ='/index.php/home/good/ordersure?specid='+specid+'&number='+number;
      	  
        }
			 
 
			
		})
		$('.selGG').click(function() {
			$('.sure').html('立即够买');
			$('.model').slideDown();
			$('.cover').slideDown(10);
			
		})
		
		$('.space').click(function() {
			$('.model').slideUp();
			$('.cover').slideUp(10);
		})
		$('.sure').click(function() {
			$('.model').slideUp();
			$('.cover').slideUp(10);
		})
		$('.lx li').click(function() {
			$('.lx li').removeClass('active');
			$(this).addClass('active');
			var val = $(this).text();
			var val1=$(this).attr('eee');
			var val2=$(this).attr('kkk');
			$('#dianprice').text(val1);
			$('#dianprice1').text('购买该商品可获得'+val1+'积分');
			$("#dianji").text(val);
			$("#qiehuan").attr("src",val2);
		})
		$('.shopcar').click(function() {
			$('.sure').html('加入购物车');
			$('.model').slideDown();
			$('.cover').slideDown(10);
		    var id=$('#getid li.active').attr('value');
		
			if (typeof(id) == "undefined") { 
			    return false;
			}   	
			else
			{
				 var url = "<?php echo U('good/addcart');?>";
	             $.post(url, {id:id}, function(msg){
	             if(msg.state==200){
	            	 layer.open({
		        		    content: msg.msg
		        		    ,skin: 'msg'
		        		    ,time: 3 //3秒后自动关闭
		        		  }); 
	             } 
	              else if(msg.state == 400)
	             {
	            	 window.location.href ='/index.php/home/user/login';
	             } 
	             else if(msg.state!=200){
	            layer.open({
	        		    content: msg.msg
	        		    ,skin: 'msg'
	        		    ,time: 3 //3秒后自动关闭
	        		  }); 
	             }
	           }, 'json')
			}
		})
		$('.plus').click(function(){
			$(this).prev('.number').html(parseInt($(this).prev('.number').html())+1);
		})
		$('.minu').click(function(){
			if(parseInt($(this).next('.number').html())>1){
				$(this).next('.number').html(parseInt($(this).next('.number').html())-1);
			}
		})
	
	</script>

</html>