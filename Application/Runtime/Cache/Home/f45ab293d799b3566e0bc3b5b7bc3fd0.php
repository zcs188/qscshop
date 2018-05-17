<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>购物车</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/car.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css"/>
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
			<span class="font16">购物车</span>
			<button class="mybtn pull-right font15 compile" type="button">
				编辑
			</button>
		</div>
		
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row f-all">
			<?php if(is_array($cartlist)): foreach($cartlist as $key=>$v): ?><div class="col-xs-12 bg-fff list">
					<span class="circle pull-left getcartid" id="getcartid" value="<?php echo ($v["specid"]); ?>" vbnm="<?php echo ($v["cartid"]); ?>"></span>
					<a  href="<?php echo U('good/gooddetail',array('goodsid'=>$v['goodsid']));?>" style="color:#000000"><img class="goods img-rounded pull-left" src="<?php echo ($v["meubleImage"]); ?>"/>
					</a>
					<p class="mar-b5">
						<a class="color-333 font12" href="#">
							<?php echo ($v["meubleName"]); ?>
						</a>
					</p>
					<p class="color-4d4d4d font12 bg-e6e6e6 pad5 mar-b5" id="updatespec">
						规格：<span class="guige"><?php echo ($v["norme2"]); ?>【<?php echo ($v["norme1"]); ?>】</span>
						<button type="button" class="mybtn pull-right  padd_0">
							<img class="down" carid="<?php echo ($v["cartid"]); ?>" stydf="<?php echo ($v["id"]); ?>" src="/Public/img/list/down.png" alt="" />
						</button>
						
					</p>
					<p class="mar0">
						<small class="font15 color-ff5b01">￥</small>
							<?php if(($v['isNotTeJia'] == 1) OR ($v['isNotActif'] == 1) ): ?><span class="font15 color-ff5b01 price"><?php echo ($v["meubleActifPrix"]); ?></span>
				<?php else: ?>
				    <span class="font15 color-ff5b01 price"><?php echo ($v["meublePrix"]); ?></span><?php endif; ?>
						<span class="pull-right">
							<span class="number">
								<button class="minu padd_0" onclick="getNum('<?php echo ($v["cartid"]); ?>','-');"><img src="/Public/img/list/min.png"/></button>
								<span class="shuliang" id="<?php echo ($v["cartid"]); ?>" ><?php echo ($v["meubleNumber"]); ?></span>
								<button class="plus padd_0" onclick="getNum('<?php echo ($v["cartid"]); ?>','+');"><img src="/Public/img/list/plus.png"/></button>
							</span>
						</span>
					</p>
				</div><?php endforeach; endif; ?>
			
			</div>
		</div>
		<div class="container-full total bg-fff toal-list active">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 padd_0">
				<div class="pull-left pad-t10 all-sel">
					<span class="circle"></span>
					<span class="font15 color-333 mar-r10">全选</span>
				</div>
				<div class="pull-right">
					<span class="font12 color-333">合计：</span>
					<span class="font15 color-669900">￥</span>
					<span class="font15 color-669900 t-all">0.00</span>
					<a href="#">
					<button class="set" onclick="getcartid();">
						结算(<span class="t-num" id="numcon">0</span>)
					</button>
					</a>
				</div>
			</div>
		</div>
		<div class="container-full  bg-fff toal-list">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 padd_0">
				<div class="pull-left pad-t10 all-sel">
					<span class="circle"></span>
					<span class="font15 color-333 mar-r10">全选</span>
				</div>
				<div class="pull-right">
					<button class="del bg-eb2522 font17" id="detelecart" onclick="detecartid();">
						删除
					</button>
				</div>
			</div>
		</div>
		<!--底部菜单-->
		<!--model-->
		<div class="cover"></div>
		<div class="model">
			 <div class="container-fluid aa"  id="clear">
				
			</div> 
		</div>
		
	</body>
	<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript">
	var arr1=[];//arr1点击结算选中的商品数量
	var guig=null;

	function getNum(cartid,t){
		
		var dinum=$("#"+cartid).html();
		var tnum = parseInt(dinum);//加减后的数量
		if(t=='+'){
			tunm = tnum+1;
			
		}else{
			tunm = tnum-1;
			if(dinum == '1'){
				tunm = 1;
			}
		}
		 var url="<?php echo U('good/updategoodnumbercart');?>";
		 $.post(url, {tunm:tunm,cartid:cartid}, function(msg){
            if(msg.state=='200'){
             //window.location.reload();
            	/*  layer.open({
            		    content: '修改成功！'
            		    ,skin: 'msg'
            		    ,time: 3 //3秒后自动关闭
            		  });  */
            }
           /*  else if(msg.state == '400')
            {
           	 window.location.href ='/index.php/home/user/login';
            } */
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
	  function getcartid()
	  {
		  var arr=[];
		  for(var i=0;i<$('.getcartid.active').length;i++){
			  arr.push($('.getcartid.active').eq(i).attr('value'));
		  }
		 
		  var specid=JSON.stringify(arr);
          var number=JSON.stringify(arr1);
          if(specid=='[]'&&number=='[]')
        	  {
        	  layer.open({
         		    content: "请选择你要结算的商品!"
         		    ,skin: 'msg'
         		    ,time: 3 //3秒后自动关闭
         		  }); 
        	  return;
        	  }
    
          else
          {
		window.location.href ='/index.php/home/good/ordersure?specid='+specid+'&number='+number;
        	  
          }
          

	  }
	  /*  删除购物车*/
	  function detecartid()
	  {
		  var arr3=[];//要删除的购物车ID
		  for(var i=0;i<$('.getcartid.active').length;i++){
			  arr3.push($('.getcartid.active').eq(i).attr('vbnm'));
		  }
		 
		  var url = "<?php echo U('good/deletecart');?>";
		  var cartid=JSON.stringify(arr3);
		//window.location.href ='/index.php/home/good/deletecart?cartid='+cartid;
		 $.post(url, {cartid:cartid}, function(msg){
            if(msg.state=='200'){
             window.location.reload();
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
	  function shuliang(){
			var n=0;
			arr1=[];
			for(var i=0;i<$('.cont .circle.active').length;i++){
				arr1.push($('.cont .circle.active').eq(i).parent().find('.shuliang').html());
			}
	  }
	$('.down').click(function(){
		$('.model').show();
		$('.cover').show();
	
		var id=$(this).attr("stydf");
		var carid=$(this).attr("carid");
		
      var url = "<?php echo U('good/cart');?>";
        $.post(url,{id:id,carid:carid},function(data){
        	$('#clear').empty();
          
            	var str = '';
            
			    for(var i = 0; i<data.length; i++){
			    	var temp = data[i].isNotTeJia;
			    	if(parseInt(data[i].isNotTeJia) == 1 || parseInt(data[i].isNotActif) == 1)
					{
			    		temp = data[i].meubleActifPrix;
					}else{
			    		temp = data[i].meublePrix;
					}
			       	if(i==0){
			       		str='<div class="row hide1">'+
			       		
									'<input id = "showCartId" type = "hidden" value = "'+carid+'"/>'+
									'<div class="col-xs-4 pad-r0 pic">'+
									 '<img class="img-rounded img-responsive" src="'+data[i].miaoshu+'"/>'+ 
								'</div>'+
								'<div class="col-xs-8">'+
								'<p id="temp" class="font14 color-ff5b01 mar-b5 mar-t5">￥'+temp+'</p>'+
				
									
									
									'<p class="font10 color-999 mar-b5" id="kucun">库存：'+data[i].meublerNumber+'</p>'+
									'<p class="font12 color-999" id="sanji">已选:</p>'+
								'</div>'+
								'<button type="button" class="mybtn space"><img src="/Public/img/list/cc.png"/></button>'+
							'</div>'+
							'<div class="row hide1">'+
								'<div class="col-xs-12">'+
									'<p class="font13 font-w">规格</p>'+
									'<ul class="color-333 font13 list-unstyled lx" id="getid">'+
										'<li onclick="change('+temp+')" zxs="'+data[i].meublerNumber+'"  value="'+data[i].specid+'">'+data[i].norme2+'【'+data[i].norme1+'】</li>';
							if(data.length == 1){
								str+='</ul>'+
								'</div>'+
								'<div class="col-xs-12 padd_0" id="ss3"><button class="btn-block color-fff sure">确定</button></div>'+
							'</div>';
							}
									
			       	}else{
			       		if(i == data.length-1){
			       			str+='<li onclick="change('+temp+')" class="ss" zxs="'+data[i].meublerNumber+'" value="'+data[i].specid+'">'+data[i].norme2+'【'+data[i].norme1+'】</li>'+
							'</ul>'+
						'</div>'+
					'<div class="col-xs-12 padd_0" id="ss3"><button class="btn-block color-fff sure">确定</button></div>'+
				'</div>';
			       		}else{
			       			str+='<li onclick="change('+temp+')" zxs="'+data[i].meublerNumber+'" value="'+data[i].specid+'">'+data[i].norme2+'【'+data[i].norme1+'】</li>';
			       		}
			       		
			       	}
			       
			       }
			   
				$('#clear').html(str);

          }); 
        guig=$(this).parents('.list').index();
        $('.aa').on('click','li',function(){
			var id=$('#getid li.active').html();
			//alert(id);
			/* alert(guig); */
			$(".guige").eq(guig).html(id);
       
	})
	 
      
       
	})
	window.onload=function(){
		
		$('.aa').on('click','li',function(){
			$('.aa li').removeClass('active');
			$(this).addClass('active');
			 var val1=$(this).attr("zxs");
			 $('.aa #kucun').text("库存:"+val1);
			 var val = $(this).text();
			 $('.aa #sanji').text("已选:"+val);
		})
		$('.aa').on('click','.space',function(){
			$('.model').css('display','none');
			$('.hide1').css('display','none');
			$('.cover').css('display','none');
		})
		$('.aa').on('click','.sure',function(){
			$('.model').css('display','none');
			$('.hide1').css('display','none');
			$('.cover').css('display','none');
			var id=$('#getid li.active').attr("value");
			var cartid = $("#showCartId").val();
			var url="<?php echo U('good/updatecartprice');?>";
			 $.post(url, {id:id,cartid:cartid}, function(msg){
	             if(msg.state=='200'){
	              window.location.reload();
	             }
	             /* else if(msg.state == '400')
	             {
	            	 window.location.href ='/index.php/home/user/login';
	             } */
	             else if(msg.state!='200'){
	            	// alert(msg.msg);
	            layer.open({
	        		    content: msg.msg
	        		    ,skin: 'msg'
	        		    ,time: 3 //3秒后自动关闭
	        		  }); 
	             }
	           }, 'json') 
			
		})
		
		
		
	}
	
	
	
		var s=true;
		$('.toal-list .circle').click(function(){
			if(s){
				$(this).addClass('active');
				$('.cont .circle').addClass('active');
				js1();
			}else{
				$(this).removeClass('active');
				$('.cont .circle').removeClass('active');
				$('.t-all').html(0);
				$('.t-num').html(0);
			}
			shuliang();
			s=!s;
		})
		$('.list .circle').click(function(){
			$(this).toggleClass('active');
			js();
			s=true;
			 shuliang();
		})
//		数量加减
		$('.minu').click(function(){
			if($(this).next('span').html()>1){
				var n=$(this).next('span').html()-1
				$(this).next('span').html(n)
				$(this).parent().prev().find('.Num').html(n);
				js();
				shuliang();
			}
		})
		$('.plus').click(function(){
			$(this).prev('span').html(parseInt($(this).prev('span').html())+1);
			$(this).parent().prev().find('.Num').html(parseInt($(this).prev('span').html()));
			
			js();
			shuliang();
		})
//		编辑按钮
var sw=true;
$('.compile').click(function(){
	$('.toal-list').removeClass('active');
	if(sw){
		$('.toal-list').eq(1).addClass('active');
		$(this).html('完成');
	}else{
		$('.toal-list').eq(0).addClass('active');
		$(this).html('编辑');
	}
	sw=!sw;
})
/* $('.del').click(function(){
		$('.circle.active').parents('.list').remove();
}) */
 
 function change(temp){
	$("#temp").text("￥"+temp);
	}


//	判断购物车数量
function remove(){
	for(var i=0;i<$('.f-all').length;i++){
		if($('.f-all').eq(i).children('.list').length==0){
			$('.f-all').eq(i).remove();
		}
	}
}
//计算总和

function js(){
	var m=0;
	var n=0;
	for(var i=0;i<$('.cont .circle.active').length;i++){
		m+=$('.cont .circle.active').eq(i).parent().find('.shuliang').html()*$('.cont .circle.active').eq(i).parent().find('.price').html();
		n+=parseInt($('.cont .circle.active').eq(i).parent().find('.shuliang').html());
	}
	$('.t-all').html(m);
	$('.t-num').html(n);
}
function js1(){
	var m=0;
	var n=0;
	for(var i=0;i<$('.list').length;i++){
		m+=parseInt($('.list').eq(i).find('.shuliang').html())*$('.list').eq(i).find('.price').html();
		n+=parseInt($('.list').eq(i).find('.shuliang').html());
	}
	$('.t-all').html(m);
	$('.t-num').html(n);
}
	</script>
</html>