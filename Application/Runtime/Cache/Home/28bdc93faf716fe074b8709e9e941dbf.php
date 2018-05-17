<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>商品列表</title>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/order_sel.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
				<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
		<script type="text/javascript" src="/Public/js/jquery-1.7.2.min.js" ></script>
		<script type="text/javascript" src="/Public/js/jquery.scrollExtend.js" ></script>
	</head>
	   <style>
        #no{
            display: none;
            text-align: center;
        }
		  #no1{
            display: none;
            text-align: center;
        }
    </style>
	<body>
		<div class="nav">
			<!--<button type="button" class="mybtn"></button>-->
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a><input type="text" class="search"  id="sea" style="width:175px;" />
			<button class="mybtn pull-right" type="button">
		
				<img class="mycar" src="/Public/img/sousuo.png" id="submit"/>
			</button>
		</div>
		<!--内容区-->
		<div class="container-fluid tit">
			<div class="row classify text-center font15 color-1a1a1a">
				<div class="col-xs-4 pad-up15 active">
					综合
				</div>
				<div class="col-xs-4 pad-up15">
					销量
				</div>
				<div class="col-xs-4 pad-up15">
					新品
				</div>
			</div>
		</div>
		<div class="container-fluid cont">
			<div class="row cont-list active" >


			
			<?php if($list != ''): if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "没有商品噢！" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 bg-fff list"  >
					<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000"><div class="pad-lr10 border-b pad-b10">
						<img class="goods img-responsive pull-left" src="<?php echo ($v["meubleImage"]); ?>"/>
						<p class="heightControl-2 pad-t5" style="min-height:25px">
							<a class="font15 color-1a1a1a" href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>">
								<?php echo ($v["meubleName"]); ?>&nbsp;<?php echo ($v["productid"]); ?>
							</a>
						</p>
						<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000"><p class="color-666 font13">销量：<span><?php echo ($v["imaginerNumber"]); ?></span></p>
						<p class="mar0">
							<span class="font13 color-ff5b01">￥<?php echo ($v['son'][0]['meublePrix']); ?></span>
						</p></a>
					</div>
					</a>
				</div><?php endforeach; endif; else: echo "没有商品噢！" ;endif; ?>
			
			<?php else: ?>
			       <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "该分类下面没有相关商品噢" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 bg-fff list"  >
					<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000"><div class="pad-lr10 border-b pad-b10">
						<img class="goods img-responsive pull-left" src="<?php echo ($v["meubleImage"]); ?>"/>
						<p>
							<a class="font15 color-1a1a1a" href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>">
								<?php echo ($v["meubleName"]); ?>&nbsp;<?php echo ($v["productid"]); ?>
							</a>
						</p>
						<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000"><p class="color-666 font13">销量：<span><?php echo ($v["imaginerNumber"]); ?></span></p>
						<p class="mar0">
							<span class="font13 color-ff5b01">￥<?php echo ($v['son'][0]['meublePrix']); ?></span>
						</p></a>
					</div>
					</a>
				</div><?php endforeach; endif; else: echo "该分类下面没有相关商品噢" ;endif; endif; ?>
	
		
				</div>
                   <div class="row cont-list" >
                   <?php if(is_array($sale)): $i = 0; $__LIST__ = $sale;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 bg-fff list" >
					<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000"><div class="pad-lr10 border-b pad-b10">
						<img class="goods img-responsive pull-left" src="<?php echo ($v["meubleImage"]); ?>"/>
						<p>
							<a class="font15 color-1a1a1a" href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>">
								<?php echo ($v["meubleName"]); ?>&nbsp;<?php echo ($v["productid"]); ?>
							</a>
						</p>
						<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000"><p class="color-666 font13">销量：<span><?php echo ($v["imaginerNumber"]); ?></span></p>
						<p class="mar0">
							<span class="font13 color-ff5b01">￥<?php echo ($v['son'][0]['meublePrix']); ?></span>
						</p></a>
					</div>
					</a>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			
			</div>	
			<div class="row cont-list" >
			
			<?php if(is_array($new)): $i = 0; $__LIST__ = $new;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="col-xs-12 bg-fff list" id="lists">
					<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000">
					<div class="pad-lr10 border-b pad-b10">
						<img class="goods img-responsive pull-left" src="<?php echo ($v["meubleImage"]); ?>"/>
						<p>
							<a class="font15 color-1a1a1a" href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>">
								<?php echo ($v["meubleName"]); ?>&nbsp;<?php echo ($v["productid"]); ?>
							</a>
						</p>
						<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['id']));?>" style="color:#000000"><p class="color-666 font13">销量：<span><?php echo ($v["imaginerNumber"]); ?></span></p>
						<p class="mar0">
							<span class="font13 color-ff5b01">￥<?php echo ($v['son'][0]['meublePrix']); ?></span>
						</p></a>
					</div>
					</a>
				</div><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
			</div>	
			  <P id="no">已经到底了</P>
			
		</div>
	</body>
	<script>
