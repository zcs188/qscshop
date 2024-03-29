<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>货运评价</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/tuihuo.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
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
			<span class="font16">货运评价</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row">
				<div class="col-xs-12 pad-up15 bg-fff">
					<p class="font15  mar0">上传图片： </p>
				</div>
				<div class="col-xs-12" id="imageaqa">
					<button type="button" class="mybtn">
						<img class="tj" src="/Public/img/tianjia.png" id="imagess" />
					</button>
				</div>
                <div class="col-xs-12" id="imageaqa1">
					<button type="button" class="mybtn">
						<img class="tj" src="/Public/img/tianjia.png" id="imagess1" />
					</button>
				</div>
		        <div class="col-xs-12" id="imageaqa2">
					<button type="button" class="mybtn">
						<img class="tj" src="/Public/img/tianjia.png" id="imagess2" />
					</button>
				</div>
				<div class="col-xs-12">
				    <input type="hidden" value="<?php echo ($orderid); ?>" id="orderid">
				    <input type="hidden" value="<?php echo ($specid); ?>" id="specid">
					<textarea class="font12 color-666" placeholder="评价内容（不少于10个字）" id="remark"></textarea>
				</div>
			</div>
		</div>
		<div class="b">
			<button type="button" class="color-fff font17" id="tijiao">提交评价</button>
		</div>
	</body>
	
	<script type="text/javascript">
		$(function(){	
			  $("#tijiao").click(function(){  
				  
				   
			         var remark=$("#remark").val(); 
			         var orderid=$("#orderid").val();
			         var specid=$("#specid").val();
			         var image=$("#imagess").attr("src");  
			         var image1=$("#imagess1").attr("src");  
			         var image2=$("#imagess2").attr("src");  
			         if(remark==""){
			             layer.open({
			        		    content: '评价内容不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#remark").focus();
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
			         else if(image1=="/Public/img/tianjia.png")
		        	 {
			        	 layer.open({
			        		    content: '请上传图片,再提交申请'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#imagess1").focus();
			             return false;
		        	 }
			         else if(image2=="/Public/img/tianjia.png")
		        	 {
			        	 layer.open({
			        		    content: '请上传图片,再提交申请'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#imagess2").focus();
			             return false;
		        	 }
			         
			         
			         else{
			             var url = "<?php echo U('good/destroy');?>";
			             $.post(url, {remark:remark,image:image,image1:image1,image2:image2,orderid:orderid,specid:specid}, function(msg){
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
<script type="text/javascript">

	//var tokenqiniu = '${qiniutoken!''}';
	 var url="<?php echo U('user/getqintoken');?>";
	 
	
//引入Plupload 、qiniu.js后
   var uploader = Qiniu.uploader({
	   
       runtimes: 'html5,flash,html4',    //上传模式,依次退化
       browse_button: 'imagess1',       //上传选择的点选按钮，**必需**
       uptoken_url: url,            //Ajax请求upToken的Url，**强烈建议设置**（服务端提供）
       //uptoken : tokenQiniu1, //若未指定uptoken_url,则必须指定 uptoken ,uptoken由其他程序生成
       unique_names: true, // 默认 false，key为文件名。若开启该选项，SDK为自动生成上传成功后的key（文件名）。
       save_key: true,   // 默认 false。若在服务端生成uptoken的上传策略中指定了 `sava_key`，则开启，SDK会忽略对key的处理
       domain: 'http://qiniuti.7secai.cn/',   //bucket 域名，下载资源时用到，**必需**
       get_new_uptoken: false,  //设置上传文件的时候是否每次都重新获取新的token
       container: 'imageaqa1',           //上传区域DOM ID，默认是browser_button的父元素，
       max_file_size: '100mb',           //最大文件体积限制
      // flash_swf_url: 'js/plupload/Moxie.swf',  //引入flash,相对路径
       max_retries: 1,                   //上传失败最大重试次数
       dragdrop: false,                   //开启可拖曳上传
       drop_element: 'imageaqa1',        //拖曳上传区域元素的ID，拖曳文件或文件夹后可触发上传
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
                  $('#imagess1').attr('src',sourceLink);
                  
        	  		
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
<script type="text/javascript">

	//var tokenqiniu = '${qiniutoken!''}';
	 var url="<?php echo U('user/getqintoken');?>";
	 
	
//引入Plupload 、qiniu.js后
   var uploader = Qiniu.uploader({
	   
       runtimes: 'html5,flash,html4',    //上传模式,依次退化
       browse_button: 'imagess2',       //上传选择的点选按钮，**必需**
       uptoken_url: url,            //Ajax请求upToken的Url，**强烈建议设置**（服务端提供）
       //uptoken : tokenQiniu1, //若未指定uptoken_url,则必须指定 uptoken ,uptoken由其他程序生成
       unique_names: true, // 默认 false，key为文件名。若开启该选项，SDK为自动生成上传成功后的key（文件名）。
       save_key: true,   // 默认 false。若在服务端生成uptoken的上传策略中指定了 `sava_key`，则开启，SDK会忽略对key的处理
       domain: 'http://qiniuti.7secai.cn/',   //bucket 域名，下载资源时用到，**必需**
       get_new_uptoken: false,  //设置上传文件的时候是否每次都重新获取新的token
       container: 'imageaqa2',           //上传区域DOM ID，默认是browser_button的父元素，
       max_file_size: '100mb',           //最大文件体积限制
      // flash_swf_url: 'js/plupload/Moxie.swf',  //引入flash,相对路径
       max_retries: 1,                   //上传失败最大重试次数
       dragdrop: false,                   //开启可拖曳上传
       drop_element: 'imageaqa2',        //拖曳上传区域元素的ID，拖曳文件或文件夹后可触发上传
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
                  $('#imagess2').attr('src',sourceLink);
                  
        	  		
           },
           'Error': function(up, err, errTip) {
                  //上传出错时,处理相关的事情
               /*    alert("上传失败"); */
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