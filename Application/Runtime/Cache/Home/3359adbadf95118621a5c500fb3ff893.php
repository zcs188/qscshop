<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>普通会员注册</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/login1.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
	</head>
	<body>
		<img class="bg" src="/Public/img/DL/login.png"/>
		<div class="cont">
			<div class="top">
				<p class="color-669900 font12">普通会员注册</p>
			</div>
			<div class="user">
				<img src="/Public/img/DL/12.png"/>
				<input type="text" id="phone" placeholder="手机号"/>
			</div>
			<div class="user mar-t15">
				<img src="/Public/img/DL/3.png"/>
				<input class="yz" type="text" id="code" placeholder="请输入验证码"/>
				<button class="font12 color-669900 mybtn" type="button" id="getcode">获取验证码</button>
			</div>
			<div>
				<p class="font12"> <input type=checkbox name="gouxuan"  id="circle">我已阅读七色彩<a class="color-669900" href="<?php echo U('user/serveinternet');?>">《服务使用协议》</a></p>
			</div>
			<div class="sure">
				<button type="button" id="checkcode">下一步</button>
			</div>
		</div>
	</body>
	
	<script type="text/javascript">
	$(function(){	
		$('#circle').click(function() {
			$(this).toggleClass('active');
		})
		/*  获取验证码*/
		$("#getcode").click(function(){  
				  
			         var phone=$("#phone").val();                                               
			         if(phone==""){
			             layer.open({
			        		    content: '手机号码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#phone").focus();
			             return false;
			         }else
			         {
			             var url = "<?php echo U('user/getcode');?>";
			             $.post(url, {phone:phone}, function(msg){
			             if(msg.state=='200'){
			              //window.location.href = msg.url;
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
			       })
	    /*  校验验证码*/
		$("#checkcode").click(function(){  
				  
			         var phone=$("#phone").val();                             
			         var code=$("#code").val();    
                     var checked = $("input[type='checkbox']").is(':checked'); 	
                 				 
			         if(phone==""){
			             layer.open({
			        		    content: '手机号码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#phone").focus();
			             return false;
			         }
					else if (checked==false) 
				  {
                      layer.open({
			        		    content: '请勾选七色彩服务协议后再操作'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#circle").focus();
			             return false;
				  }
					 else
			         {
			             var url = "<?php echo U('user/checkcode');?>";
			             $.post(url, {phone:phone,code:code}, function(msg){
			             if(msg.state=='200'){
			              window.location.href = msg.url;
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
			       })
	});
	</script>
</html>