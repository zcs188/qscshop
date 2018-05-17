<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>安装详情</title>
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
		<!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">安装详情</span>
		</div>

		<!--顶部标题-->
		<?php if($install[0]['isNotType'] == 1): ?><div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 padd_0">
				<?php if($install[0]['returnType'] == 1): ?><p class="mar0 color-fff tit">安装未接受</p>
				<?php elseif($install[0]['returnType'] == 2): ?>
				<p class="mar0 color-fff tit">安装已接受</p>
				<?php elseif($install[0]['returnType'] == 3): ?>
				<p class="mar0 color-fff tit">安装已预约</p>
				<?php else: ?>
				<p class="mar0 color-fff tit">安装已完成</p><?php endif; ?>
					
				</div>
					<div class="col-xs-12 bor-b-f2 mar-b10">
						<p class="font13 color-808080 mar-t10 mar-b10">订单编号：<?php echo ($install[0]['ordreCoter']); ?></p>
					</div>
					<?php if(is_array($install)): $i = 0; $__LIST__ = $install;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 bg-fff padd_0">
					<div class="col-xs-3 pad-lr10 mar-b10">
						<img class="img-responsive img-rounded" src="<?php echo ($v['meubleImage']); ?>" />
					</div>
					<div class="col-xs-9 font11">
						<p class="color-333 heightControl-2">
							<?php echo ($v['goodsName']); ?>
						</p>
						<p class="color-4c4c4c">规格:<?php echo ($v['norme2']); ?>【<?php echo ($v['norme1']); ?>】</p>
					</div>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>
			<div class="row bg-fff mar-t15">
				<div class="col-xs-12 font13 pad-up15 font-w bor-b-f2" >
					<span class="color-333"><?php echo ($install[0]['name']); ?></span>
					<a href="tel:<?php echo ($install[0]['phone']); ?>"  class="color-1a1a1a"><span><?php echo ($install[0]['phone']); ?></span>
					<button type="button" class="mybtn pull-right">
						<img class="dh" src="/Public/img/huoyun/dh.png"/>
					</button></a>
				</div>
				<div class="col-xs-12 font13 pad-up15 bor-b-f2">
					<p class="heightControl-1 mar-b0">
						<img class="dw" src="/Public/img/huoyun/dw.png"/>
						<?php echo ($install[0]['membersAddress']); ?>
					</p>
				</div>
			</div>
			<div class="row bg-fff mar-t15">
				<div class="col-xs-12 font13 pad-up15 bor-b-f2">
					<a href="tel:023-8168-2567" class="color-1a1a1a">
						<span class="color-4c4c4c">客服电话</span>
						<span class="color-999 pull-right">023-8168-2567 <img class="r" src="/Public/img/huoyun/r.png"/> </span>
					</a>
				</div>
			</div>
				<div class="row bg-fff mar-t15">
				<div class="col-xs-12 font13 pad-up15 bor-b-f2">
					<span class="color-4c4c4c">安装金额</span>
					<span class="color-999 pull-right">￥<?php echo ($install[0]['returnSumMoney']); ?></span>
				</div>
			</div>
			<?php if($install[0]['returnType'] == 3): ?><div class="row bg-fff mar-t15">
				<div class="col-xs-12 font13 pad-up15 bor-b-f2">
					<span class="color-4c4c4c">预约时间</span>
					<span class="color-999 pull-right"><?php echo ($install[0]['appointmentTime']); ?></span>
				</div>

			</div>
		<?php else: endif; ?>
	<!-- 		<div class="row bg-fff mar-t15">
				<div class="col-xs-12 font13 pad-up15 bor-b-f2">
					<span class="color-4c4c4c">预计到货时间</span>
					<span class="color-669900 pull-right">2017-06-01  15:45</span>
				</div>
				<div class="col-xs-12 pad-up10 font13 color-808080">
					<p>创建订单：628565526323596</p>
				</div>
			</div> -->
		</div>
		<div class="bottom text-right bg-fff">
		     <?php if($install[0]['returnType'] == 1): ?><button class="order pull-right" type="button" onclick="acceptiorder('<?php echo ($install[0]['pdid']); ?>');">接受订单</button>
			<button class="order pull-right bg-b3b3b3" type="button" onclick="canceliorder('<?php echo ($install[0]['pdid']); ?>');">取消订单</button>
				<?php elseif($install[0]['returnType'] == 2): ?>
				<button class="btn2 pull-right order1" type="button">预约安装</button>
            
				<?php else: endif; ?>
			
		</div>
		<!--model-->
	<div class="cover"></div>
	<div id="datePlugin"></div>
	<div class="model">
		<div class="demo">
			<!-- <div class="lie">日期设置-1:<input  id="beginTime" class="kbtn" /></div> -->
			<div class="lie">
				日期设置:<input id="endTime" class="kbtn" />
			<button type="button"class="btn1 pull-right" onclick="makeinstall('<?php echo ($install[0]['orderId']); ?>');">确认</button>
			</div>
		</div>
	</div>
	<?php else: endif; ?>
	</body>
	<script type="text/javascript">
	$('.order1').click(function() {
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
</html>