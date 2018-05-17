<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>我的足迹</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/foot.css" />
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
			<span class="font16">我的足迹</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
			
		
				<?php if(is_array($foot)): foreach($foot as $key=>$v1): if(is_array($v1["good"])): foreach($v1["good"] as $key=>$v): ?><div class="col-xs-12 bg-fff list mar-t10">
					<span class="circle pull-left getcartid" id="getcartid"  vbnm="<?php echo ($v1["footid"]); ?>"></span>
					<a href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000">
					<img class="goods img-rounded pull-left" src="<?php echo ($v["meubleImage"]); ?>" />
					<p class="mar-b5">
						<a class="color-333 font12" href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>">
							<?php echo ($v["meubleName"]); ?>
						</a>
					</p>
					<p class="color-666 font15 mar-b5">
						销量：<?php echo ($v["imaginerNumber"]); ?>
					</p>
					<p class="mar0 font15 color-ff5b01">
						￥<?php echo ($v["minPrice"]); ?>
					</p>
					</a>
				</div><?php endforeach; endif; endforeach; endif; ?> 
				
			</div>
		</div>
		<!--底部菜单-->
		<div class="container-full  bg-fff toal-list">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 padd_0">
				<div class="pull-left mar-t10 all-sel">
					<span class="circle"></span>
					<span class="font15 color-333 mar-r10">全选</span>
				</div>
				<div class="pull-right">
					<button class="del bg-eb2522 font17" onclick="detefootid();">
						删除
					</button>
				</div>
			</div>
		</div>
		<!--底部菜单-->
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
	

	function detefootid()
	{
		var arr3=[];//要删除的足迹商品ID
		  for(var i=0;i<$('.getcartid.active').length;i++){
			  arr3.push($('.getcartid.active').eq(i).attr('vbnm'));
		  }
		  var id=JSON.stringify(arr3);
		  var url = "<?php echo U('user/deletefoot');?>";
			 $.post(url, {id:id}, function(msg){
	            if(msg.state=='200'){
	             window.location.reload();
	            }
	            else if(msg.state == '400')
	            {
	           	 window.location.href ='/index.php/home/user/login';
	            } 
	            else if(msg.state!='200'){
	           	// alert(msg.msg);
	           layer.open({
	       		    content: msg.msg
	       		    ,skin: 'msg'
	       		    ,time: 3 //3秒后自动关闭
	       		  }); 
	            }
	          }, 'json')  

	}
		var obj = $('.cont .circle');
		for(var i = 0; i < obj.length; i++) {
			obj.eq(i).attr('s', '0');
		}
		var s = true;
		$('.toal-list .circle').click(function() {
			if(s) {
				$(this).addClass('active');
				$('.cont .circle').attr('s', '1');
				$('.cont .circle').addClass('active');
			} else {
				$(this).removeClass('active');
				$('.cont .circle').attr('s', '0');
				$('.cont .circle').removeClass('active');
			}
			s = !s;
		})
		$('.list .circle').click(function() {
			if($(this).attr('s') == 0) {
				$(this).addClass('active');
				$(this).attr('s', '1');
			} else {
				$(this).removeClass('active')
				$(this).attr('s', '0');
			}
			s = true;
			all();
		})
		$('.del').click(function() {
			$('.circle.active').parents('.list').remove();
			$('.toal-list .circle').removeClass('active');
		})

		function all() {
			var n = 0;
			for(var i = 0; i < obj.length; i++) {
				if(obj.eq(i).attr('s') == 1) {
					n++;
				}
			}
			if(n == obj.length) {
				$('.toal-list .circle').addClass('active');
			} else {
				$('.toal-list .circle').removeClass('active');
			}
		}
	</script>

</html>