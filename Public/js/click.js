// JavaScript Document

$(document).ready(function(e) {



	//商品分类
	var fh = $('.fl_cont .t-right dl dd ul li img').width();//设定图片分类页的图片高度
	$('.fl_cont .t-right dl dd ul li img').height(fh);	
	$('.zq_cont').eq($('.fl_cont .t-left ul li.on').index()).show().siblings().hide();
	$('.fl_cont .t-left ul li').click(function(){
		$(this).addClass('on').siblings().removeClass('on');
		$('.zq_cont').eq($(this).index()).show().siblings().hide();
	});
	
	
	
	
	/* 编辑地址 弹出框 */
	$('.zh_adds,.zh_sq').click(function(){
		$('.adds_fix').animate({width:'100%'},300);
	});
	$('.adds_fix ul li').click(function(){
		$('.adds_fix').animate({width:'0%'},300);
		$('.zh_adds .t-left input').val($(this).html());
	});
	
	$('.mrdz').click(function(){
		$(this).toggleClass('on');
		if($(this).hasClass('on'))
		{
			$('.mrdz input').prop('checked',true);
		}
		else
		{
			$('.mrdz input').prop('checked',false);
		}
		
	});
	
	//首页底部高度
	$('.page-pb').height($('.footer').height());
	
	//产品列表分类弹出框
	$('.topsx').click(function(){
		$('.sx_fix').css('display','block').animate({width:'100%'},300);
	});
	
	$('.sx_fix').click(function(){
		$(this).css('display','none').animate({width:'0px'},300);
	});
	$('.sx_fc').click(function(e){
		e.stopPropagation();
	});
	$('.sxbg').siblings().hide();
	$('.sx_title').click(function(){
		if($(this).hasClass('sxbg'))
		{
			$(this).addClass('sxbg1').removeClass('sxbg');
			$(this).siblings().show();
		}
		else
		{
			$(this).addClass('sxbg').removeClass('sxbg1');
			$(this).siblings().hide();
		}
	});
	
	/* 评价商品 */
	$('.pinj_bt .t-right').css({'height':$('.pinj_bt .t-left').height(),'line-height':$('.pinj_bt .t-left').height()+'px'});
	$('.pinj_serv dt').click(function(){
		var a = $(this).parents('li').index();
		var i = $(this).index();
		var j = 0;
		var len =$(this).parents('li').children().children().length;
		//alert(len);
		for(j = 0 ; j <= i ; j++)
		{
			$(this).parents('li').children().children().eq(j).addClass('on');
		}
		
		for(j = i+1 ; j <= len ; j++)
		{
			$(this).parents('li').children().children().eq(j).removeClass('on');
		}
	});
	
});

$(window).load(function(){
	//首页底部高度
	$('.page-pb').height($('.footer').height());
	
	//个人中心 头像、积分 上下居中
	var vip_bg = $('.vip_bg').height();
	var vip_tx = $('.vip_tx').height();
	var vipldl = $('.vip_tx .t-left dl').height();
	var viprdl = $('.vip_tx .t-right div').height();
	$('.vip_tx').css('top',(vip_bg-vip_tx)/2);
/*	$('.vip_tx .t-left dl').css('margin-top',(vip_tx-vipldl)/2);*/
	$('.vip_tx .t-right div').css('margin-top',(vip_tx-viprdl)/2);
	
	/* 获取填写订单 商品高度 */
	$('.txddsp_list img').height($('.txddsp_list img').width());
	$('.txddsp_list .t-right').css('padding',($('.txddsp_list img').width()-$('.txddsp_list .t-right').height())/2+'px 0px');
	
});

$(window).resize(function(){
	//首页底部高度
	$('.page-pb').height($('.footer').height());
	
	//个人中心 头像、积分 上下居中
	var vip_bg = $('.vip_bg').height();
	var vip_tx = $('.vip_tx').height();
	var vipldl = $('.vip_tx .t-left dl').height();
	var viprdl = $('.vip_tx .t-right div').height();
	$('.vip_tx').css('top',(vip_bg-vip_tx)/2);
/*	$('.vip_tx .t-left dl').css('margin-top',(vip_tx-vipldl)/2);*/
	$('.vip_tx .t-right div').css('margin-top',(vip_tx-viprdl)/2);
	
});


<!-- 让字体随屏幕大小自由缩放js -->
!function(){
	function setFontSize(){
		var _w=document.documentElement.clientWidth;_w=_w>720?720:_w;document.documentElement.style.fontSize=_w/16+"px";}
	var _t=null;window.addEventListener("resize",function(){clearTimeout(_t);_t=setTimeout(setFontSize,100);},false);
	setFontSize();
	var _v=new Date().getTime();
}(window);