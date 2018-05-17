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
class IndexController extends Controller {
    
    /*七色彩商城首页*/
    public function index(){

        header("Content-type: text/html; charset=utf-8");
        //首页banner展示
        $topbanner=M('banner_ad_info')->alias('bai')->join('banner_ad_position bad ON bad.id=bai.positionId')->where(array('bai.isNotDelete'=>1,'bai.positionId'=>1))->select();
        $this->assign('banner',$topbanner);
		//底部banner展示
        $btommbanner=M('banner_ad_info')->alias('bai')->join('banner_ad_position bad ON bad.id=bai.positionId')->where(array('bai.isNotDelete'=>1,'bai.positionId'=>2))->select();
        $this->assign('banner1',$btommbanner);
        //新品展示
        $newgoods=M('goods_meublebasic')->where(array('isNotNew'=>1,'environType'=>2))->select();
		foreach($newgoods as $k=>$v)
		{
		
			$newgoods[$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->select();
			
				
		}
	     //var_dump($newgoods);
        $this->assign('newgoods',$newgoods);
        //特价商品
		 $time1=date('Y-m-d H:i:s',time());
        $tejiagoods=M('goods_meublebasic')->where(array("isNotTeJia=1 and environType=2 and  expirationOverTime>='{$time1}' and expirationStartTime<='{$time1}'"))->select();
		foreach($tejiagoods as $k=>$v)
		{
		
			$tejiagoods[$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->select();
			
				
		}
        $this->assign('tejiagoods',$tejiagoods);
        //推荐商品
        $tuijiangoods=M('goods_meublebasic')->where(array('isNotPreface'=>1,'environType'=>2))->select();
		foreach($tuijiangoods as $k=>$v)
		{
		
			$tuijiangoods[$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->select();
			
				
		}
        $this->assign('recommend',$tuijiangoods);
        //活动商品
		
		 $time=date('Y-m-d H:i:s',time());
		
        $activitygoods=M('goods_meublebasic')->where("isNotActif=1 and environType=2 and  expirationOverTime>='{$time}' and expirationStartTime<='{$time}'")->select();
		foreach($activitygoods as $k=>$v)
		{
		
			$activitygoods[$k]['son']=M('goods_meublespecifications')->where(array('meubleId'=>$v['id']))->order('addTime asc')->limit(1)->select();
			
				
		}
		
        $this->assign('activity',$activitygoods);
        //消息展示
        $data=M('article')->select();
        $this->assign('message',$data);
		$style=M('goods_meubletype')->where(array('typeId'=>2))->order('addTime asc')->select();
		$this->assign('style',$style);
        //搜索展示
        $goodsname=M('goods_meublebasic')->select();
        $this->assign('goodname',$goodsname);
        $this->display();
    }
   public function test()
   {
       
       header("Content-type: text/html; charset=utf-8");
     
         $url="http://ditu.amap.com/service/regeo?longitude=106.55155&latitude=29.56301";
         $data1 =https_request($url);
      // var_dump($data1);
       
        $res=json_decode(object_array($data1),true);
       var_dump($res); 
      
       
       die;  
         
       
       // $res=json_decode(object_array($data1),true);
       // var_dump($res);
      //$data =curl_post("http://192.168.1.102:85/theLogin", array('account'=>13012396979,'password'=>123456));
   
      // var_dump(json_decode(object_array($data),true));
       //var_dump(phpinfo());
       /* /*  $url="http://192.168.1.102:85/theLogin";
       $ch =curl_init();
       curl_setopt($ch, CURLOPT_URL, $url);
       curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
       curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
       curl_setopt($ch, CURLOPT_TIMEOUT, 30);
       $result =curl_exec($ch);
       curl_close($ch);
       $data=json_decode($result,true);
       var_dump($data); */
     /* 
       $redis = new \Redis();
        $redis->connect('127.0.0.1', '6379'); 
       $redis->set('test','hao');
       echo $redis->get('test');    */
   }
}