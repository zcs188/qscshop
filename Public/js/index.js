/**
 * Created by Administrator on 2016/9/1 0001.
 */
$(function(){

    /*tab切换事件*/
    $(".commodity-kinds ul li").eq(0).addClass("active");
    $(".commodity-box .commodities").eq(0).show().siblings(".commodities").hide();
    $(".commodity-kinds ul li").click(function(){

        $(this).addClass("active").siblings("li").removeClass("active");

        $(".commodity-box .commodities").eq($(this).index()).show().siblings(".commodities").hide();

    });



    /*var height = $(".leftPart").height();
    $(".rightPart").css({
        'min-height': height
    });

    $(".toTop").click(function(){
        $("body,html").animate({
              'scrollTop':0
        })
    })*/

    /*/!*导航弹窗*!/
    $('.fixed_fd').css({'width': '100%','height':'100%'});
    $('#navList').click(function(){
        var title = $(this).attr("title");
        if(title == 'off'){
            $('.fixed_fd').animate({
                'left': 0
            }).css({
                'display':'block'
            });
            $(this).attr("title","on");
            $('body').css({"overflow":"hidden"});
        }else{
            $('.fixed_fd').animate({
                'left': '100%'
            }).css({

            });
            $(this).attr("title","off");
            $('body').css({"overflow":"auto"});
        }
    });

    $('.fix_bg').click(function(){
        $('.fixed_fd').animate({
            'left': '100%'
        });
        $("#navList").attr("title","off");
        $('body').css({"overflow":"auto"});
    });
    $('.fixed_cont').children().click(function(e){
        e.stopPropagation();
    });
    /!*导航弹窗 end*!/*/
    /*收藏*/

    $('.collect').click(function(){
        $(this).toggleClass('on');
        if($(this).hasClass('on'))
        {
            $(this).addClass('active')
                   .find('input').prop("checked",true);

        }else
        {
            $(this).removeClass('active')
                   .find('input').prop("checked",false);
        }
    });

    /*收藏 end*/

    /*商品选择规格*/
    $('.standard li').eq(0).addClass("active");
    $('.standard li').click(function(){

        $(this).addClass('active').siblings('li').removeClass('active');

    });


    $(".product-tab ul li").eq(0).addClass("active");
    $(".product-tab-box .tab-box").eq(0).show().siblings(".tab-box").hide();
    $(".product-tab ul li").click(function(){

        $(this).addClass("active").siblings("li").removeClass("active");

        $(".product-tab-box .tab-box").eq($(this).index()).show().siblings(".tab-box").hide();

    });
    /*商品选择规格 end*/



    /*服务选择弹窗*/
    var bodyw = $(window).width();
    var bodyh = $(window).height();
    $('.fixed_fd').css({'width':bodyw,'height':bodyh});
    var fw = $('.fixed_cont').width();
    var fh = $('.fixed_cont').height();
    $('.fixed_cont').css({'right':0+'px','height':bodyh});

    $('#choose').click(function(){
        $('.fixed_fd').show();
        $("body,html").css({"overflow":"hidden"});
    });
    $('.fixed_fd').click(function(){
        $(".fixed_fd").hide();
        $("body,html").css({"overflow":"scroll"});
    });

    $('.fixed_cont').click(function(e){
        e.stopPropagation();
    });

    /*商品筛选*/
    $('.brand-list ul li').click(function(){

        if($(this).hasClass('active')){

            $(this).removeClass('active');

        }else{
            $(this).addClass('active').siblings('li').removeClass('active');
        }

    });
    var len = $('.p-kinds .title').length;

    for(var i = 0; i<len; i++){
        var title = $('.p-kinds .title').eq(i).attr('title');
        if(title == 'on'){
            $('.p-kinds .title').eq(i).siblings('.brand-list').show();
        }else{
            $('.p-kinds .title').eq(i).siblings('.brand-list').hide();
        }
    }

    $('.rest').click(function(){
        $(".brand-list ul li").removeClass('active');
    })

    $('.p-kinds .title').click(function(){

        var _title = $(this).attr('title');
        if(_title == 'on'){
            $(this).css('background',"url('images/gwt_up.png') right center no-repeat").addClass('active');
            $(this).attr('title','off');
            $(this).siblings(".brand-list").slideToggle();
        }else{
            $(this).css('background',"url('images/gwt_down.png') right center no-repeat");
            $(this).attr('title','on');
            $(this).siblings(".brand-list").slideToggle();
        }

    });












    /*地址管理*/
    $(".my-addressBox .my-address .opera").click(function(){

            $(this).addClass('active')
                .find('input').prop("checked",true);

            $(this).parents(".my-address").siblings('.my-address').find('.opera').removeClass('active')
                .find('input').prop("checked",false);

    });

    /*添加新地址*/
    $('.address-import .default').click(function(){
        $(this).toggleClass('on');
        if($(this).hasClass('on'))
        {
            $(this).addClass('active')
                .find('input').prop("checked",true);

        }else
        {
            $(this).removeClass('active')
                .find('input').prop("checked",false);
        }
    });

    /*发表评论*/

    $('.goods-stars ul li').click(function(){

        $('.goods-stars ul li').each(function(){
            $(this).removeClass("active");
        });
        var index = $(this).index();
        for(var i = 0; i<=index; i++){

            $('.goods-stars ul li').eq(i).addClass('active');
        }

    });


    /*我的优惠券*/

    $(".ticket-kinds ul li").eq(0).addClass("active");
    $(".ticket-box .ticket").eq(0).show().siblings(".ticket").hide();
    $(".ticket-kinds ul li").click(function(){

        $(this).addClass("active").siblings("li").removeClass("active");

        $(".ticket-box .ticket").eq($(this).index()).show().siblings(".ticket").hide();

    });

    /*获取设备高度并赋值*/

    $(".commodity").css({
        'min-height': $(window).height()-$(".header").height()-$(".height").height()
    });
    $(".commodity-kinds").css({
        'min-height': $(window).height()-$(".header").height()-$(".height").height()
    });
    $(".commodity-box").css({
        'min-height': $(window).height()-$(".header").height()-$(".height").height()
    })

});
//加减符号
function updatedProduct(num){
    var ret_num ='';
    var num = parseInt(num);
    var numObj = $('.num');
    var buyNum = parseInt(numObj.val());
    if( num == -1) {
        ret_num = buyNum+num < 1 ? 1 : buyNum+num;
    } else {
        ret_num = buyNum+num;
    }
    numObj.val(ret_num);                  //输入框里商品数量
}