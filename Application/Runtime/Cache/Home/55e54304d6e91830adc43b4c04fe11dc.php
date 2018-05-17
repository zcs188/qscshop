<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>找回密码</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/pasword.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
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
			<span class="font16">找回密码</span>
		</div>
		<!--顶部标题-->
		<img class="bg" src="/Public/img/DL/login.png"/>
		<div class="cont">
			<div class="user">
				<img src="/Public/img/DL/3.png"/>
				<input type="hidden" id="phone" value="<?php echo ($phone); ?>"/>
				<input type="hidden" id="code" value="<?php echo ($code); ?>"/>
				<input class="yz" type="text" id="checkcode"  placeholder="请输入验证码"/>
				<button class="font12 color-669900 mybtn pull-right Ybtn" type="button" id="findcode">60s后重新发送验证码</button>
			</div>
			<div class="user mar-t15">
				<img src="/Public/img/DL/pasword.png"/>
				<input type="password" id="newpwd" placeholder="请输入新密码"/>
			</div>
			<div class="sure mar-t15">
				<button type="button"  id="findpwde">完 成</button>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
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
					$(".Ybtn").html("" + count + "s后重新发送验证码");
					if(count == 0) {
						$(".Ybtn").html("重新获取").removeAttr("disabled");
						clearInterval(countdown);
					}
					count--;
				}
		}
	})
	
	
	/*  获取验证码*/
	$("#findcode").click(function(){  
			  
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
		             var url = "<?php echo U('user/findcode');?>";
		             $.post(url, {phone:phone}, function(msg){
		             if(msg.state=='200'){
		              window.location.href = msg.url;
		             } 
		             else if(msg.state == '400')
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
	 /*  校验验证码*/
		$("#checkcode").focusout(function(){  
				  
			         var phone=$("#phone").val();                             
			         var code=$("#checkcode").val();   
           				
			     /*     if(phone==""){
			             layer.open({
			        		    content: '手机号码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#phone").focus();
			             return false;
			         }else
			         { */
			             var url = "<?php echo U('user/checkcode2');?>";
			             $.post(url, {phone:phone,code:code}, function(msg){
			             if(msg.state=='200'){
			            	 layer.open({
				        		    content: '验证码输入正确'
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

			         /* } */
			       })
	
	$(function(){	
			  $("#findpwde").click(function(){  
				  
				     var phone=$("#phone").val(); 
			         var newpwd=$("#newpwd").val(); 
           					 
			         if(newpwd==""){
			             layer.open({
			        		    content: '新密码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#newpwd").focus();
			             return false;
			         }
			        
			        
			         else{
			             var url = "<?php echo U('user/findpwdset');?>";
			             $.post(url, {newpwd:newpwd,phone,phone},function(msg){
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