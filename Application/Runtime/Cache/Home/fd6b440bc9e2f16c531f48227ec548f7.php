<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>绑定手机号</title>
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
				<p class="color-669900 font12">绑定手机号</p>
			</div>
			<div class="user">
				<img src="/Public/img/DL/12.png"/>
				<input type="text" id="phone" placeholder="手机号"/>
			</div>
			<div class="user mar-t15">
				<img src="/Public/img/DL/3.png"/>
				
	             <input class="yz" type="text" id="code"   placeholder="验证码"/>
				<button class="font12 color-669900 mybtn" type="button" id="sendcode">获取验证码</button>
			</div>
		<div>
				<p class="font12"> 
				
				</p>
			</div>
			<br/>
			提示:<p  style="color:red" align="center">如果已经绑定了手机,<br>请联系客服变更数据
				</p>
			<br/>
			<div class="sure">
				<button type="button" id="dobind">完成绑定</button>
			</div>
		</div>
	</body>
	
	<script type="text/javascript">
		$(function(){
		yz();
		$('.Ybtn').click(function(){
			yz();
		})
		function yz (){
			var count = 60;
				var countdown = setInterval(CountDown, 1000);
				function CountDown() {
					$(".Ybtn").attr("disabled", true);
					$(".Ybtn").html("" + count + "s重新发送");
					if(count == 0) {
						$(".Ybtn").html("重新获取").removeAttr("disabled");
						clearInterval(countdown);
					}
					count--;
				}
		}
	})
	$(function(){	
		
		/*  获取验证码*/
		$("#sendcode").click(function(){  
				  
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
			               layer.open({
			        		    content: msg.msg
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  }); 
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
		$("#code").focusout(function(){  
				  
			         var phone=$("#phone").val();                             
			         var code=$("#code").val();    
                	
                 				 
			         if(phone==""){
			             layer.open({
			        		    content: '手机号码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#phone").focus();
			             return false;
			         }
					 else
			         {
			             var url = "<?php echo U('user/checkcode');?>";
			             $.post(url, {phone:phone,code:code}, function(msg){
			             if(msg.state=='200'){
			                   layer.open({
			        		    content: msg.msg
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  }); 
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
         $("#dobind").click(function(){  
				  
			         var phone=$("#phone").val();                             
			         var code=$("#code").val();    
                
                 				 
			         if(phone==""){
			             layer.open({
			        		    content: '手机号码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#phone").focus();
			             return false;
			         }
					
					else if(code==""){
			             layer.open({
			        		    content: '验证码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#code").focus();
			             return false;
			         }
					 else
			         {
			             var url = "<?php echo U('user/dobind');?>";
			             $.post(url, {phone:phone,code:code}, function(msg){
			             if(msg.state=='200'){
						     
			                window.location.href = msg.url;
			             } 
						 else if(msg.info == '400')
			             {
			            	 window.location.href ='/index.php/home/user/login';
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