$(function(){
	
	 $('#submit').click(function(){
	    var url = "<?php echo U('Good/goodList');?>";
	    location.href=url+'?sea='+$('#sea').val();
	})
})
</script>
	<script type="text/javascript">
		$('.classify div').click(function(){
			$('.classify div').removeClass('active');
			$(this).addClass('active');
			$('.cont-list').removeClass('active');
			$('.cont-list').eq($(this).index()).addClass('active');

		})
		
		
		        $(function(){
            var winH = $(window).height(); //页面可视区域高度
            var i = 0; //设置当前页数
            $(window).scroll(function () {
            
                var pageH = $(document).height();//浏览器当前窗口文档的高度
                var scrollT = $(window).scrollTop(); //滚动条top
                var aa = (pageH-winH-scrollT)/winH;
                if(aa==0){
                    $.ajax({
                        url:"<?php echo U('Good/getauto');?>",
                        type:'post',
                        data:{"page":i},
                        dataType:'json',
                        success: function (json) {
                               if(json)
							   {
                                    for(var x=0; x<json.length;x++) {
                                        var obj = json[x];
									   var	id=obj.id;
										var url='/index.php/home/good/gooddetail?goodsid='+id;
                                        var sli = '<div class="col-xs-12 bg-fff list" id="lists"><a  href="'+url+'" style="color:#000000">'+
												'<div class="pad-lr10 border-b pad-b10">'+
													'<img class="goods img-responsive pull-left" src="'+obj['meubleImage']+'"/>'+
												'<p>'+
												'<a class="font15 color-1a1a1a" href="'+url+'">'+obj['meubleName']+'&nbsp;'+obj['productid']+'</a>'+
												'</p>'+
												'<a  href="'+url+'" style="color:#000000"><p class="color-666 font13">销量：<span>'+obj['faitNumber']+'</span></p>'+
													'<p class="mar0">'+
												'<span class="font13 color-ff5b01">￥'+obj['minPrice']+'</span>'+
												'</p></a>'+
												'</div>'+
													'</a>'+
												'</div>'; 
                                  
                                        var $li = $(sli);
                                        
										  $("#zhuijia").append($li);
                                          $("#no").hide();
                                    }
                                    i++;
							}
                                else {
                           $("#no").show();
								}
                               
                        },
                        error:function(){
						       layer.open({
			        		    content: "加载异常"
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  }); 
                        }
                    });
                }
				 
            });
			
			
			
			  var winH = $(window).height(); //页面可视区域高度
            var i = 0; //设置当前页数
            $(window).scroll(function () {
            
                var pageH = $(document).height();//浏览器当前窗口文档的高度
                var scrollT = $(window).scrollTop(); //滚动条top
                var aa = (pageH-winH-scrollT)/winH;
                if(aa==0){
                    $.ajax({
                        url:"<?php echo U('Good/getauto2');?>",
                        type:'post',
                        data:{"page":i},
                        dataType:'json',
                        success: function (json) {
                               if(json)
							   {
                                    for(var x=0; x<json.length;x++) {
                                        var obj = json[x];
									   var	id=obj.id;
										var url='/index.php/home/good/gooddetail?goodsid='+id;
                                        var sli = '<div class="col-xs-12 bg-fff list" id="lists"><a  href="'+url+'" style="color:#000000">'+
												'<div class="pad-lr10 border-b pad-b10">'+
													'<img class="goods img-responsive pull-left" src="'+obj['meubleImage']+'"/>'+
												'<p>'+
												'<a class="font15 color-1a1a1a" href="'+url+'">'+obj['meubleName']+'&nbsp;'+obj['productid']+'</a>'+
												'</p>'+
												'<a  href="'+url+'" style="color:#000000"><p class="color-666 font13">销量：<span>'+obj['faitNumber']+'</span></p>'+
													'<p class="mar0">'+
												'<span class="font13 color-ff5b01">￥'+obj['minPrice']+'</span>'+
												'</p></a>'+
												'</div>'+
													'</a>'+
												'</div>'; 
                                  
                                        var $li = $(sli);
                                        
										  $("#zhuijia1").append($li);
                                          $("#no").hide();
                                    }
                                    i++;
							}
                                else {
                           $("#no").show();
								}
                               
                        },
                        error:function(){
						       layer.open({
			        		    content: "加载异常"
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  }); 
                        }
                    });
                }
				 
            });
			
			  var winH = $(window).height(); //页面可视区域高度
            var i = 0; //设置当前页数
            $(window).scroll(function () {
            
                var pageH = $(document).height();//浏览器当前窗口文档的高度
                var scrollT = $(window).scrollTop(); //滚动条top
                var aa = (pageH-winH-scrollT)/winH;
                if(aa==0){
                    $.ajax({
                        url:"<?php echo U('Good/getauto1');?>",
                        type:'post',
                        data:{"page":i},
                        dataType:'json',
                        success: function (json) {
                               if(json)
							   {
                                    for(var x=0; x<json.length;x++) {
                                        var obj = json[x];
									   var	id=obj.id;
										var url='/index.php/home/good/gooddetail?goodsid='+id;
                                        var sli = '<div class="col-xs-12 bg-fff list" id="lists"><a  href="'+url+'" style="color:#000000">'+
												'<div class="pad-lr10 border-b pad-b10">'+
													'<img class="goods img-responsive pull-left" src="'+obj['meubleImage']+'"/>'+
												'<p>'+
												'<a class="font15 color-1a1a1a" href="'+url+'">'+obj['meubleName']+'&nbsp;'+obj['productid']+'</a>'+
												'</p>'+
												'<a  href="'+url+'" style="color:#000000"><p class="color-666 font13">销量：<span>'+obj['faitNumber']+'</span></p>'+
													'<p class="mar0">'+
												'<span class="font13 color-ff5b01">￥'+obj['minPrice']+'</span>'+
												'</p></a>'+
												'</div>'+
													'</a>'+
												'</div>'; 
                                  
                                        var $li = $(sli);
                                        
										  $("#zhuijia2").append($li);
                                          $("#no").hide();
                                    }
                                    i++;
							}
                                else {
                           $("#no").show();
								}
                               
                        },
                        error:function(){
						       layer.open({
			        		    content: "加载异常"
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  }); 
                        }
                    });
                }
				 
            });
        });
	</script>



</html>