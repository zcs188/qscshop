<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>确认订单</title>
		<link rel="stylesheet" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myCollect.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
		<script type="text/javascript" src="/Public/Bootstrap/js/jquery.min.js" ></script>
		<script type="text/javascript">
		</script>
	</head>
	<body>
		 <!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">确认订单</span>
		</div>

		<!--顶部标题-->
		<div class="container-fluid cont">
		<?php if($auto['id']): ?><!--address开始-->
				<div class="row">
			
				<div class="col-xs-12 padd_0 bg-fff">
					<div class="col-xs-1 text-center padd_0">
						<img class="local" src="/Public/img/order/dingwei.png"/>
					</div>
					<a onclick="getaddressurl()" style="color:#000000">
					<div class="col-xs-9 padd_0">
						<p class="mar-b5 mar-t10">
							<span><?php echo ($auto["userName"]); ?></span>
							<span class="pull-right"><?php echo ($auto["userPhone"]); ?></span>
						</p>
						<p>
							<?php echo ($province1); echo ($city); echo ($area); echo ($auto["adresse"]); ?>
						</p>
					</div>
					<div class="col-xs-2 padd_0 text-center">
						<img class="more" src="/Public/img/order/r.png"/>
					</div>
					</a>
				</div>
				
			</div>
		<?php else: ?>
		<!-- <a href="<?php echo U('User/address',array('specid'=>$specid,'number'=>$number));?>" class="message" align="center">选择收货地址,点击添加</a> -->
		<p align="center" onclick="getaddressurl()">选择收货地址,点击添加</p>
		<br/><?php endif; ?>
			
			<div class="row">
			<?php if(is_array($volist)): foreach($volist as $key=>$v): if($v['specid'] != $v['specid']): ?><div class="col-xs-12 padd_0 bg-fff mar-t10 pad-up10">
					<div class="col-xs-3 pad-r7">
						<img class="img-rounded img-responsive" src="<?php echo ($v["reserve1"]); ?>"/>
					</div>
					<div class="col-xs-9 padd_0">
					<a href="<?php echo U('good/gooddetail',array('goodsid'=>$v['goodsid']));?>" style="color:#000000">
						<div class="col-xs-7 padd_0">
							<p class="font12 color-333 mar-b5 heightControl-2">
								<?php echo ($v["meubleName"]); ?>
							</p>
							<p class="font12 color-4c4c4c">规格：<?php echo ($v["norme2"]); ?>【<?php echo ($v["norme1"]); ?>】</p>
						</div>
						<div class="col-xs-5 text-right pad-l0">
				<?php if(($v['isNotTeJia'] == 1) OR ($v['isNotActif'] == 1) ): ?><p class="font13 color-669900"><font style="color:red" >￥<?php echo ($v["meubleActifPrix"]); ?></font></p>
				<?php else: ?>
				     <p class="font13 color-669900">￥<?php echo ($v["meublePrix"]); ?></p><?php endif; ?>
							<p>x<?php echo ($v["son"]); ?></p>
						</div>
						</a>
					</div>
				</div>
				<?php else: ?>
					 	<div class="col-xs-12 padd_0 bg-fff mar-t10 pad-up10">
					<div class="col-xs-3 pad-r7">
						<img class="img-rounded img-responsive" src="<?php echo ($v["reserve1"]); ?>"/>
					</div>
					<div class="col-xs-9 padd_0">
					<a href="<?php echo U('good/gooddetail',array('goodsid'=>$v['goodsid']));?>" style="color:#000000">
						<div class="col-xs-7 padd_0">
							<p class="font12 color-333 mar-b5 heightControl-2">
								<?php echo ($v["meubleName"]); ?>
							</p>
							<p class="font12 color-4c4c4c">规格：<?php echo ($v["norme2"]); ?>【<?php echo ($v["norme1"]); ?>】</p>
						</div>
						<div class="col-xs-5 text-right pad-l0">
				<?php if(($v['isNotTeJia'] == 1) OR ($v['isNotActif'] == 1) ): ?><p class="font13 color-669900"><font style="color:red" >￥<?php echo ($v["meubleActifPrix"]); ?></font></p>
				<?php else: ?>
				     <p class="font13 color-669900">￥<?php echo ($v["meublePrix"]); ?></p><?php endif; ?>
							<p>x<?php echo ($v["son"]); ?></p>
						</div>
						</a>
					</div>
				</div><?php endif; endforeach; endif; ?>
				<div class="col-xs-12 bg-fff mar-t15 b">
					<!-- <p class="color-333 mar-t10">配送方式：送货入户并安装</p> -->
				</div>
				<div class="col-xs-12 bg-fff b">
					<a href="javascript:;" style="color:#000000">
					<p class="color-333 mar-t10">
						使用代金券
						<select class="pull-right dai" style="border:none;width:100px;" id="dai">
						<option aaa="" value="0">-请选择-</option>
						<?php if(is_array($coupon1)): $i = 0; $__LIST__ = $coupon1;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option aaa="<?php echo ($vo["couponid"]); ?>" value="<?php echo ($vo["compenser"]); ?>"><?php echo ($vo["chanshu"]); ?></option><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
						</select>
					</p>
					</a>
				</div>
				<div class="col-xs-12 bg-fff b">
				<a href="javascript:;" style="color:#000000">
					<p class="color-333 mar-t10">
						使用满减券
						<select class="pull-right" style="border:none;width:100px;" id="man">
						<option sss="" value="0">-请选择-</option>
						<?php if(is_array($coupon)): $i = 0; $__LIST__ = $coupon;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option sss="<?php echo ($vo["couponid"]); ?>" value="<?php echo ($vo["compenser"]); ?>"><?php echo ($vo["chanshu"]); ?></option><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
						
						</select>
					</p>
					</a>
				</div>
					<font size="1" style="color:red;margin-left:30px;"  >注意特价商品/活动商品不能使用满减券！
					<p><font size="1" color="green" style="margin-left:40px;" >●</font><font color="000000">普通商品价格为<font color="green">绿色</font></font></p>
					<p><font size="1" color="red" style="margin-left:40px;" >●</font><font color="000000">活动/特价价格为<font color="red">红色</font></font></p></font>
				<div class="col-xs-12 bg-fff">
					<p class="color-333 mar-t10">
						积分
						<span class="pull-right color-666">返送积分<?php echo ($sumprice); ?>点</span>
					</p>
				</div>
			
				<div class="col-xs-12 mar-t15">
					<textarea class="font12 color-999" placeholder="给商家留言（200字以内）" id="getmessage"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 bg-fff mar-t10 b">
					<p class="color-669900 mar-t10 text-right">共<?php echo ($znumber); ?>件商品小计：￥<span class="font16" id="subpri"><?php echo ($sumprice); ?></span>
					<?php if($res['msg'] > 0): ?>（含运费￥<?php echo ($res['msg']); ?>）
					<?php else: ?>
					 包邮<?php endif; ?>
					</p>
				</div>
				<div class="col-xs-12 bg-fff ">
					<p class="color-333 mar-t10">
						使用代金券
						<span class="pull-right color-999" id="daijin">-￥</span>
					</p>
				</div>
				<div class="col-xs-12 bg-fff">
					<p class="color-333 mar-t10">
						使用满减券
						<span class="pull-right color-999"id="manjian">-￥</span>
					</p>
				</div>
				<div class="col-xs-12 bg-fff">
					<p class="color-333 mar-t10">
						合计
						<span class="pull-right color-669900" id="heji1">￥<?php echo ($sumprice); ?></span>
					</p>
				</div>
			</div>
		</div>
		<div class="bottom text-right bg-fff">
			<span class="font12">
				合计：<span class="color-669900 font14" id="heji"><?php echo ($sumprice); ?></span>
			</span>
			<input type="hidden" id="cartarr" value='<?php echo ($cartarr); ?>'/>
			<input type="hidden" id="numberv" value='<?php echo ($number); ?>'/>
			<button class="order" type="button" id="tiorder"> 提交订单</button>
		</div>
	</body>

	
	<script type="text/javascript">
	function getaddressurl()
	{
		var specid='<?php echo ($specid); ?>';
		var number='<?php echo ($number); ?>';
		/*  alert(specid);
		alert(number);  */
      window.location.href ='/index.php/home/user/address?specid='+specid+'&number='+number;
	}
		$(function(){
			var n=0;
			var n1=0
			var sprice=$("#subpri").html();
			  $("#dai").click(function(){  
					n = $(this).val();
					$("#daijin").text(n);
					price();
			  })
			   $("#man").click(function(){  
					n1 = $(this).val();
					$("#manjian").text(n1);
					price();
			  })
			  function price(){
				
				 var price=sprice;
					
					
				var faillPrice=price-n-n1;
				$('#heji').html(faillPrice)
				$('#heji1').html(faillPrice)
			}
			
		  });
		$(function(){	
			  $("#tiorder").click(function(){  
				   
			         var specidarr=$("#cartarr").val();                             
			         var numarr=$("#numberv").val();     
			         var message=$("#getmessage").val(); 
			         var dcoupid= $('#dai option:selected').attr('aaa');
			         var mcoupid= $('#man option:selected').attr('sss');
			         var sumprice=$("#heji").html(); 
			        
			        /*  if(mcoupid=='')
			         {
			        	 var mcoupid='';
			         } */
			         
			      if(specidarr==""||numarr==""){
			             layer.open({
			        		    content: '商品规格与数量不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#cartarr").focus();
			             return false;
			         }
			    /*   else if(message==""){
			             layer.open({
			        		    content: '商家留言不能为空'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#getmessage").focus();
			             return false;
			         } */
			      else
			         {
			             var url = "<?php echo U('good/makeorder');?>";
			             $.post(url, {specidarr:specidarr,numarr:numarr,dcoupid:dcoupid,mcoupid:mcoupid,message:message,sumprice,sumprice}, function(msg)
			            		 {
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
			             
			            

			         })
			         } 
			       })
			 
		  });
		  
		</script>
</html>