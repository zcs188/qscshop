<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>合作伙伴注册1</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/login1.css"/>
	</head>
	<body>
		<img class="bg" src="/Public/img/DL/login.png"/>
		<div class="cont">
			<div class="top">
				<p class="color-669900 font12">合作伙伴注册</p>
			</div>
			<div class="user">
				<img src="/Public/img/DL/pasword.png"/>
				<input type="hidden" id="phone" value="<?php echo ($phone); ?>"/>
				<input type="hidden" id="type" value="<?php echo ($type); ?>"/>
				<input type="hidden" id="code" value="<?php echo ($code); ?>"/>
				<input type="password" id="password" placeholder="输入密码"/>
			</div>
			<div class="user mar-t15">
				<img src="/Public/img/DL/c.png" style="width: 16px;height: 16px;" />
				<input type="password" id="confirmpwd" placeholder="确认密码"/>
			</div>
			<div class="sure mar-t20">
				<button type="button" id="otherreg">完  成</button>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript">
		$('.circle').click(function() {
			$(this).toggleClass('active');
		})
	</script>
	<script type="text/javascript">
		$('.circle').click(function() {
			$(this).toggleClass('active');
		})
		$(function(){	
			  $("#otherreg").click(function(){  
				  
				     var phone=$("#phone").val(); 
				     var type=$("#type").val();
				     var code=$("#code").val();
			         var password=$("#password").val();                     
			         var confirmpwd=$("#confirmpwd").val();                             
			         if(password==""){
			             layer.open({
			        		    content: '密码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#password").focus();
			             return false;
			         }
			         else if(confirmpwd=="")
			        	 {
			        	 layer.open({
			        		    content: '确认密码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#confirmpwd").focus();
			             return false;
			        	 }
			         else if(confirmpwd!=password)
		        	 {
		        	 layer.open({
		        		    content: '两次密码输入不一致！请重新输入！'
		        		    ,skin: 'msg'
		        		    ,time: 3 //3秒后自动关闭
		        		  });
		             $("#confirmpwd").focus();
		             return false;
		        	 }
			         else{
			             var url = "<?php echo U('user/dootherreg');?>";
			             $.post(url, {password:password,phone,phone,type:type,code:code},function(msg){
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