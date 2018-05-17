<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	    <meta http-equiv="Access-Control-Allow-Origin" content="*">
		<title>登陆</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/login.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
		
	</head>
	<body>
		<img class="bg" src="/Public/img/DL/login.png"/>
		<div class="cont">
			<div class="top">
				<p class="color-669900 font12">快速登陆</p>
			</div>
			<div class="user">
				<img src="/Public/img/DL/user.png"/>
				<input type="text" id="phone" placeholder="请输入手机号/ 账号"/>
			</div>
			<div class="user mar-t15">
				<img src="/Public/img/DL/pasword.png"/>
				<input type="password" id="password" placeholder="密码"/>
			</div>
			<a href="#"><div class="sure">
				<button id="surelogin">确认登陆</button>
			</div></a>
			<div class="mar-t10">
				<a class="font12 color-333" href="<?php echo U('user/register');?>">快速注册</a>
				<a class="font12 color-333 pull-right" href="<?php echo U('user/findpwd');?>">忘记密码?</a>
			</div>
			<div>
				<a href="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx4113125cf12116f8&redirect_uri=http%3A%2F%2Fwww.7secai.cn%2Findex.php%2Fhome%2Fuser%2Fweixin&response_type=code&scope=snsapi_userinfo&state=userLogin_login&from=singlemessage&isappinstalled=0#wechat_redirect">
					<img class="center-block wx" src="/Public/img/DL/weixin.png "/>
					<p class="font12 color-669900 text-center mar-t10" id="weixin">微信登录</p>
				</a>
			</div>
		</div>
		<script type="text/javascript">
		$(function(){	
			  $("#surelogin").click(function(){  
				  
				   
			         var account=$("#phone").val();                             
			         var password=$("#password").val();                     
			         if(account==""||password==""){
			             layer.open({
			        		    content: '登录名与密码不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#phone").focus();
			             return false;
			         }
			       /*   else if(!(/^1[34578]\d{9}$/.test(account)))
                   	 {
                         layer.open({
			        		    content: '手机号码输入格式不对请重新输入！'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#phone").focus();
			             return false;
                   	 } */
			         else{
			             var url = "<?php echo U('user/dologin');?>";
			             $.post(url, {account:account,password:password}, function(msg){
			             if(msg.state=='200'){
			              window.location.href = msg.url;
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
			       })
			
		  });
		</script>
	</body>
</html>