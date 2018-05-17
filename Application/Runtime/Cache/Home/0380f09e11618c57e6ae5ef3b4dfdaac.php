<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>支付</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/pay.css"/>
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
			<span class="font16">支付</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 pad-up15 bor-b-f2">
					<img class="wx" src="/Public/img/pay/weixin.png"/>
					<span class="font15">微信支付</span>
					<span class="circle pull-right"></span>
				</div>
				<input type="hidden" value="<?php echo ($orderId); ?>" id="orderid">
			<!-- 	<div class="col-xs-12 pad-up15 bor-b-f2">
					<img class="wx" src="/Public/img/pay/ali.png"/>
					<span class="font15">支付宝支付</span>
					<span class="circle pull-right"></span>
				</div> -->
			</div>
		</div>
		<div class="container-full bg-fff toal-list ">
			<div class="col-xs-12 padd_0 font17">
				<div class="pull-right">
					<span class="color-669900 t-all">支付:￥<?php echo ($sumprice); ?></span>
					
					<!-- <a href="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fdopay%3Forderid%3D&response_type=code&scope=snsapi_base&state=weixinpay#wechat_redirect"> -->
					<button type="button" class="set"  id="jiesuan">
						付款
					</button>
					<!-- </a> -->
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript">
	
	
	
		$('.circle').click(function(){
			$('.circle').removeClass('active');
			$(this).addClass('active');
		})
		$(function(){	
			  $("#jiesuan").click(function(){  
				  
				   
			      	   
			         var orderid=$("#orderid").val();    
                     			 
			         window.location.href ='/index.php/home/user/getweixinopenid?orderid='+orderid;
			  });         
		  }); 
		/*  $(function(){	
			  $("#jiesuan").click(function(){  
				  
				   
			      	   
			         var orderid=$("#orderid").val();    
                     			 
			       
			     
			        var url = "<?php echo U('user/dopay');?>";
			             $.post(url, {orderid:orderid}, function(res)
            		 {
      	                var wxresult = res.data;
      	                     WeixinJSBridge.invoke(
      	                             'getBrandWCPayRequest', {
      	                                 "appId":wxresult.appId,              //公众号名称，由商户传入
      	                                 "timeStamp":wxresult.timeStamp,      //时间戳，自1970年以来的秒数
      	                                 "nonceStr":wxresult.nonceStr,        //随机串
      	                                 "package":wxresult.package,
      	                                 "signType":wxresult.signType,                   //微信签名方式：默认MD5
      	                                 "paySign":wxresult.paySign          //微信签名
      	                             },
      	                             function(res){
      	                                 // 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回    ok，但并不保证它绝对可靠。
      	                                 if(res.err_msg == "get_brand_wcpay_request:ok" ) {
										   		 layer.open({
										  		    content: '支付成功'
										  		    ,skin: 'msg'
										  		    ,time: 3 //3秒后自动关闭
										  		  });
      	                                   
      	                                 }
      	                                 //支付过程中用户取消
      	                                 if(res.err_msg == "get_brand_wcpay_request:cancel" ) {
      	                                      layer.open({
									  		    content: '支付失败'
										  		    ,skin: 'msg'
										  		    ,time: 3 //3秒后自动关闭
										  		  });
      	                                 }
      	                                 if(res.err_msg == "get_brand_wcpay_request:fail" ) {
      	                                      layer.open({
									  		    content: '支付失败'
										  		    ,skin: 'msg'
										  		    ,time: 3 //3秒后自动关闭
										  		  });
      	                                 }
      	                             }
      	                     );
			           }, 'json')
			  });         
		  });  */
	</script>
</html>