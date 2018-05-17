<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>安装审核</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/check.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
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
			<span class="font16">安装审核</span>
			<?php if($info['auditType'] == 3): else: ?>
			<button class="mybtn pull-right font15 compile" type="button" id="saveapply">
				保存
			</button><?php endif; ?>
		
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12">
					<p class="pad-up15 mar-b0">
						<img class="check" src="/Public/img/dsh.png"/>
				 
						<?php if($info['auditType'] == 1): ?><span class="font15">待完善</span>
						<?php elseif($info['auditType'] == 2): ?><span class="font15">待审核</span>
						<?php elseif($info['auditType'] == 3): ?><span class="font15">审核成功</span>
						<?php elseif($info['auditType'] == 4): ?><span class="font15">审核失败</span>
						<?php else: endif; ?>
						
					</p>
				</div>
			</div>
			<div class="row bg-fff">
				<div class="col-xs-12 pad-up10 font15 bor-b-f2">
					<label>真实姓名</label><input class="inp" type="text" id="username" placeholder="请输入真实姓名" value="<?php echo ($info["infoName"]); ?>"/>
				</div>
				<div class="col-xs-12 pad-up10 font15 bor-b-f2">
					<label>身份证号</label><input class="inp" type="text" id="numberid" placeholder="请输入身份证号" value="<?php echo ($info["identityNumber"]); ?>"/>
				</div>
				<div class="col-xs-12 pad-up10 font15 bor-b-f2">
					<label>电话号码</label><input class="inp" type="text" id="phone" placeholder="请输入电话号码" value="<?php echo ($info["phone"]); ?>"/>
				</div>
				<div class="col-xs-12 pad-up10 font15">
					<label>从事行业</label><input class="inp" type="text" id="business" placeholder="请输入你的行业" value="<?php echo ($info["professional"]); ?>"/>
				</div>
			</div>
			<div class="row bg-fff mar-t15" >
				<div class="col-xs-12 pad-up10 font15" >
					上传身份证正面照
				</div>
				<img  src=""/>
			</div>
			<div class="row mar-t15">
				<div class="col-xs-12" id="imageaqa">
					<button type="button" class="mybtn"> 
					<?php if($info['idCardImage'] == '' ): ?><img class="tj" src="/Public/img/tianjia.png" alt="" id="imagess"/>
					<font size="1" style="margin-left:20px;">图例&nbsp;&nbsp;&nbsp;&nbsp;<img  src="/Public/img/tosan.jpg"  class="tj"/></font>
					<?php else: ?>
					<img class="tj" src="<?php echo ($info["idCardImage"]); ?>" alt="" id="imagess"/><?php endif; ?>
					</button>
				</div>
				
			</div>
			<?php if($info['auditType'] == 4): ?><div class="col-xs-12">
					<font style="color:red">失败原因:</font>
					<p><textarea class="font12 color-666" rows="2" cols="50"><?php echo ($info["failedReason"]); ?></textarea></p>
				</div>
				<?php else: endif; ?>
		</div>
	</body>
	<script type="text/javascript">
		$(function(){	
			  $("#saveapply").click(function(){  
				  
				  var username=$("#username").val();
				  var business=$("#business").val();
			         var phone=$("#phone").val();                             
			         var numberid=$("#numberid").val(); 
			         var image=$("#imagess").attr("src");
			         var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
			         if(username==""){
			             layer.open({
			        		    content: '真实姓名不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#username").focus();
			             return false;
			         }
			         else if(numberid=="")
			        	 {
			        	 layer.open({
			        		    content: '身份证不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#numberid").focus();
			             return false;
			        	 }
			         else if(reg.test(numberid)===false)
                   	 {
                         layer.open({
			        		    content: '身份证号输入格式不对请重新输入！'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#numberid").focus();
			             return false;
                   	 }
			         else if(phone=="")
		        	 {
		        	 layer.open({
		        		    content: '手机号码不能为空'
		        		    ,skin: 'msg'
		        		    ,time: 3 //3秒后自动关闭
		        		  });
		             $("#phone").focus();
		             return false;
		        	 }
			         else if(!(/^1[34578]\d{9}$/.test(phone)))
                   	 {
                         layer.open({
			        		    content: '手机号码输入格式不对请重新输入！'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#phone").focus();
			             return false;
                   	 }
			         else if(business=="")
		        	 {
		        	 layer.open({
		        		    content: '行业不能为空'
		        		    ,skin: 'msg'
		        		    ,time: 3 //3秒后自动关闭
		        		  });
		             $("#business").focus();
		             return false;
		        	 }
			         else if(image=="/Public/img/tianjia.png")
		        	 {
			        	 layer.open({
			        		    content: '请上传图片,再提交申请'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#imagess").focus();
			             return false;
		        	 }
			         else
			         {
			             var url = "<?php echo U('user/doinstallcheck');?>";
			             $.post(url, {username:username,numberid:numberid,phone:phone,business:business,image:image}, function(msg){
			             if(msg.state=='200'){
			              window.location.href = msg.url;
			             } 
			             else if(msg.state == '400')
			             {
			            	 window.location.href ='/index.php/home/user/login';
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
</html>