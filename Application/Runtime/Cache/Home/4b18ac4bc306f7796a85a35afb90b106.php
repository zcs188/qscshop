<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>地址添加</title>
		<link rel="stylesheet" type="text/css" href="/Public/Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/address_add.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/myStyle.css" />
		<link rel="stylesheet" type="text/css" href="/Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Public/css/bottomTap.css"/>
        <link rel="stylesheet" type="text/css" href="/Public/layer/need/layer.css"/>
		<script type="text/javascript" src="/Public/layer/layer.js" ></script>
		<script type="text/javascript" src="/Public/owl/js/jquery-1.8.3.min.js" ></script>
	      <script>
  
	function getSelectVal(){ 
    $.getJSON("<?php echo U('User/getArea');?>",{province:$("#province").val()},function(json){ 
        var city = $("#city"); 
        $("option",city).remove(); //清空原有的选项 
        $.each(json,function(index,array){ 
            var option = "<option value='"+array['codeid']+"'>"+array['cityName']+"</option>"; 
            city.append(option); 
        }); 
    }); 
	} 
    function getSelectVal1(){ 
        $.getJSON("<?php echo U('User/getArea1');?>",{city:$("#city").val()},function(json){ 
            var district = $("#district"); 
            $("option",district).remove(); //清空原有的选项 
            $.each(json,function(index,array){ 
                var option = "<option value='"+array['codeid']+"'>"+array['cityName']+"</option>"; 
                district.append(option); 
            }); 
        }); 
    } 
  </script>
	</head>

	<body>
		<!--顶部标题-->
		<div class="nav text-center">
			<a href="#" onClick="javascript:history.back(-1);"><button type="button" class="mybtn pull-left back">
				<img src="/Public/img/list/right.png"/>
			</button></a>
			<span class="font16">地址添加</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row bg-fff">
				<div class="col-sm-12 col-xs-12">
					<div class="row bor-b-f2 add-pad">
						<div class="col-xs-3 add-padl">
							<span>收货人:</span>
						</div>
						<div class="col-xs-9">
							<input type="text" class="inp" name="" id="username" value="" />
						</div>
					</div>
					<div class="row bor-b-f2 add-pad">
						<div class="col-xs-3 add-padl">
							<span>手机号:</span>
						</div>
						<div class="col-xs-9">
							<input type="text" class="inp" name="" id="phone" value="" />
 					</div>
					</div>
					<div class="row bor-b-f2 add-pad">
						<div class="col-xs-3 add-padl">
							<span style="position: relative;top: 4px;">所在地区:</span>
						</div>
						<div class="col-xs-9">
						    <select name="province"  id="province" >
						    <?php if(is_array($province)): foreach($province as $key=>$v): ?><option value="<?php echo ($v["codeid"]); ?>"><?php echo ($v["cityName"]); ?></option><?php endforeach; endif; ?>
						    </select>
						</div>
					</div>
					<div class="row bor-b-f2 add-pad">
						<div class="col-xs-3 add-padl">
							<span style="position: relative;top: 4px;">所在城市:</span>
						</div>
						<div class="col-xs-9">
						    <select name="city" id="city" >
						    	 <option value="-1">市</option> 
						    </select>
						</div>
					</div>
						<div class="row bor-b-f2 add-pad">
						<div class="col-xs-3 add-padl">
							<span style="position: relative;top: 4px;">所在区县:</span>
						</div>
						<div class="col-xs-9">
					  <select name="district"  id="district"  >
						      <option value="-1">区\县</option>
						    </select>
						</div>
					</div>
				<!-- 	<div class="row bor-b-f2 add-pad">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 add-padl">
							<span class="font15 color-333 text-justify" >街道</span>
						</div>
						<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
							<input type="text" class="inp" name="" id="detail" value="" />
						</div>
					</div> -->
					<div class="row add-pad">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 add-padl">
							<textarea placeholder="填写详细地址、不少于5个字" id="detailaddress"></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="row bg-fff mar-t10 add-pad">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 add-padl">
					<span>设为默认地址</span>
					<div class="switch pull-right">
						<span >
						    
								<!--  <span class="inner">
							<input  type="checkbox"  value="2" name="is_default">
							</span>-->
							<input  type="checkbox"  value="2" name="is_default" style="width:30px;height:30px;">
						</span>
					</div>
				</div>	
			</div>
		</div>
		<div class="container-fluid b">
			<div class="row">
				<div class="col-xs-12 padd_0">
					<button type="button" class="save" id="saveadd">保  存</button>
				</div>
			</div>
		</div>
		
	</body>
		
	
	<script type="text/javascript" src="/Public/Bootstrap/js/bootstrap.js" ></script>
	<script type="text/javascript">
	
	$(function(){	
		
		    //getSelectVal(); 
		   // getSelectVal1();
		    $("#province").click(function(){ 
		        getSelectVal(); 
		    }); 
		   $("#city").click(function(){ 
		        getSelectVal1(); 
		    }); 
		$('.outer').click(function(){
			$(this).toggleClass('active');
		})
		  
   
		 $("#saveadd").click(function(){  
				  
			         var username=$("#username").val();
			         var phone=$("#phone").val(); 
			         var province=$("#province").val();
			         var city=$("#city").val();
			         var district=$("#district").val();
			         var detailaddress=$("#detailaddress").val();
			    
                    // var is_default=$('input[type=checkbox]').val();
					 if($("input[type=checkbox]").prop('checked'))
				{
					var is_default=$('input[type=checkbox]').val();
					
				} 
                      			 
			         if(username==""){
			        	 layer.open({
			        		    content: '昵称不能输入为空！'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#username").focus();
			             return false;
			         } 
			         else if(phone==""){
			        	 layer.open({
			        		    content: '手机号码不能输入为空！'
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
			         else if(province=="")
			         {
			        	 layer.open({
			        		    content: '请选择省份！'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#province").focus();
			             return false;
			         }
			         else if(city=="")
			         {
			        	 layer.open({
			        		    content: '请选择城市！'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#city").focus();
			             return false;
			         }
			         else if(district=="")
			         {
			        	 layer.open({
			        		    content: '请选择区县！'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#district").focus();
			             return false;
			         }
			         else if(detailaddress=="")
			         {
			        	 layer.open({
			        		    content: '请输入详细地址！'
			        		    ,skin: 'msg'
			        		    ,time: 3 //3秒后自动关闭
			        		  });
			             $("#detailaddress").focus();
			             return false;
			         }
					 	//else  if(default1==true)
				  //  {
					//var is_default=$('input[type=checkbox]').val();
				
				   // }
                   else
			           {
			             var url = "<?php echo U('user/doaddressadd');?>";
			             $.post(url, {username:username,province:province,city:city,district:district,detailaddress:detailaddress,is_default:is_default,phone:phone}, function(msg){
			             if(msg.info == '200') {
			             // alert(msg.url);
			              window.location.href = msg.url;
			             } 
			             else if(msg.info == '400')
			             {
			            	 window.location.href ='/index.php/home/user/login';
			             }
			             else {
			            	 layer.open({
				        		    content: msg.info
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