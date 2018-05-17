<?php
/**
* @project 七色彩家具
* @author 钟长森
* @Datetime 2017-8-11
* @version 1.0
*/
namespace Home\Controller;
use Think\Controller;
use Think\Model;
class GoodController extends Controller {
    /*商品详情*/
    public function gooddetail(){
        $userid=$_SESSION['userid'];
        /* if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        } */
        header("Content-type: text/html; charset=utf-8");
        $data=M('user_consignee_address')->where(array('userId'=>$userid,'reserve1'=>1,'isNotTacite'=>2))->find();
        $province1=M('tb_da_area')->where(array('codeid'=>$data['provinceId']))->getField('cityName');
        $city=M('tb_da_area')->where(array('codeid'=>$data['marcheId']))->getField('cityName');
        $area=M('tb_da_area')->where(array('codeid'=>$data['districtId']))->getField('cityName');
        $this->assign('province1',$province1);
        $this->assign('city',$city);
        $this->assign('area',$area);
        $goods_id=$_GET['goodsid'];
        //添加足迹
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."cart/addFont";
        $data['id']=$goods_id;

        $data1 =curl_post($url, array('goodid'=>$data['id'],'userToken'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
        //商品相册
        $goodsimage=M('goods_meubleimage')->where(array('meubleId'=>$goods_id))->order('number asc')->select();
        //商品邮费
        $mall=M('user_meubleorder_details')->where(array('goodsId'=>$goods_id))->find();
        $this->assign('mall',$mall);
        $this->assign('goodsimage',$goodsimage);
           $goodsdetail=M('goods_meublebasic')->alias('gm')->field('gm.reserve1 as productid,gmc.reserve1 as meubleImage1,gm.*,gmc.*')
        ->join('goods_meublespecifications gmc ON gmc.meubleId=gm.id')
        ->where(array('gm.id'=>$data['id']))->find();
     
			$goodsdetail['son']=M('goods_meublespecifications')->where(array('meubleId'=>$data['id']))->order('addTime asc')->limit(1)->select();
			
        $this->assign('goodsdetail',$goodsdetail);
        //推荐商品
        $tuijiangoods=M('goods_meublebasic')->where(array('isNotPreface'=>1,'environType'=>2))->select();
		foreach($tuijiangoods as $k=>$v)
		{
		
			$tuijiangoods[$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->select();
			
				
		}
        $this->assign('tuijiangoods',$tuijiangoods);
        
        /*商品规格*/
        $guige=M('goods_meublespecifications')->where(array('meubleId'=>$goods_id))->select();
        $kucun=M('goods_meublespecifications')->where(array('meubleId'=>$goods_id))->getField('meublerNumber');
        $this->assign('guige',$guige);
        $this->assign('kucun',$kucun);
        $this->display();
    }
    /*礼品详情*/
    public function giftdetail(){
        
        $this->display();
    }
    /*积分商城*/
    public function jifensc()
    {
        $jifengood=M('point_goods')->select();
        $this->assign('jifengood',$jifengood);
        $this->display();
    }
    /*确认订单*/
    public function ordersure()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        header("Content-type: text/html; charset=utf-8");
        $data=M('user_consignee_address')->where(array('userId'=>$userid,'reserve1'=>1,'isNotTacite'=>2))->find();
        $province1=M('tb_da_area')->where(array('codeid'=>$data['provinceId']))->getField('cityName');
        $city=M('tb_da_area')->where(array('codeid'=>$data['marcheId']))->getField('cityName');
        $area=M('tb_da_area')->where(array('codeid'=>$data['districtId']))->getField('cityName');
        $this->assign('province1',$province1);
        $this->assign('city',$city);
        $this->assign('area',$area);
        $this->assign('auto',$data);
       
     

        $cartarr=$_GET['specid'];//规格id
       
        $number=$_GET['number'];//选中的数量
   
         $this->assign('cartarr',$cartarr);
         $this->assign('number',$number);
        $cartarr=str_replace('[','',$cartarr);
        $cartarr=str_replace(']','',$cartarr);
        $cartarr=str_replace('"','',$cartarr);
        $number=str_replace('[','',$number);
        $number=str_replace(']','',$number);
        $number=str_replace('"','',$number);
        $this->assign('specid',$cartarr);
        $this->assign('number',$number);
        
        $hello = explode(',',$cartarr);
        $hello1 = explode(',',$number);

        $where['gm.id'] = array('in',$hello);//id在这个数组中， 
        $is_cart=M('goods_shop_meublecart')->where("meubleId='{$hello}'")->find();
      
        if(empty($is_cart))
        {
            $cart=M('goods_meublebasic')->alias('gmc')->field('gmc.id as goodsid,gm.id as specid,gmc.*,gm.*')
            ->join('goods_meublespecifications gm ON gmc.id=gm.meubleId')->where($where)->select();
         }
        else
        {
        $cart=M('goods_meublebasic')->alias('gmc')->field('gmc.id as goodsid,gm.id as specid,gmc.*,gm.*')
        ->join('goods_meublespecifications gm ON gmc.id=gm.meubleId')->join('goods_shop_meublecart cart ON
            cart.meubleId=gm.id')->where($where)->order('cart.addTime desc')->select();
            
        } 
       
        foreach ($cart as $k =>$v)
        {
           
           $cart[$k]['son']=$hello1[$k];
          
           //购买的总件数
           $znumber +=$hello1[$k];
           
           //购买的总价格
           if($v['isNotTeJia']==1||$v['isNotActif']==1)
           {
               $sumprice +=$v['meubleActifPrix']*$hello1[$k];  
           }
           else
           {
               $sumprice +=$v['meublePrix']*$hello1[$k];
           }
           
        } 
        //调取邮费
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."order/postage";

        $str1="{'specNums':[";
         
        foreach ($cart as $k=> $v) {
             if($k==count($cart)-1)
             {
                 $str1.="{'id':'{$cart[$k]['id']}','num':'{$cart[$k]['son']}'}],";
             }
             else 
             {
                 $str1.="{'id':'{$cart[$k]['id']}','num':'{$cart[$k]['son']}'},";
                 
             }
        }
        $str1.="'addressId':'{$data['id']}',";
        $str1.="'userToken':'{$_SESSION['token']}'}";
         
        $str3=urlencode($str1);
        $data1 =curl_get($url."?pdtoStr=".$str3);
        $res=json_decode(object_array($data1),true);//返回邮费
        $this->assign('res',$res);
         $Model =new Model();
         $sql = "SELECT ti.`id` AS couponid , ti.reserve1 as chanshu,ti.*,uth.* FROM  ticket_info  ti JOIN user_ticket_had uth ON ti.`id`=uth.`ticketId` 
             WHERE userId='{$userid}' AND utiliser=1 AND  isNotRejeter=1 AND ticketType=2";
         $coupon1 = $Model->query($sql);
         $sql1 = "SELECT ti.`id` AS couponid, ti.reserve1 as chanshu ,ti.*,uth.* FROM  ticket_info  ti JOIN user_ticket_had uth ON ti.`id`=uth.`ticketId`
         WHERE userId='{$userid}' AND utiliser=1 AND  isNotRejeter=1 AND ticketType=1";
         $coupon = $Model->query($sql1);
         $this->assign('coupon1',$coupon1);//折扣券
         $this->assign('coupon',$coupon);//满减券
         $this->assign('volist',$cart);
         $this->assign('znumber',$znumber);
         $this->assign('sumprice',$sumprice);
         $this->display(); 
    }
    /*商品分类*/
    public function classify()
    {
        //搜索展示
        $goodsname=M('goods_meublebasic')->limit(9)->select();
        $this->assign('goodname',$goodsname);
        header("Content-type: text/html; charset=utf-8");
        $Model =new Model();
        $sql = "select * from `goods_meubletype` where typeId='0' order by addTime asc limit 0,1";
        $voList = $Model->query($sql);
       
         $onecate=M('goods_meubletype')->where("typeId='0'")->order('addTime asc')->select();
        $this->assign('onecate',$onecate);
        foreach ($voList as $k=>$v)
        {
           
           $voList[$k]['son']=M('goods_meubletype')->where(array('typeId'=>$v['id']))->order('addTime  asc')->select();
           
          //  foreach ($voList[$k]['son'] as $kk=>$vo)
           // {
               
                $voList[$k]['son'][$kk]['son1']=M('goods_meubletype')->where(array('typeId'=>'b1b1'))->order('addTime asc')->select();   
           // }
            
        } 
        $this->assign('onecategory',$voList);
        $sql1 = "select * from `goods_meubletype` where typeId='0' order by addTime asc limit 1,2 ";
        $voList1 = $Model->query($sql1);
         
        foreach ($voList1 as $k1=>$v1)
        {
             
                  $voList1[$k1]['son']=M('goods_meubletype')->where(array('typeId'=>$v1['id']))->order('addTime asc')->select();
             
				  $voList1[$k1]['sum']=M('goods_meublebasictype')->where("classify2='2323'")->select();
				 foreach($voList1[$k1]['sum'] as $f=>$t)
				 {
					$voList1[$k1]['sum'][$f]['sonn']=M('goods_meublebasic')->alias('gm')->field('reserve1 as productid,gm.*')->where("environType=2 and id='{$t['basicId']}'")->order('imaginerNumber desc')->limit(6)->select();
				    foreach($voList1[$k1]['sum'][$f]['sonn'] as $u=>$p)
					{
						$voList1[$k1]['sum'][$f]['sonn'][$u]['ionic']=M('goods_meublespecifications')->where(array('meubleId'=>$p['id']))->order('addTime asc')->limit(1)->getField('meublePrix');
					}
				 }
				  
			
        
            
        }
		//var_dump($voList1);
        $this->assign('onecategory1',$voList1);
        $this->display();
    }
	   /*活动列表*/
    public function activity()
    {
       
        header("Content-type: text/html; charset=utf-8");
        
       // $goodlist=M('goods_meublebasic')->alias('gm')->field('reserve1 as productid,gm.*')->where('gm.isNotActif=1')->order('gm.addtime desc')->select();
		$activitygoods=M('goods_meublebasic')->where(array('isNotActif'=>1))->select();
		//var_dump($activitygoods);
        $this->assign('activity',$activitygoods);
        $this->display();
    }

	    //替换页面内容
    public function cateAjax(){
        if (IS_AJAX){
            $category_id = I('post.category_id');
            $voList=M('goods_meubletype')->where(array('id'=>$category_id))->order('addTime  asc')->select();
           
            foreach ($voList as $k=>$v)
            {
				 $v[$k]['url1'] = U('Good/goodList',array('categoryid1'=>$v['id']));
                $str='';
                $str="<div class='col-xs-12 padd_0 list'>
                
                <div class='col-xs-12 pad-up16' style='margin-top:20px'>
               <a href='{$v[$k]['url1']}'><img class='img-responsive' src='{$v['typeImage']}'  /></a>
                </div>
                 
                <div class='col-xs-12 mar-b20'>
                <span class='font15'>{$v['typeName']}</span>
				<a href='{$v[$k]['url1']}'><button type='button' class='mybtn font12 color-669900 pull-right'> 更多</button></a>
				</div><div class='col-xs-12 padd_0'>";
                $voList[$k]['son1']=M('goods_meubletype')->where(array('typeId'=>$v['id']))->order('addTime asc')->select();
                foreach ($voList[$k]['son1'] as $k1=>$v1)
                {
                $voList[$k1]['url'] = U('Good/goodList',array('categoryid'=>$v1['id']));
                    
                 $str .="<div class='col-xs-4'>
                    <a href='{$voList[$k1]['url']}'><img class='img-responsive' src='{$v1['typeImage']}' /></a>
                    <p class='color-333 font12 text-center mar-t10'>{$v1['typeName']}</p>
                    </div>";
                }
                
            }
            echo $str." </div></div>";
        }
    }
	public function cateAjax1(){
        if (IS_AJAX){
            $category_id = I('post.category_id');
            $category=M('goods_meublebasictype')->where("classify2='{$category_id}'")->select();
			 $str=''; 
				 $str="<div class='col-xs-12 padd_0 list' style='margin-top:20px'><div class='col-xs-12 padd_0'>";
			foreach($category as $k1=>$v1)
			{
				//$where['id']=$v1['basicId'];
				//var_dump($v['basicId']);
		        //$where['environType']=2;
                $category[$k1]['sum']=M('goods_meublebasic')->alias('gm')->field('reserve1 as productid,gm.*')->where("environType=2 and id='{$v1['basicId']}'")->order('imaginerNumber desc')->limit(2)->select();
				
				
				
            foreach ($category[$k1]['sum'] as $k=>$v)
            {
				
		
		
			$category[$k1]['sum'][$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->getField('meublePrix');
			//var_dump($category[$k1]['sum'][$k]['son']);
				
	
				    // var_dump($v);
				  $category[$k1]['sum'][$k]['url'] = U('good/gooddetail',array('goodsid'=>$v['id']));
                  
                 $str .="	<div class='col-xs-6'>
								<a  href='{$category[$k1]['sum'][$k]['url']}' style='color:#000000;overflow: hidden; width: 90%; height: 30px; position: relative;'>
								<img class='img-responsive' src='{$v['meubleImage']}' />
								<p class='color-333 font12 text-center mar-t10 mar-t5 mar-b5 heightControl-1'>{$v['meubleName']}</p>
								<p class='font14 color-ff5b01 text-center'>￥{$category[$k1]['sum'][$k]['son']}</p>
								</a>
							</div>";
               
                
            }
           
			}
			 echo $str."</div>
					</div>";
				
				
			
        }
    }
    /*商品列表*/
    public function goodlist()
    {
            $category_id = I('get.categoryid');//三级分类
			$category_id1 = I('get.categoryid1');//二级分类
             
            $like = I('get.search');

            $sea = I('get.sea');
            
            $new=I('get.new');
            $tejia=I('get.tejia');
            $tuijian=I('get.tuijian');
            $huodong=I('get.huodong');
            if (!empty($sea))
            {
                $where['gmenvironType']=2;
                $where['gm.meubleName'] = array('like',"%{$sea}%");
        
           
            }
            if (!empty($category_id))
            {
               
              
				$where['gms.classify3'] = array('like',"%{$category_id}%");
                
       

            }
			if (!empty($category_id1))
            {
               
              
				$where['gms.classify2'] = array('like',"%{$category_id1}%");
                //$category=M('goods_meublebasictype')->where($where1)->select();
				//foreach($category as $k=>$v)
				//{
				//	  $where['environType']=2;
				//	  $where['gm.id']=$v['basicId'];
                  //    $goodslist=M('goods_meublebasic')->alias('gm')->field('gm.reserve1 as productid,gm.*')->join('goods_meublebasictype gms ON gms.basicId=gm.id')->where($where)->limit(5)->select();
				//	  $this->assign('list',$goodslist);
				//}
				
        
            }
            if (!empty($like))
            {
                $where['gm.environType']=2;
                $where['gm.meubleName'] = array('like',"%{$like}%");
             
                 
            }
            if (!empty($new))
            {
                $where['gm.environType']=2;
                $where['gm.isNotNew'] = array('like',"%{$new}%");
           
            }
            if (!empty($tejia))
            {
                $where['gm.environType']=2;
                $where['gm.isNotTeJia'] = array('like',"%{$tejia}%");
            
                 
            }
            if (!empty($huodong))
            {
                $where['gm.environType']=2;
                $where['gm.isNotActif'] = array('like',"%{$huodong}%");
            
            }
            if (!empty($tuijian))
            {
                $where['gm.environType']=2;
                $where['gm.isNotPreface'] = array('like',"%{$tuijian}%");
        
            }
              
       
        header("Content-type: text/html; charset=utf-8");
        //全部商品
      
		$where['gm.environType']=2;
		   $goodslist=M('goods_meublebasic')->alias('gm')->field('gm.reserve1 as productid,gm.*')->join('goods_meublebasictype gms ON gms.basicId=gm.id')->where($where)->select();
		   foreach($goodslist as $k=>$v)
		{
		
			$goodslist[$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->select();
			
				
		}
      //  $goodslist=M('goods_meublebasic')->alias('gm')->field('reserve1 as productid,gm.*')->limit(5)->select();
        $this->assign('list',$goodslist);
        
        //销量商品
		$goodssale=M('goods_meublebasic')->alias('gm')->field('gm.reserve1 as productid,gm.*')->join('goods_meublebasictype gms ON gms.basicId=gm.id')->where($where)->order('gm.imaginerNumber desc')->select();
		  foreach($goodssale as $k=>$v)
		{
		
			$goodssale[$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->select();
			
				
		}
        //$goodssale=M('goods_meublebasic')->alias('gm')->field('reserve1 as productid,gm.*')->order('imaginerNumber desc')->limit(15)->select();
        //var_dump($goodssale);
        $this->assign('sale',$goodssale);
        
        //新品
		$where['gm.isNotNew']=1;
		$goodsnew=M('goods_meublebasic')->alias('gm')->field('gm.reserve1 as productid,gm.*')->join('goods_meublebasictype gms ON gms.basicId=gm.id')->where($where)->order('gm.addtime desc')->select();
		  foreach($goodsnew as $k=>$v)
		{
		
			$goodsnew[$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->select();
			
				
		}
       // $goodsnew=M('goods_meublebasic')->alias('gm')->field('reserve1 as productid,gm.*')->where('isNotNew=1')->order('gm.addtime desc')->limit(15)->select();
       // var_dump($goodsnew);
        $this->assign('new',$goodsnew);
        $this->display();
    }
	
    /*  分页加载全部数据*/
    public function getauto2()
    {
        
          $page = I('post.page'); //获取请求的页数
          $start = $page*15;
          $where['gm.environType']=2;
          $data=M('goods_meublebasic')->alias('gm')->field('gm.reserve1 as productid,gm.*')->where($where)->order('gm.imaginerNumber desc')->limit($start,15)->select();
       
        echo json_encode($data);  //转换为json数据输出
        
         
       
    }
	 public function getauto()
    {
        
          $page = I('post.page'); //获取请求的页数
          $start = $page*15;
          $where['gm.environType']=2;
          $data=M('goods_meublebasic')->alias('gm')->field('gm.reserve1 as productid,gm.*')->where($where)->limit($start,15)->select();
       
        echo json_encode($data);  //转换为json数据输出
        
         
       
    }
     public function getauto1()
    {
        
          $page = I('post.page'); //获取请求的页数
          $start = $page*15;
          $where['gm.environType']=2;
		  $where['gm.isNotNew']=1;
          $data=M('goods_meublebasic')->alias('gm')->field('gm.reserve1 as productid,gm.*')->where($where)->order('gm.addtime desc')->limit($start,15)->select();
       
        echo json_encode($data);  //转换为json数据输出
        
         
       
    }
    /*购物车*/
    public function cart()
    {
        $userid=$_SESSION['userid'];
        /* if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        } */
        $cartlist=M('goods_shop_meublecart')->alias('cart')->field('cart.id as cartid,gmc.id as goodsid,cart.meubleNumber,gm.id as specid, gm.*,gmc.*')
        ->join('goods_meublespecifications gm ON gm.id=cart.meubleId')
        ->join('goods_meublebasic gmc ON gm.meubleId=gmc.id')
        ->where("cart.userId='{$userid}'")->order('cart.addTime desc')->select();
  
        $this->assign('cartlist',$cartlist);
         if(IS_AJAX)
         {
             $specid=$_POST['id'];
             $guige=M('goods_meublespecifications')->alias('gm')->field('gm.reserve1 as miaoshu,gm.id as specid, gm.*,gmc.*')
         
             ->join('goods_meublebasic gmc ON gm.meubleId=gmc.id')->where(array('gm.meubleId'=>$specid))->select();
             $this->ajaxReturn($guige);
             
         }
        $this->display();
    }
   /*加入购物车*/
    public function addcart()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."cart/add";
        $data['specId']=$_POST['id'];
       $data1 =curl_post($url, array('specId'=>$data['specId'],'userToken'=>$_SESSION['token']));
       $res=json_decode(object_array($data1),true);
        if(!empty($res))
      {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
      } 
    }
    /*修改购物车商品数量*/
    public function updategoodnumbercart()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."cart/update";
        $data['cartId']=$_POST['cartid'];
        $data['tunm']=$_POST['tunm'];
        $data1 =curl_post($url, array('cartId'=>$data['cartId'],'num'=>$data['tunm'],'userToken'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            
            
            $this->ajaxReturn($fata);
        }
    }
    /*删除购物车商品*/
    public function deletecart()
    {
        header("Content-type: text/html; charset=utf-8");
        $cartarr=str_replace('[','',$_POST['cartid']);
        $cartarr=str_replace(']','',$cartarr);
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."cart/delete";
        $data['cartIds']=$cartarr;
        $data['userToken']=$_SESSION['token'];
         $str3="{$data['cartIds']}";
       
        $str4=urlencode($str3);
        
      $data1 =curl_get($url."?cartIdsStr=".$str4."&userToken="."{$data['userToken']}");
       $res=json_decode(object_array($data1),true);
      
      if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        } 
    }
    /*生成订单*/
    public function makeorder()
    {
        
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        header("Content-type: text/html; charset=utf-8");
        $data=M('user_consignee_address')->where(array('userId'=>$userid,'reserve1'=>1,'isNotTacite'=>2))->find();
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."order/general";
        $data['specidarr']=$_POST['specidarr'];
        $data['numarr']=$_POST['numarr'];
        $data['message']=$_POST['message'];
        $data['dcoupid']=$_POST['dcoupid'];
        $data['mcoupid']=$_POST['mcoupid'];
 
        $data['specidarr']=str_replace('[','',$data['specidarr']);
        $data['specidarr']=str_replace(']','',$data['specidarr']);
        $data['specidarr']=str_replace('"','',$data['specidarr']);
        $data['numarr']=str_replace('[','',$data['numarr']);
        $data['numarr']=str_replace(']','',$data['numarr']);
        $data['numarr']=str_replace('"','',$data['numarr']);
        $hello = explode(',',$data['specidarr']);
        $hello1 = explode(',',$data['numarr']);

       $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."order/general";
        $str1="{'specNums':[";
         
        foreach ($hello as $k=> $v) {
            if($k==count($hello)-1)
            {
                $str1.="{'id':'{$hello[$k]}','num':'{$hello1[$k]}'}],";
            }
            else
            {
                $str1.="{'id':'{$hello[$k]}','num':'{$hello1[$k]}'},";
                 
            }
        }
        $str1.="'addressId':'{$data['id']}',";
        $str1.="'soustraireId':'{$data['mcoupid']}',";
        $str1.="'compenserId':'{$data['dcoupid']}',";
        $str1.="'remark':'{$_POST['message']}',";
        $str1.="'userToken':'{$_SESSION['token']}'}";
         
        $str3=urlencode($str1);
        $data1 =curl_get($url."?dtoStr=".$str3);
        $res=json_decode(object_array($data1),true);
        $this->assign('res',$res);

        if(!empty($res))
        {
           
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
                'url'=>U('user/pay',array('sumprice'=>$_POST['sumprice'],'orderId'=>$res['num'])),
            );
            $this->ajaxReturn($fata);
        }    
    }

    /*安装评价*/
    public function installcomment()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."order/comment";
        $num=$_POST['starNum'];

        $data['orderId']=$_POST['orderid'];
        $data['attitude']=$num[0];
        $data['skill']=$num[1];
        $data['onTime']=$num[2];
        $data['comment']=$_POST['remark'];

        $data1 =curl_post($url, array('orderId'=>$data['orderId'],'userToken'=>$_SESSION['token']
            ,'attitude'=>$data['attitude'],'skill'=>$data['skill'],'onTime'=>$data['onTime']
            ,'comment'=>$data['comment']
        ));
        $res=json_decode(object_array($data1),true);
     
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
                'url'=>U('user/myorder')  
            );
            $this->ajaxReturn($fata);
        }
    }
    /*确认收货*/
    public function suregood()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."order/receipt";
        $data['id']=$_POST['id'];
        
        $data1 =curl_post($url, array('orderId'=>$data['id'],'userToken'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*有损坏货运评价*/
    public function destroy()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."order/damage";
        $data['orderId']=$_POST['orderid'];
        $data['specid']=$_POST['specid'];
        $data['des']=$_POST['remark'];
        $data['images']=$_POST['image'];
        $data['images1']=$_POST['image1'];
        $data['images2']=$_POST['image2'];
        
        $data1 =curl_post($url, array('orderId'=>$data['orderId'],'ggId'=>$data['specid'],'userToken'=>$_SESSION['token']
            ,'des'=>$data['des'],'img1'=>$data['images'],'img2'=>$data['images1'],'img3'=>$data['images2']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
                'url'=>U('user/myorder')
            );
            $this->ajaxReturn($fata);
        }
    }
   

    /*退货申请ok*/
    public function applyrefund()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."order/back";
        $data['orderDetailId']=$_POST['detailid'];
        $data['cause']=$_POST['remark'];
        $data['images']=$_POST['image'];
        $data['images1']=$_POST['image1'];
        $data['images2']=$_POST['image2'];
        $data1 =curl_post($url, array('orderDetailId'=>$data['orderDetailId'],'userToken'=>$_SESSION['token']
            ,'cause'=>$data['cause'],'img1'=>$data['images'],'img2'=>$data['images1'],'img3'=>$data['images2']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
                'url'=>U('user/refund')
            );
            $this->ajaxReturn($fata);
        }
    }
    /*取消订单ok*/
    public function cancelorder()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."order/cancelOrder";
        $data['id']=$_POST['id'];
        $data1 =curl_post($url, array('id'=>$data['id'],'token'=>$_SESSION['token']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*安装派单接受*/
    public function installacceptorder()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."install/receive";
        $data['id']=$_POST['id'];
        $data1 =curl_post($url, array('id'=>$data['id'],'userToken'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*安装派单预约*/
    public function installappointmentorder()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."install/YYreserve";
        $data['orderId']=$_POST['id'];
        $data['time']=$_POST['time'];
        $data1 =curl_post($url, array('orderId'=>$data['orderId'],'time'=>$data['time'],'userToken'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*安装派单取消*/
    public function installcancelorder()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."install/cancel";
        $data['id']=$_POST['id'];
        $data1 =curl_post($url, array('id'=>$data['id'],'userToken'=>$_SESSION['token']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*货运派单接受*/
    public function goodacceptorder()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."freight/receive";
        $data['id']=$_POST['id'];
        $data1 =curl_post($url, array('id'=>$data['id'],'userToken'=>$_SESSION['token']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*货运派单预约*/
    public function goodappointmentorder()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."freight/reserve";
         $data['orderId']=$_POST['id'];
        $data['time']=$_POST['time'];
        $data1 =curl_post($url, array('orderId'=>$data['orderId'],'time'=>$data['time'],'userToken'=>$_SESSION['token']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*货运派单取消*/
    public function goodcancelorder()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."freight/cancel";
        $data['id']=$_POST['id'];
        $data['time']=$_POST['time'];
        $data1 =curl_post($url, array('id'=>$data['id'],'time'=>$data['time'],'userToken'=>$_SESSION['token']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*积分订单生成订单/兑换商品*/
    public function jifenorder()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."point/order/general";
        $data['goodsId']=$_POST['goodsId'];
        $data['num']=$_POST['num'];
        $data['addressId']=$_POST['addressId'];
        $data1 =curl_post($url, array('goodsId'=>$data['goodsId'],'num'=>$data['num'],
            'addressId'=>$data['addressId'],'userToken'=>$_SESSION['token']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*领取优惠券*/
    public function getcoupon()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."coupon/receive";
        $data['id']=$_POST['id'];
      
        $data1 =curl_post($url, array('couponId'=>$data['id']
           ,'userToken'=>$_SESSION['token']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'message'=>$res['message'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*当选择规格修改购物车价格*/
    public function updatecartprice()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."cart/editeCarGoodfacturer";
        $data['id']=$_POST['id'];
        $data['cartid']=$_POST['cartid'];
        //var_dump($data);
        $data1 =curl_post($url, array('facturerid'=>$data['id'],'id'=>$data['cartid']
            ,'userToken'=>$_SESSION['token']
        ));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'message'=>$res['message'],
            );
            $this->ajaxReturn($fata); 
        }
    }
    
   
}