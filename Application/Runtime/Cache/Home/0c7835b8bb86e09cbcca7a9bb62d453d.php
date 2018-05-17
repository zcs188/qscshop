<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>个人信息</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/person.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/js/jquery.js" ></script>
        <script type="text/javascript" src="/Public/js/plupload.full.min.js" ></script>
        <script type="text/javascript" src="/Public/js/qiniu.js" ></script>
	</head>
	<body>
		<!--顶部标题-->
		<div class="nav text-center">
			
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">个人信息</span>
			<a href="#" id="saveinfo" style="color:#000000"><button class="mybtn pull-right font15 compile" type="button">
				保存
			</button></a>
		</div>
		<!--顶部标题-->
       
		<div class="container-fluid cont">
			<div class="row bg-fff">
					   
				<div class="col-xs-12 bor-b-f2 pad-up10" id="imageaqa">
					<a href="#" >
           
						<img class="tx img-rounded" style="width:60px;height:60px" src="<?php echo ((isset($informa["user_image"]) && ($informa["user_image"] !== ""))?($informa["user_image"]):'/Public/img/person/tx.png'); ?>" id="imagess"/>
						<font style="color:green" size="1">注意上传头像比例为1:1(60*60)</font>
						<img class="pull-right r mar-t20" src="/Public/img/huoyun/r.png"/>
					</a>
				</div>
			 
				<div class="col-xs-12 bor-b-f2 pad-up10">
					<a href="#">
						<span class="font15 color-1a1a1a">昵称</span>
						<span class="pull-right">
							<input type="text" id="username" class="font12 color-666 inp text-right" value="<?php echo ($informa["infoName"]); ?>">
							<img class="r" src="/Public/img/huoyun/r.png"/>
						</span>
					</a>
				</div>
				<div class="col-xs-12 bor-b-f2 pad-up10">
					
						<span class="font15 color-1a1a1a">性别</span>
						<span class="pull-right">
						<?php if($informa["sex"] == '2'): ?><input type="radio" id="sex" name="sex" class="font12 color-666 inp text-right" value="男">男
						<input type="radio" id="sex" name="sex"class="font12 color-666 inp text-right" value="女" checked>女
						<?php elseif($informa["sex"] == '1'): ?>
			<input type="radio" id="sex" name="sex" class="font12 color-666 inp text-right" value="男" checked>男
			<input type="radio" id="sex" name="sex" class="font12 color-666 inp text-right" value="女">女
			<?php else: ?> 
			
			<input type="radio" id="sex" name="sex" class="font12 color-666 inp text-right" value="男">男
						<input type="radio" name="sex" id="sex" class="font12 color-666 inp text-right" value="女">女<?php endif; ?>
							<img class="r" src="/Public/img/huoyun/r.png"/>
						</span>
				
				</div>
				<input type="hidden" id="userid" value="<?php echo ($userid); ?>">
				<div class="col-xs-12 bor-b-f2 pad-up10">
					<a href="#">
						<span class="font15 color-1a1a1a">年龄</span>
						<span class="pull-right">
							<input type="text" id="age" class="font12 color-666 inp text-right" value="<?php echo ($informa["age"]); ?>">
							<img class="r" src="/Public/img/huoyun/r.png"/>
						</span>
					</a>
				</div>
				<?php if($info["whatOpenid"] != ''): if($info["acc_phone"] != ''): ?><a href="<?php echo U('user/bindphone1');?>">
					<div class="col-xs-12 bor-b-f2 pad-up10">
						<span class="font15 color-1a1a1a">已绑定(点击更换绑定)</span>
						<span class="pull-right">
							<img class="r" src="/Public/img/huoyun/r.png"/>
						</span>
				</div>
				</a>
				<?php else: ?> 
				 <a href="<?php echo U('user/bindphone');?>">
					<div class="col-xs-12 bor-b-f2 pad-up10">
						<span class="font15 color-1a1a1a">绑定手机</span>
						<span class="pull-right">
							<img class="r" src="/Public/img/huoyun/r.png"/>
						</span>
				</div>
				</a><?php endif; ?>
					
				
				<?php else: endif; ?>
				<div class="col-xs-12 bor-b-f2 pad-up10">
					<a href="#">
						<span class="font15 color-1a1a1a">邮箱</span>
						<span class="pull-right">
							<input type="email" id="email" class="font12 color-666 inp text-right" value="<?php echo ($informa["email"]); ?>">
							<img class="r" src="/Public/img/huoyun/r.png"/>
						</span>
					</a>
				</div>
			</div>
		</div>
		

		<script type="text/javascript">
		
		
			$(function(){	
				  $("#saveinfo").click(function(){  
					  
				
					  var username=$('#username').val();
					  var sex=$('#sex').val();
					  if(sex=='男')
						  {
					          var sex =1;	  
						  }
						  else
						  {
							 var sex=2;
						  }	  
					  var age=$('#age').val();
					  var email=$('#email').val();
	                  var image=$("#imagess").attr("src");
	                   /* if(image=="/Public/img/person/tx.png")
			        	 {
				        	 layer.open({
				        		    content: '请上传头像'
				        		    ,skin: 'msg'
				        		    ,time: 3 //3秒后自动关闭
				        		  });
				             $("#imagess").focus();
				             return false;
			        	 } */
				              var url = "<?php echo U('user/updateinfo');?>";
				             $.post(url, {username:username,sex:sex,age:age,email:email,image:image}, function(msg){
				             if(msg.state=='200'){
				            	 layer.open({
					        		    content: msg.msg
					        		    ,skin: 'msg'
					        		    ,time: 3 //3秒后自动关闭
					        		  }); 
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
				            
				         

				    
				       }) 
				
			  });
	</script>
	<script type="text/javascript">

	//var tokenqiniu = '${qiniutoken!''}';
	 var url="<?php echo U('user/getqintoken');?>";
	
	
//引入Plupload 、qiniu.js后
   var uploader = Qiniu.uploader({
       runtimes: 'html5,flash,html4',    //上传模式,依次退化
       browse_button: 'imagess',       //上传选择的点选按钮，**必需**
       uptoken_url: url,            //Ajax请求upToken的Url，**强烈建议设置**（服务端提供）
       //uptoken : tokenQiniu1, //若未指定uptoken_url,则必须指定 uptoken ,uptoken由其他程序生成
       unique_names: true, // 默认 false，key为文件名。若开启该选项，SDK为自动生成上传成功后的key（文件名）。
       save_key: true,   // 默认 false。若在服务端生成uptoken的上传策略中指定了 `sava_key`，则开启，SDK会忽略对key的处理
       domain: 'http://qiniuti.7secai.cn/',   //bucket 域名，下载资源时用到，**必需**
       get_new_uptoken: false,  //设置上传文件的时候是否每次都重新获取新的token
       container: 'imageaqa',           //上传区域DOM ID，默认是browser_button的父元素，
       max_file_size: '100mb',           //最大文件体积限制
      // flash_swf_url: 'js/plupload/Moxie.swf',  //引入flash,相对路径
       max_retries: 1,                   //上传失败最大重试次数
       dragdrop: false,                   //开启可拖曳上传
       drop_element: 'imageaqa',        //拖曳上传区域元素的ID，拖曳文件或文件夹后可触发上传
       chunk_size: '4mb',                //分块上传时，每片的体积
       auto_start: true,                 //选择文件后自动上传，若关闭需要自己绑定事件触发上传
      /*  filters : {
           max_file_size : '200kb',
           mime_types: [
               {title : "Image files", extensions : "jpg,png"}
           ]
       }, */
       init: {
           'FilesAdded': function(up, files) {
               plupload.each(files, function(file) {
                   // 文件添加进队列后,处理相关的事情
                   
               });
           },
           'BeforeUpload': function(up, file) {
                  // 每个文件上传前,处理相关的事情
           },
           'UploadProgress': function(up, file) {
                  // 每个文件上传时,处理相关的事情
           },
           'FileUploaded': function(up, file, info) {
                  // 每个文件上传成功后,处理相关的事情
                  // 其中 info 是文件上传成功后，服务端返回的json，形式如
                  // {
                  //    "hash": "Fh8xVqod2MQ1mocfI4S4KpRL6D98",
                  //    "key": "gogopher.jpg"
                  //  }
                  // 参考http://developer.qiniu.com/docs/v6/api/overview/up/response/simple-response.html

                  var domain = up.getOption('domain');
                  var res =  JSON.parse(info);
                  var sourceLink = domain + res.key; //获取上传成功后的文件的Url
                  
                  $('#userImage').val(sourceLink);
                  $('#imagess').attr('src',sourceLink);
                  
        	  		
           },
           'Error': function(up, err, errTip) {
                  //上传出错时,处理相关的事情
                 /*  alert("上传失败"); */
           },
           'UploadComplete': function() {
                  //队列文件处理完毕后,处理相关的事情
           },
           'Key': function(up, file) {
               // 若想在前端对每个文件的key进行个性化处理，可以配置该函数
               // 该配置必须要在 unique_names: false , save_key: false 时才生效
               var key = "";
               // do something with key here
               return key
           }
       }
   });
   
  
   

   
   $(function(){
	   uploader.start();
   });
   

</script>
	</body>
</html>