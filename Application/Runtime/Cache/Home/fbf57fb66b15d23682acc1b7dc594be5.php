<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>添加服务区域</title>
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
			<span class="font16">添加服务区域</span>
		</div>
		<!--顶部标题-->
		<div class="container-fluid cont">
			<div class="row bg-fff">
				<div class="col-sm-12 col-xs-12">
			
				
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
		<script type="text/javascript" src="/Public/js/jquery-3.1.1.min.js" ></script>
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
				  
			        
			         var province=$("#province").val();
			         var city=$("#city").val();
			         var district=$("#district").val();
			       
			         if(province=="")
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
			        
                   else
			           {
			             var url = "<?php echo U('user/doaddarea');?>";
			             $.post(url, {province:province,city:city,district:district}, function(msg){
			             if(msg.state == '200') {
			             // alert(msg.url);
			              window.location.href = msg.url;
			             } 
			       
			             else {
			            	 layer.open({
				        		    content: '添加失败'
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