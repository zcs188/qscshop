<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>抽奖</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/choujiang.css" />
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
					<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">抽奖</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 padd_0">
					<img class="img-responsive" src="/Public/img/choujiang/cj.png" />
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 text-center mar-t15">
					<span class="font13 color-fff jh">您还有 <span class="number">4</span>&nbsp;次免费抽奖机会</span>
				</div>
				<div class="col-xs-12 mar-t20 b">
					<ul class="text-center">
						<li class="l1 list" sign="1">
							<img class="img-responsive" src="/Public/img/choujiang/1.png"/>
							<p class="font12 color-333 mar-t10">10积分</p>
						</li>
						<li class="l2 list" sign="1">
							<img class="img-responsive" src="/Public/img/choujiang/2.png"/>
							<p class="font12 color-333">50积分</p>
						</li>
						<li class="l3 list" sign="0">
							谢谢参与
						</li>
						<li class="l4 list" sign="1">
							<img class="img-responsive" src="/Public/img/choujiang/1.png"/>
							<p class="font12 color-333 mar-t10">20积分</p>
						</li>
						<li class="l5 list" sign="1">
							<img class="img-responsive" src="/Public/img/choujiang/5.png"/>
							<p class="font12 color-333 mar-t5">布艺抱枕</p>
						</li>
						<li class="l6 list" sign="1">
							<img class="img-responsive" src="/Public/img/choujiang/6.png"/>
							<p class="font12 color-333 mar-t5">布艺抱枕</p>
						</li>
						<li class="l7 list" sign="1">
							<img class="img-responsive" src="/Public/img/choujiang/7.png"/>
							<p class="font12 color-333 mar-t5">布艺抱枕</p>
						</li>
						<li class="l8 list" sign="1">
							<img class="img-responsive" src="/Public/img/choujiang/7.png"/>
							<p class="font12 color-333 mar-t5">布艺抱枕</p>
						</li>
						<li class="inner">
							<p class="mar0">立即</p>
							<p class="mar0">抽奖</p>
						</li>
					</ul>

				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 zjname">
					<p class="font17 mar-t20">中奖名单</p>
					<div class="zj-list">
						<p class="font13 mar0">186****2686     10积分     2017-02-02  23:23:23</p>
						<p class="font13 mar0">186****2686     10积分     2017-02-02  23:23:23</p>
						<p class="font13 mar0">186****2686     10积分     2017-02-02  23:23:23</p>
						<p class="font13 mar0">186****2686     10积分     2017-02-02  23:23:23</p>
						<p class="font13 mar0">186****2686     10积分     2017-02-02  23:23:23</p>
					</div>
				</div>
			</div>
			<div class="row mar-t15">
				<div class="col-xs-12 padd_0 text-center">
					<p class="bg-669900 color-fff font17 pad-up10">活动规则说明</p>
				</div>
				<div class="col-xs-12 font15 infor">
					<p class="mar0">1.活动时间:5月23日0:00至5月25日23:59:59。</p>
					<p class="mar0">2.注册并登录即可免费参与幸运转盘抽奖,活动期间每个会员获得一次免费抽奖机会,第二次抽奖起每次扣50积分。</p>
					<p class="mar0">3.抽中积分的将及时冲入会员张慧中,积分永远有效。</p>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		var timer = null;
		var num = 0;
		var s = 0;
		var n=parseInt($('.number').html()) ;
		$('.inner').click(function() {
			if(n>0){
				$('.list').removeClass('focus');
				clearInterval(timer);
				num = Math.round(Math.random() * 12 + 40);
				change(60);
				n--;
				$('.number').html(n);
			}else{
				alert('sorry!抽奖机会已经用完！')
			}
		})

		function change(n) {
			timer = setInterval(function() {
				
				s++;
				if(s == num) {
					clearInterval(timer);
					s = 0;
					if($('.list').eq(num % 8 - 1).attr('sign') == 1) {
						$('.list').eq(num % 8 - 1).addClass('focus');
						alert('恭喜你抽到' + $('.list').eq(num % 8-1).find('p').html());
					} else {
						alert($('.list').eq(num % 8 - 1).html().trim());
					}
					$('.list').eq(num % 8 - 1).removeClass('active');
				}else{
					$('.list').eq(s % 8).addClass('active');
				$('.list').eq(s % 8).siblings().removeClass('active');
				}
				if(num - s < 6) {
					clearInterval(timer);
					change(500);
				}
			}, n)

		}
	</script>

</html>