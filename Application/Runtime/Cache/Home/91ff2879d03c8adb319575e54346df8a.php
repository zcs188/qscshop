<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>地址管理</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/address.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
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
			<span class="font16">地址管理</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row address">
				<div class="col-xs-12">
				<?php if(is_array($userinfo)): foreach($userinfo as $key=>$v): ?><div class="col-xs-12 pad10 bg-fff color-4c4c4c">
						<span class="font15"><?php echo ($v["userName"]); ?></span>
						<span class="pull-right font15"><?php echo ($v["userPhone"]); ?></span>
						<p class="font12 pad-up10">
							<?php echo ($v["province"]); echo ($v["city"]); echo ($v["area"]); echo ($v["adresse"]); ?>
						</p>
						<div class="infor">
							<div class="sel pull-left">
							<?php if($v['isNotTacite'] == 2): ?><span class="circle active"></span>
								<span class="color-333 font12">设为默认</span>
								<?php else: ?>
								
								<span class="circle"></span>
								<span class="color-333 font12" onclick="setdefaultone('<?php echo ($v["id"]); ?>')">设为默认</span><?php endif; ?>
							</div>
							<div class="editor pull-right">
								<a href="<?php echo U('user/addressedit',array('id'=>$v['id']));?>"><img src="/Public/img/address/bianji.png"/>
								<button class="color-333 font12 mar-r10">
									编辑
								</button></a>
								<img src="/Public/img/address/del.png"/>
									<a href="javascript:void(0)" onclick="deleteone('<?php echo ($v["id"]); ?>')"><button class="font12 color-333" >
									删除
								</button></a>
							</div>
						</div>
					</div><?php endforeach; endif; ?>
				</div>
			</div>
		</div>
		<!--底部-->
		<div class="container-fluid b">
			<div class="row">
				<div class="col-xs-12 padd_0">
					<a href="<?php echo U('user/addressadd');?>"><button type="button" class="save">添加新地址</button></a>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript" src="/Public/Bootstrap/js/bootstrap.js" ></script>
	<script type="text/javascript">

	$(function(){	
		$('.circle').click(function(){
			$('.circle').removeClass('active');
			$(this).addClass('active');
			
		});
	});
	function  setdefaultone(id)	   
    {
		
         var url = "<?php echo U('user/setdefault');?>";
         $.post(url, {id:id}, function(msg){
        	 if(msg.info == '201') {
	             // alert(msg.url);
	              window.location.href = msg.url;
	             } 
        	 else  if(msg.info == '200') 
         {
        	  window.location.reload();
         } 
         else if(msg.info == '400')
         {
        	 window.location.href ='/index.php/home/user/login';
         }
         else 
         {
        	 layer.open({
     		    content: msg.info
     		    ,skin: 'msg'
     		    ,time: 3 //3秒后自动关闭
     		  });
         }
       }, 'json').error(function(){
    	   layer.open({
   		    content: '网络连接错误，请稍后再试'
   		    ,skin: 'msg'
   		    ,time: 3 //3秒后自动关闭
   		  });
       
      }); 
       
   }
	 function  deleteone(id)	   
    {
        var url = "<?php echo U('user/deleteaddress');?>";
         $.post(url, {id:id}, function(msg){
         if(msg.info == '200') 
         {
        	  window.location.reload();
         }
         else if(msg.info == '400')
         {
        	 window.location.href ='/index.php/home/user/login';
         }
         else 
         {
        	 layer.open({
     		    content: msg.info
     		    ,skin: 'msg'
     		    ,time: 3 //3秒后自动关闭
     		  });
         }
       }, 'json').error(function(){
    	   layer.open({
   		    content: '网络连接错误，请稍后再试'
   		    ,skin: 'msg'
   		    ,time: 3 //3秒后自动关闭
   		  });
       
      });
       
   }

	</script>
</html>