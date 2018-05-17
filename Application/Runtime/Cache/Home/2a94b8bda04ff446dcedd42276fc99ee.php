<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>首页</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/home.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/swiper.css" />
		<link rel="stylesheet" type="text/css" href="/Public/owl/css/owl.carousel.css" />
		<link rel="stylesheet" type="text/css" href="/Public/owl/css/owl.theme.css" />
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
		<script type="text/javascript" src="/Public/js/jQuery.textSlider.js" ></script>
		<!-- 百度流量统计器 -->
		<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?92149dcfc34671c6b6a87d9d1d7607ec";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
		<style>

	ul,li{margin:0px;padding:0px;list-style-type:none}
	#scrollDiv{ overflow:auto}
	.scrollText{width:300px;height:100px;min-height:25px;line-height:25px; float:left;overflow:hidden}
	.scrollText li{height:25px;padding-left:10px;}
	.up{ margin-left:310px; width:50px; height:50px; background:#F90}
	.down{ margin:0 0 0 310px; zoom:1; width:50px; height:50px; background:#960}


		</style>	
	</head>

	<body>
		<!-- <div class="nav">
			<button class="mybtn pull-right goodsSearch" type="button">
				<img class="list" src="/Public/img/home/list.png"/>
			</button>
		</div> -->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 padd_0">
					<div id="owl-demo" class="owl-carousel">
					<?php if(is_array($banner)): foreach($banner as $key=>$s): ?><a href="<?php echo ($s["bannerUrl"]); ?>" class="item"><img src="<?php echo ($s["bannerImage"]); ?>" class="img-responsive" alt=""></a><?php endforeach; endif; ?>
					</div>
				</div>
				
				<div class="col-xs-12  bor-b-f2 bg-fff">
					<p class="font11 mar0 text-center">
					<div class="col-xs-3  mar-t5" >
						<img class="col-xs-6 padd_0 img-responsive" src="/Public/img/classify/logo.jpg" /> 
						<img class="col-xs-6 padd_0 img-responsive" src="/Public/img/home/tz.png" /> 
					</div>
					<div class="col-xs-9 padd_0" style="height:24px;">
						<div>
						<div id="scrollDiv">
						<div class="scrollText">
						  <ul>
						   <?php if(is_array($message)): foreach($message as $key=>$v): ?><li style="margin-left:36px;"> <a href="<?php echo U('user/messagedetail',array('id'=>$v['id']));?>" style="color:#000000"><?php echo (getsubstr($v['title'],0,10)); ?></a></li><?php endforeach; endif; ?> 
						  </ul>
						</div>
						</div>
					       
					    </div>
					
						
					</div>
						
						
					</p>
				</div>
				<div class="col-xs-12 padd_0 pad-up10 bg-fff mar-b10">
						<div class="swiper-container swiper2">
						<div class="swiper-wrapper">
						<?php if(is_array($style)): foreach($style as $key=>$v): ?><div class="swiper-slide">
								<a href="<?php echo U('good/classify');?>" style="color:#000000"><img class="img-responsive" src="<?php echo ($v["typeImage"]); ?>" /></a>
							</div><?php endforeach; endif; ?>	
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12  bor-b-f2  bg-fff">
					<p class="font15 mar0 text-center pad-up10">
						<a  href="<?php echo U('good/goodlist',array('new'=>1));?>" style="color:#000000">
						<img class="xp" src="/Public/img/newgd.jpg" /> 新品首发</a>
					</p>
				</div>
				<div class="col-xs-12 padd_0 bg-fff">
				<a href="<?php echo U('good/gooddetail',array('goodsid'=>'05b23faa-b771-4400-a27e-d156faa05455'));?>" >	<img class="img-responsive mar-t10" src="/Public/img/home/ljj.png" /></a>
					<a class="qg" href="<?php echo U('good/gooddetail');?>">
						<img src="/Public/img/home/qg.png" />
					</a>
				</div>
				
				
				
				<div class="col-xs-12 padd_0 mar-t10 bg-fff">
					<div class="swiper-container swiper3">
						<div class="swiper-wrapper" >
							<?php if(is_array($newgoods)): foreach($newgoods as $key=>$v): ?><div class="swiper-slide " style="margin-top:10px">
								<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000;overflow: hidden; width: 90%; height: 30px; position: relative;">
										<img class="img-responsive " src="<?php echo ($v["meubleImage"]); ?>" />
										
										<p class="font12 text-center mar-t5 mar-b5 heightControl-1" ><?php echo ($v["meubleName"]); ?></p>
										<p class="font14 color-ff5b01 text-center">￥<?php echo ($v['son'][0]['meublePrix']); ?></p>
								</a>
									</div><?php endforeach; endif; ?>	
						</div>
					</div>
				
	
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 bor-b-f2  mar-t10 bg-fff">
					<p class="font15 mar0 text-center pad-up10">
						<a  href="<?php echo U('good/goodlist',array('tejia'=>1));?>" style="color:#000000">
						<img class="xp" src="/Public/img/tejia.jpg" /> 特价商品</a>
					</p>
				</div>
		
		
				<div class="col-xs-12 padd_0  bg-fff">
					<div class="swiper-container swiper3">
						<div class="swiper-wrapper">
							<?php if(is_array($tejiagoods)): foreach($tejiagoods as $key=>$v): ?><div class="swiper-slide " style="margin-top:10px">
								<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000;overflow: hidden; width: 90%; height: 30px; position: relative;">
										<img class="img-responsive " src="<?php echo ($v["meubleImage"]); ?>" />
										<p class="font12 text-center mar-t5 mar-b5 heightControl-1"><?php echo ($v["meubleName"]); ?></p>
										<p class="font14 color-ff5b01 text-center">￥<?php echo ($v['son'][0]['meubleActifPrix']); ?></p>
								</a>
									</div><?php endforeach; endif; ?>	
						</div>
					</div>
				
	
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 bor-b-f2 mar-t10  bg-fff">
					<p class="font15 mar0 text-center pad-up10">
						<a  href="<?php echo U('good/goodlist',array('tuijian'=>1));?>" style="color:#000000">
						<img class="xp" src="/Public/img/tuijian.jpg" /> 推荐商品</a>
					</p>
				</div>
			
				<div class="col-xs-12 padd_0  bg-fff">
					<div class="swiper-container swiper3">
						<div class="swiper-wrapper">
							<?php if(is_array($recommend)): foreach($recommend as $key=>$v): ?><div class="swiper-slide " style="margin-top:10px">
								<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000;overflow: hidden; width: 90%; height: 30px; position: relative;">
										<img class="img-responsive " src="<?php echo ($v["meubleImage"]); ?>" />
										<div  style="margin-top:10px"></div>
										<p class="font12 text-center mar-t5 mar-b5 heightControl-1"><?php echo ($v["meubleName"]); ?></p>
										<p class="font14 color-ff5b01 text-center">￥<?php echo ($v['son'][0]['meublePrix']); ?></p>
										
								</a>
									</div><?php endforeach; endif; ?>	
						</div>
					</div>
				
	
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 bor-b-f2 mar-t10 bg-fff">
					<p class="font15 mar0 text-center pad-up10">
						<a  href="<?php echo U('good/goodlist',array('huodong'=>1));?>" style="color:#000000">
						<img class="xp" src="/Public/img/huoaci.jpg" /> 活动商品</a>
					</p>
				</div>
	
				<div class="col-xs-12 padd_0  bg-fff">
					<div class="swiper-container swiper3">
						<div class="swiper-wrapper">
							<?php if(is_array($activity)): foreach($activity as $key=>$v): ?><div class="swiper-slide " style="margin-top:10px">
								<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000;overflow: hidden; width: 90%; height: 30px; position: relative;">
										<img class="img-responsive " src="<?php echo ($v["meubleImage"]); ?>" />
										<p class="font12 text-center mar-t5 mar-b5 heightControl-1"><?php echo ($v["meubleName"]); ?></p>
										<p class="font14 color-ff5b01 text-center">￥<?php echo ($v['son'][0]['meubleActifPrix']); ?></p>
								</a>
									</div><?php endforeach; endif; ?>	
						</div>
					</div>
				
	
				</div>
			</div>
			
			<div class="row bg-fff mar-t10">
			
				
					<?php if(is_array($banner1)): foreach($banner1 as $key=>$s): ?><div class="col-xs-12  padd_0">
				        <a  href="<?php echo ($s["bannerUrl"]); ?>" ><img class="img-responsive" src="<?php echo ($s["bannerImage"]); ?>"  /></a>
				</div><?php endforeach; endif; ?>
					
			
			</div>

		</div>
		<!--底部选项卡-->
		<div class="bottom">
			<a href="<?php echo U('index/index');?>">
				<div class="other">
					<img class="center-block" src="/Public/img/bottomTab/home1.png" />
					<p class="color-669900">首页</p>
				</div>
			</a>
			<a href="<?php echo U('good/classify');?>">
				<div class="other">
					<img class="center-block" src="/Public/img/bottomTab/classify1.png" />
					<p>分类</p>
				</div>
			</a>
			<a href="<?php echo U('good/goodlist');?>">
				<div class="myplus">
					<img class="center-block" src="/Public/img/bottomTab/plus.png" />
				</div>
			</a>
			<a href="<?php echo U('good/cart');?>">
				<div class="other">
					<img class="center-block" src="/Public/img/bottomTab/shopcar.png" />
					<p>购物车</p>
				</div>
			</a>
			<a href="<?php echo U('user/userinfo');?>">
				<div class="other">
					<img class="center-block" src="/Public/img/bottomTab/mine.png" />
					<p>我的</p>
				</div>
			</a>
		</div>
		<!--model-->
		<div class="container-fluid searchCover">
			<div class="row bg-fff bor-b-f2">
				<div class="col-xs-10 pad-r0">
					<input type="text" class="model-search" value="布艺沙发"  id="goodsearch"/>
				</div>
				<div class="col-xs-2 padd_0 text-center mar-t15 ">
					<button class="mybtn model-btn">搜索</button>
				</div>
			</div>
			<div class="row bg-fff">
				<div class="col-xs-12 font10 color-999 pad-up10">
					<span>热门搜索</span>
					<button class="mybtn pull-right" id="huan">换一换</button>
				</div>
				<div class="col-xs-12 padd_0">
				   <?php if(is_array($goodname)): $k = 0; $__LIST__ = $goodname;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($k % 2 );++$k; if($k < 10): ?><div class="col-xs-4" id="show" style="display:block">
						<button class="model-button pad-up5 getid" fff="<?php echo ($v["id"]); ?>"><?php echo (getsubstr($v["meubleName"],0,10)); ?></button>
					</div>
				<?php else: ?>
					<div class="col-xs-4" id="show1" style="display:none">
						<button class="model-button pad-up5 getid" fff="<?php echo ($v["id"]); ?>"><?php echo (getsubstr($v["meubleName"],0,10)); ?></button>
					</div><?php endif; endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
				</div>
			</div>
	<!-- 		<div class="row bg-fff mar-t15">
				<div class="col-xs-12 font10 color-999 pad-up10 bor-b-f2">
					<span>历史搜索</span>
					<button class="mybtn pull-right">清除</button>
				</div>
				<div class="col-xs-12 font10 color-999 pad-up10 bor-b-f2">
					<span>商品</span>
					<span class="font13 color-333 model-lx">布艺沙发</span>
				</div>
			</div> -->
		</div>
	</body>
	<script>
	

$(function(){
	$('#huan').click(function() {
	   var div = $("#show1");
	    if ( div.css("display") === "none" ) {
	        div.show();
	    } else {
	        div.hide();
	    }
	    var div1 = $("#show");
	    if ( div1.css("display") === "block" ) {
	        div1.show();
	    } else {
	        div1.hide();
	    }
	})
	
	 $('#goodsearch').focusout(function(){
	    var url = "<?php echo U('Good/goodList');?>";
	    location.href=url+'?search='+$('#goodsearch').val();
	})
})
</script>
	<script type="text/javascript" src="/Public/js/swiper.js"></script>
	
	<script type="text/javascript" src="/Public/owl/js/owl.carousel.js"></script>
	<script type="text/javascript">
$(document).ready(function(){
        $("#scrollDiv").textSlider({line:1,speed:500,timer:3000});
        $("#scrollDiv2").textSlider({line:2,speed:500,timer:3000});
});
</script>
	<script type="text/javascript">
		
	
		$(function() {
			$('#owl-demo').owlCarousel({
				items: 1,
			});
			
			
			
		});
		var swiper1 = new Swiper('.swiper1', {
			slidesPerView: 1.5,
			paginationClickable: true,
			spaceBetween: 10,
			freeMode: true
		});
		var swiper2 = new Swiper('.swiper2', {
			slidesPerView: 3,
			paginationClickable: true,
			spaceBetween: 10,
			freeMode: true
		});
		var swiper3 = new Swiper('.swiper3', {
			slidesPerView:3,
			paginationClickable: true,
			spaceBetween: 10,
			freeMode: true
		});
		 var swiper4 = new Swiper('.swiper4', { 
		        direction: 'vertical',
		        slidesPerView: 1,
		        paginationClickable: true,
		        spaceBetween: 30,
		        autoplay: 2500
		    });
		$('.goodsSearch').click(function() {
			$('.searchCover').slideDown();
		})
		$('.model-btn').click(function() {
			$('.searchCover').slideUp();
		})
		
		
	</script>

</html>