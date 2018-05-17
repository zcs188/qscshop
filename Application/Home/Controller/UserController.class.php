<?php
/**
* @project 七色彩家具
* @author 钟长森
* @Datetime 2017-8-11
* @version 1.0
*/
namespace Home\Controller;
use Think\Controller;
use Home\Model;
class UserController extends Controller {
    
    /*  用户中心*/
    public function userinfo(){
        //设置浏览器输出编码格式
         header("Content-type: text/html; charset=utf-8");
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
		//查询出当前用户的个人信息
        $info=M('user_info')->where(array('id'=>$userid))->find();
		//查询当前用户类型
        $infotype=M('user_account')->where(array('id'=>$userid))->find();
        $this->assign('userinfo',$info);
        $this->assign('infotype',$infotype);
        
		 /* 待付款*/
        $dmoneynumber=M('user_member_order_info')->where(array('ordreType'=>0,'userId'=>$userid))->count();
		 /* 待收货*/
        $dgoodnumber=M('user_member_order_info')->where("ordreType >=1 and ordreType <=5 and userId='{$userid}'")->count();
         /*待评价*/
		$dcommentnumber=M('user_member_order_info')->where("ordreType =6   and userId='{$userid}'")->count();
        
		 /* 退货售后*/
        $refundnumber=M('user_meubleorder_return')->alias('umr')->join('user_meubleorder_details umd ON umd.id=umr.valueTexts')
        ->join('user_member_order_info umi ON umi.id=umr.orderId')
        ->where(array('umi.userId'=>$userid))->count();
		
		
      
        //这里的type用于判断安装工人和货运师傅(5为货运师傅,6为安装工人)
        $type=M('user_account')->where(array('id'=>$userid))->find();
		if($type=6)
		{
	     $where['freightOrdreId']=$userid;
         $where['returnType']=1;
		 	$where['isNotType']=1;
        $installlist=M('installer_listedes')->where($where)->order('createTime desc')->select();
       
	        //统计当前安装工人的未接受的派单
			$this->assign('giyun1',count($installlist));
		}
		if($type=5)
		{
			 $where['freightOrdreId']=$userid;
        $where['returnType']=1;
		$where['isNotType']=1;
        $goodmangelist=M('installer_freightordre')->where($where)->order('createTime desc')->select();
       
        
         //统计当前货运师傅的未接受的派单
		$this->assign('giyun',count($goodmangelist));
		}
       
       
        $this->assign('dmoneynumber',$dmoneynumber);
        $this->assign('dgoodnumber',$dgoodnumber);
        $this->assign('dcommentnumber',$dcommentnumber);
        $this->assign('refundnumber',$refundnumber);
        $this->display();
    }
    /*  登录*/
    public function login(){
        
       header("Access-Control-Allow-Origin:*");
        $this->display();
    }
    /*  登录处理*/
    public function dologin()
    {   
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."theLogin";
        $data['account']=$_POST['account'];
        $data['password']=$_POST['password'];
        $data1 =curl_post($url, array('account'=>$data['account'],'password'=>$data['password']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $_SESSION['userid']=$res['userInfo']['id'];
            $_SESSION['token']=$res['loginToken'];
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
                'url'=>U('index/index')
            );
          $this->ajaxReturn($fata); 
        }
     
        
    }
//  获取code
    public function getweixincode()
    {
        $appid="wx4113125cf12116f8";
        $REDIRECT_URI="http://www.7secai.cn/index.php/home/user/weixin4";
        $huidiao=urlencode($REDIRECT_URI);
        $scope="snsapi_userinfo";
        $state ="getcouponcenter";
        $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$huidiao."&response_type=code&scope=".$scope."&state=".$state."#wechat_redirect";
          var_dump($url);
	  // header("location:$url");
        
    } 
    /*  微信登录处理*/
    public function weixin()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url1=$interfaceurl."chatCallBack";
        $data['state']=$_GET['state'];
        $data['code']=$_GET['code'];
		
        $appid="wx4113125cf12116f8";
        $seret="b9d4e9445ecacf6e65be98298ef5d422";
        $url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$seret."&code=".$data['code']."&grant_type=authorization_code";
        $res=https_request($url);
        $res  = json_decode($res,true);
         /*点击微信登录时先查询数据库是否存在当前微信网页授权用户的openid,若存在则重新获取微信头像昵称，反之就登陆数据库已有的*/
        $userinfo=M('user_account')->where(array('whatOpenid'=>$res['openid']))->find();
	     
       if(!empty($userinfo))
       {
		$data1 =curl_post($url1,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));   
        //$data1 =curl_get($url1."?code={$res['openid']}&state={$data['state']}&access_token={$res['access_token']}");
        $res1=json_decode(object_array($data1),true);
        
        if(!empty($res1))
        {
        
            $_SESSION['userid']=$res1['userInfo']['id'];
            $_SESSION['token']=$res1['loginToken'];
            $this->redirect('Home/index/index');
            //var_dump($res1);
        }
           
       }
       else
       {           
		     $url="https://api.weixin.qq.com/sns/userinfo?access_token=".$res['access_token']."&openid=".$res['openid']."&lang=zh_CN";
         
           $res2=https_request($url);
           $res2  = json_decode($res2,true);
		   
		     $data1 =curl_post($url1,array('code'=>$res2['openid'],'state'=>$data['state'],'nickname'=>$res2['nickname'],'sex'=>$res2['sex'],'headimgurl'=>$res2['headimgurl']));
         // $data1 =curl_get($url1."?code={$res2['openid']}&state={$data['state']}&nickname={$res2['nickname']}&sex={$res2['sex']}&headimgurl={$res2['headimgurl']}");
           $res3=json_decode(object_array($data1),true);
          
           if(!empty($res3))
           {
           
               $_SESSION['userid']=$res3['userInfo']['id'];
               $_SESSION['token']=$res3['loginToken'];
               $this->redirect('Home/index/index');
              
           }
       }
        //$data1 =curl_post($url,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));
    }
	 /*  后台微信菜单管理（微信二级菜单个人中心url链接）*/
    public function weixin1()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url1=$interfaceurl."chatCallBack";
        $data['state']=$_GET['state'];
        $data['code']=$_GET['code'];
		
        $appid="wx4113125cf12116f8";
        $seret="b9d4e9445ecacf6e65be98298ef5d422";
        $url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$seret."&code=".$data['code']."&grant_type=authorization_code";
        $res=https_request($url);
        $res  = json_decode($res,true);

        $userinfo=M('user_account')->where(array('whatOpenid'=>$res['openid']))->find();
	     
       if(!empty($userinfo))
       {
		$data1 =curl_post($url1,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));   
        //$data1 =curl_get($url1."?code={$res['openid']}&state={$data['state']}&access_token={$res['access_token']}");
        $res1=json_decode(object_array($data1),true);
        
        if(!empty($res1))
        {
        
            $_SESSION['userid']=$res1['userInfo']['id'];
            $_SESSION['token']=$res1['loginToken'];
            $this->redirect('Home/user/userinfo');
            //var_dump($res1);
        }
           
       }
       else
       {           
		     $url="https://api.weixin.qq.com/sns/userinfo?access_token=".$res['access_token']."&openid=".$res['openid']."&lang=zh_CN";
         
           $res2=https_request($url);
           $res2  = json_decode($res2,true);
		   
		     $data1 =curl_post($url1,array('code'=>$res2['openid'],'state'=>$data['state'],'nickname'=>$res2['nickname'],'sex'=>$res2['sex'],'headimgurl'=>$res2['headimgurl']));
         // $data1 =curl_get($url1."?code={$res2['openid']}&state={$data['state']}&nickname={$res2['nickname']}&sex={$res2['sex']}&headimgurl={$res2['headimgurl']}");
           $res3=json_decode(object_array($data1),true);
          
           if(!empty($res3))
           {
           
               $_SESSION['userid']=$res3['userInfo']['id'];
               $_SESSION['token']=$res3['loginToken'];
               $this->redirect('Home/user/userinfo');
              
           }
       }
        //$data1 =curl_post($url,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));
    }
	 /*  后台微信菜单管理（微信二级菜单绑定手机url链接）*/
    public function weixin2()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url1=$interfaceurl."chatCallBack";
        $data['state']=$_GET['state'];
        $data['code']=$_GET['code'];
		
        $appid="wx4113125cf12116f8";
        $seret="b9d4e9445ecacf6e65be98298ef5d422";
        $url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$seret."&code=".$data['code']."&grant_type=authorization_code";
        $res=https_request($url);
        $res  = json_decode($res,true);

        $userinfo=M('user_account')->where(array('whatOpenid'=>$res['openid']))->find();
	     
       if(!empty($userinfo))
       {
		$data1 =curl_post($url1,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));   
        //$data1 =curl_get($url1."?code={$res['openid']}&state={$data['state']}&access_token={$res['access_token']}");
        $res1=json_decode(object_array($data1),true);
        
        if(!empty($res1))
        {
        
            $_SESSION['userid']=$res1['userInfo']['id'];
            $_SESSION['token']=$res1['loginToken'];
            $this->redirect('Home/user/bindphone');
            //var_dump($res1);
        }
           
       }
       else
       {           
		     $url="https://api.weixin.qq.com/sns/userinfo?access_token=".$res['access_token']."&openid=".$res['openid']."&lang=zh_CN";
         
           $res2=https_request($url);
           $res2  = json_decode($res2,true);
		   
		     $data1 =curl_post($url1,array('code'=>$res2['openid'],'state'=>$data['state'],'nickname'=>$res2['nickname'],'sex'=>$res2['sex'],'headimgurl'=>$res2['headimgurl']));
         // $data1 =curl_get($url1."?code={$res2['openid']}&state={$data['state']}&nickname={$res2['nickname']}&sex={$res2['sex']}&headimgurl={$res2['headimgurl']}");
           $res3=json_decode(object_array($data1),true);
          
           if(!empty($res3))
           {
           
               $_SESSION['userid']=$res3['userInfo']['id'];
               $_SESSION['token']=$res3['loginToken'];
               $this->redirect('Home/user/bindphone');
              
           }
       }
        //$data1 =curl_post($url,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));
    }
	 /*  后台微信菜单管理（微信二级菜单限时抢购url链接）*/
    public function weixin3()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url1=$interfaceurl."chatCallBack";
        $data['state']=$_GET['state'];
        $data['code']=$_GET['code'];
		
        $appid="wx4113125cf12116f8";
        $seret="b9d4e9445ecacf6e65be98298ef5d422";
        $url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$seret."&code=".$data['code']."&grant_type=authorization_code";
        $res=https_request($url);
        $res  = json_decode($res,true);

        $userinfo=M('user_account')->where(array('whatOpenid'=>$res['openid']))->find();
	     
       if(!empty($userinfo))
       {
		$data1 =curl_post($url1,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));   
        //$data1 =curl_get($url1."?code={$res['openid']}&state={$data['state']}&access_token={$res['access_token']}");
        $res1=json_decode(object_array($data1),true);
        
        if(!empty($res1))
        {
        
            $_SESSION['userid']=$res1['userInfo']['id'];
            $_SESSION['token']=$res1['loginToken'];
            $this->redirect('Home/good/activity');
            //var_dump($res1);
        }
           
       }
       else
       {           
		     $url="https://api.weixin.qq.com/sns/userinfo?access_token=".$res['access_token']."&openid=".$res['openid']."&lang=zh_CN";
         
           $res2=https_request($url);
           $res2  = json_decode($res2,true);
		   
		     $data1 =curl_post($url1,array('code'=>$res2['openid'],'state'=>$data['state'],'nickname'=>$res2['nickname'],'sex'=>$res2['sex'],'headimgurl'=>$res2['headimgurl']));
         // $data1 =curl_get($url1."?code={$res2['openid']}&state={$data['state']}&nickname={$res2['nickname']}&sex={$res2['sex']}&headimgurl={$res2['headimgurl']}");
           $res3=json_decode(object_array($data1),true);
          
           if(!empty($res3))
           {
           
               $_SESSION['userid']=$res3['userInfo']['id'];
               $_SESSION['token']=$res3['loginToken'];
               $this->redirect('Home/good/activity');
              
           }
       }
        //$data1 =curl_post($url,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));
    }
	 /*  后台微信菜单管理（微信二级菜单领券中心url链接）*/
    public function weixin4()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url1=$interfaceurl."chatCallBack";
        $data['state']=$_GET['state'];
        $data['code']=$_GET['code'];
		
        $appid="wx4113125cf12116f8";
        $seret="b9d4e9445ecacf6e65be98298ef5d422";
        $url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$seret."&code=".$data['code']."&grant_type=authorization_code";
        $res=https_request($url);
        $res  = json_decode($res,true);

        $userinfo=M('user_account')->where(array('whatOpenid'=>$res['openid']))->find();
	     
       if(!empty($userinfo))
       {
		$data1 =curl_post($url1,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));   
        //$data1 =curl_get($url1."?code={$res['openid']}&state={$data['state']}&access_token={$res['access_token']}");
        $res1=json_decode(object_array($data1),true);
        
        if(!empty($res1))
        {
        
            $_SESSION['userid']=$res1['userInfo']['id'];
            $_SESSION['token']=$res1['loginToken'];
            $this->redirect('Home/user/getcouponcenter');
            //var_dump($res1);
        }
           
       }
       else
       {           
		     $url="https://api.weixin.qq.com/sns/userinfo?access_token=".$res['access_token']."&openid=".$res['openid']."&lang=zh_CN";
         
           $res2=https_request($url);
           $res2  = json_decode($res2,true);
		   
		     $data1 =curl_post($url1,array('code'=>$res2['openid'],'state'=>$data['state'],'nickname'=>$res2['nickname'],'sex'=>$res2['sex'],'headimgurl'=>$res2['headimgurl']));
         // $data1 =curl_get($url1."?code={$res2['openid']}&state={$data['state']}&nickname={$res2['nickname']}&sex={$res2['sex']}&headimgurl={$res2['headimgurl']}");
           $res3=json_decode(object_array($data1),true);
          
           if(!empty($res3))
           {
           
               $_SESSION['userid']=$res3['userInfo']['id'];
               $_SESSION['token']=$res3['loginToken'];
               $this->redirect('Home/user/getcouponcenter');
              
           }
       }
        //$data1 =curl_post($url,array('code'=>$res['openid'],'state'=>$data['state'],'access_token'=>$res['access_token']));
    }
    /*  普通用户注册*/
    public function register()
    {

        $this->display();
    }
    /*  获取短信验证码*/
    public function getcode()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."sendphone";
        $data['phone']=$_POST['phone'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'type'=>1));
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
   
    /*  检验短信验证码普通用户页面*/
    public function checkcode()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."sendphonever";
        $data['phone']=$_POST['phone'];
        $data['code']=$_POST['code'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'verification'=>$data['code']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
                'url'=>U('user/register1',array('phone'=>$data['phone'],'code'=>$data['code']))
                 
            );
            $this->ajaxReturn($fata);
        }
    }
    
    /*  检验短信验证码售后注册页面暂时没用它*/
    public function checkcode1()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."sendphonever";
        $data['phone']=$_POST['phone'];
        $data['code']=$_POST['code'];
        $data['type']=$_POST['type'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'verification'=>$data['code']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
                'url'=>U('user/sellregister1',array('phone'=>$data['phone'],'type'=>$data['type'],'code'=>$data['code']))
                 
            );
            $this->ajaxReturn($fata);
        }
    }   
    /*  检验短信验证码合伙人注册页面暂时没用它*/
    public function checkcode3()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."sendphonever";
        $data['phone']=$_POST['phone'];
        $data['code']=$_POST['code'];
        $data['type']=$_POST['type'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'verification'=>$data['code']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
                'url'=>U('user/partnerreg1',array('phone'=>$data['phone'],'type'=>$data['type'],'code'=>$data['code']))
                 
            );
            $this->ajaxReturn($fata);
        }
    }
    /*  检验短信验证码找回密码页面*/
    public function checkcode2()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."sendphonever";
        $data['phone']=$_POST['phone'];
        $data['code']=$_POST['code'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'verification'=>$data['code']));
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

    /*  活动规则(销售额度)*/
    public function activityrule()
    {
		$lc=M('textevlues')->where(array('id'=>8))->limit(1)->getField('texteVlue');
		$this->assign('lc',$lc);
        $this->display();
    }
	 /*  活动规则(推荐排名)*/
    public function activityrule1()
    {
		$lc=M('textevlues')->where(array('id'=>14))->limit(1)->getField('texteVlue');
		$this->assign('lc',$lc);
        $this->display();
    }
	 /*  活动规则(我的推广)*/
    public function activityrule2()
    {
		$lc=M('textevlues')->where(array('id'=>15))->limit(1)->getField('texteVlue');
		$this->assign('lc',$lc);
        $this->display();
    }
    /*  收货地址列表*/
    public function address()
    {
        $specid =  I('get.specid');//规格  ID
        $number=  I('get.number');//规格  ID
        if (!empty($specid)&&!empty($number))
        {
            $_SESSION['specid'] = $specid;
            $_SESSION['number']=$number;
        }
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $data=M('user_consignee_address')->order("isNotTacite  DESC")->where(array('userId'=>$userid,'reserve1'=>1))->select();
        foreach($data as $k=>$v)
        {   
            $data[$k]['province']=M('tb_da_area')->where(array('codeid'=>$v['provinceId']))->getField('cityName');
            $data[$k]['city']=M('tb_da_area')->where(array('codeid'=>$v['marcheId']))->getField('cityName');
            $data[$k]['area']=M('tb_da_area')->where(array('codeid'=>$v['districtId']))->getField('cityName');
        }
            
        $this->assign('userinfo',$data);
        $this->display();
    }
    /*  添加收货地址*/
    public function addressadd()
    {
        header("Content-type: text/html; charset=utf-8");
        $province=M('tb_da_area')->where(array('parentid'=>0,'cityName'=>'重庆'))->select();
        $this->assign('province',$province);
        $this->display();
    }
    /* 添加收货地址处理 */
    public function doaddressadd()
    {   
	    
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."address/addOK";
        $data['userName']=$_POST['username'];
        $data['provinceId']=$_POST['province'];
        $data['marcheId']=$_POST['city'];
        $data['districtId']=$_POST['district'];
        $data['adresse']=$_POST['detailaddress'];
        $data['userPhone']=$_POST['phone'];
		if(!empty($_POST['is_default']))
		{
		  $data['isNotTacite']=$_POST['is_default'];
		}
		else
		{
			
			$data['isNotTacite']=1;
			
		}
		
        $data1 =curl_post($url, 
        array('userName'=>$data['userName'],'token'=>$_SESSION['token'],'provinceId'=>$data['provinceId']
              ,'marcheId'=>$data['marcheId'],'districtId'=>$data['districtId'],'adresse'=>$data['adresse']
              ,'userPhone'=>$data['userPhone'],'isNotTacite'=>$data['isNotTacite']));
        $res=json_decode(object_array($data1),true);
          
       
       if (!empty($_SESSION['specid'])&&!empty($_SESSION['number']))
        {
            $url="/index.php/Home/good/ordersure?specid={$_SESSION['specid']}&number={$_SESSION['number']}";
           /*  var_dump($url);
            die; */
            $fata = array(
                'info' =>'200',
                'url'=>$url
            );
            $this->ajaxReturn($fata);
        }
        if(!empty($res))
        {
            $fata = array(
                'info' => $res['state'],
                'url'=>U('user/address')
            );
            $this->ajaxReturn($fata);
        }  
    }
    /*  三级联动*/
    public function getArea(){
        $where['parentid']=$_REQUEST['province'];
   /*      $where['cityName']='重庆市辖';
        $where['cityName']='重庆县辖';
        $where['cityName']='重庆县级'; */
       $area=M('tb_da_area')->where($where)->select();
      
       $this->ajaxReturn($area);
    }
    public function getArea1(){
        $where['parentid']=$_REQUEST['city'];
    
        $area=M('tb_da_area')->where($where)->select();
    
        $this->ajaxReturn($area);
    }
    /*  删除收货地址*/
    public function deleteaddress()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."address/deleInfo";
        $data['id']=$_POST['id'];
        $data1 =curl_post($url, array('id'=>$data['id'],'token'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'info' => $res['state'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*  编辑收货地址*/
    public function addressedit()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $where['id']=$_GET['id'];
        $addressone=M('user_consignee_address')->where($where)->find();
        $this->assign('editone',$addressone);
        $province=M('tb_da_area')->where(array('parentid'=>0,'cityName'=>'重庆'))->select();
        $this->assign('province',$province);
        $data=M('user_consignee_address')->where(array('userId'=>$userid,'reserve1'=>1))->find();
        $this->assign('provinceId',$data['provinceId']);
        $this->assign('marcheId',$data['marcheId']);
        $this->assign('districtId',$data['districtId']);
        $province1=M('tb_da_area')->where(array('codeid'=>$data['provinceId']))->getField('cityName');
        $city=M('tb_da_area')->where(array('codeid'=>$data['marcheId']))->getField('cityName');
        $area=M('tb_da_area')->where(array('codeid'=>$data['districtId']))->getField('cityName');
 
        $this->assign('province1',$province1);
        $this->assign('city',$city);
        $this->assign('area',$area);
        $this->assign('id',$_GET['id']);
        $this->display();
    }
    /* 编辑收货地址处理 */
    public function doaddressedit()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."address/editeOK";
        $data['userName']=$_POST['username'];
        $data['provinceId']=$_POST['province'];
        $data['marcheId']=$_POST['city'];
        $data['districtId']=$_POST['district'];
        $data['adresse']=$_POST['detailaddress'];
        $data['userPhone']=$_POST['phone'];
			if(!empty($_POST['is_default']))
		{
		  $data['isNotTacite']=$_POST['is_default'];
		}
		else
		{
			
			$data['isNotTacite']=1;
			
		}
        
        $data['id']=$_POST['id'];
        $data1 =curl_post($url,
            array('userName'=>$data['userName'],'token'=>$_SESSION['token'],'provinceId'=>$data['provinceId']
                ,'marcheId'=>$data['marcheId'],'districtId'=>$data['districtId'],'adresse'=>$data['adresse']
                ,'userPhone'=>$data['userPhone'],'isNotTacite'=>$data['isNotTacite'],'id'=>$data['id']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'info' => $res['state'],
                'url'=>U('user/address')
            );
            $this->ajaxReturn($fata);
        }
    }
    /* 设为默认地址 */
    public function setdefault()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."address/editeStypeDefaule";
        $data['id']=$_POST['id'];
        $data1 =curl_post($url, array('id'=>$data['id'],'token'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
		if (!empty($_SESSION['specid'])&&!empty($_SESSION['number']))
        {
            $url="/index.php/Home/good/ordersure?specid={$_SESSION['specid']}&number={$_SESSION['number']}";
            /*  var_dump($url);
             die; */
            $fata = array(
                'info' =>'201',
                'url'=>$url
            );
            $this->ajaxReturn($fata);
        }
        if(!empty($res))
        {
            $fata = array(
                'info' => $res['state'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*  申请退款*/
    public function applyrefund()
    {
          $refund=M('user_meubleorder_details')->where(array('id'=>$_GET['refundid']))->find();
          $this->assign('refund',$refund);
        
        $this->display();
    }
    /*  我的账单*/
    public function bill()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $billlist=M('user_member_order_info')->where(array('userId'=>$userid))->select();
       
        $this->assign('bill',$billlist);
        $this->display();
    }
    /*  我的优惠券*/
    public function coupon()
    {
        if(!empty($_GET['search'])&&!empty($_GET['keyword']))
        {
            $this->assign('keyword',$_GET['keyword']);
            $where['uth.utiliser'] =$_GET['search'];
        }
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $where['uth.userId']=$userid;
        $where['uth.isNotRejeter']=1;
        //$where['uth.utiliser']=1;
       // $where['ti.ticketType']=2;
        $allcoupon=M('user_ticket_had')->alias('uth')->join('ticket_info ti ON ti.id=uth.ticketId')
        ->where($where)->select();
       // var_dump($allcoupon);
       
        $wcoupon=M('user_ticket_had')->alias('uth')->join('ticket_info ti ON ti.id=uth.ticketId')
        ->where(array('uth.userId'=>$userid,'uth.isNotRejeter'=>1,'uth.utiliser'=>1,'ti.ticketType'=>2))->select();
        $dcoupon=M('user_ticket_had')->alias('uth')->join('ticket_info ti ON ti.id=uth.ticketId')
        ->where(array('uth.userId'=>$userid,'uth.isNotRejeter'=>1,'uth.utiliser'=>1,'ti.ticketType'=>1))->select();
        $this->assign('dcoupon',$dcoupon);
        $this->assign('wcoupon',$wcoupon);
        $this->assign('allcoupon',$allcoupon);
        $this->display();
    }
    /*  安装管理*/
    public function install()
    {
         header("Content-type: text/html; charset=utf-8");
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
     if (!empty($_GET['search'])&&!empty($_GET['keyword']))
        {
            $where['returnType']=$_GET['search'];
            $this->assign('keyword',$_GET['keyword']);
            //var_dump($_GET['keyword']); 
        }
    
         
        $where['freightOrdreId']=$userid;
        //$goodmangelist = $Model->query($sql1);
        $installlist=M('installer_listedes')->where($where)->order('createTime desc')->select();
        $Model =new \Think\Model();
      /*   $sql1=" SELECT * FROM `installer_listedes` WHERE freightOrdreId = '{$userid}'";
   
        $installlist = $Model->query($sql1) ; */
       foreach ($installlist as $k=>$v) {
            $sql="SELECT umoi.id AS orderId,umoi.`ordreCoter`,umoi.`name`,umoi.`phone`,
        il.`id` AS pdid,il.`createTime` AS chuanjian,gmf.norme1,gmf.norme2,il.appointmentTime,
        gmf.`reserve1` AS meubleImage,umd.`goodsName`
        FROM `installer_listedes` il ,
        `user_member_order_info` umoi ,
        `user_meubleorder_info` umi ,
        `user_meubleorder_details` umd,
        `goods_meublespecifications` gmf
        WHERE  il.`orderId` = umoi.`id`
        AND umoi.`id` = umi.`reserve1`
        AND umi.`id` = umd.`orderId`
        AND umd.`goodsTypeId` = gmf.`id`
        AND il.id = '{$v['id']}' order by il.createTime desc";
        $installlist[$k]['son'] = $Model->query($sql);
         
        foreach ($installlist as $k1=>$v1) 
        {
        $installlist[$k1]['son2'] = explode(" ", $v1['membersNameAndPhone']);
              
        }
        } 
       
        //var_dump($installlist);
       
        $this->assign('list',$installlist);
        $this->display();
    }
    /*  安装详情*/
    public function installdetail()
    {
        $Model =new \Think\Model();
       
        $sql="SELECT umoi.id AS orderId,umoi.`ordreCoter`,umoi.`name`,umoi.`phone`,
        il.`id` AS pdid,il.returnType,il.returnSumMoney,il.membersNameAndPhone,il.membersAddress 
        ,il.isNotType,gmf.norme1,gmf.norme2,
        gmf.`reserve1` AS meubleImage,umd.`goodsName`
        FROM `installer_listedes` il ,
        `user_member_order_info` umoi ,
        `user_meubleorder_info` umi ,
        `user_meubleorder_details` umd,
        `goods_meublespecifications` gmf
        WHERE  il.`orderId` = umoi.`id`
        AND umoi.`id` = umi.`reserve1`
        AND umi.`id` = umd.`orderId`
        AND umd.`goodsTypeId` = gmf.`id`
        AND il.id = '{$_GET['anzuaid']}'";
        $installdetail = $Model->query($sql);
         foreach ($installdetail as $k1=>$v1) 
        {
        $installdetail[$k1]['son2'] = explode(" ", $v1['membersNameAndPhone']);
              
        }
        $this->assign('install',$installdetail);
        $this->display();
    }
    /*  提现*/
    public function drawmoney()
    {
        $this->display();
    }
    /*  提现1*/
    public function drawmoney1()
    {
        $this->display();
    }
    /*  提现2*/
    public function drawmoney2()
    {
        $this->display();
    }
    /*  找回密码*/
    public function findpwd()
    {
        $this->display();
    }
    /*  找回密码发送验证码*/
    public function findcode()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."sendphone";
        $data['phone']=$_POST['phone'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'type'=>2));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
                 'url'=>U('user/findpwd1',array('phone'=>$data['phone'],'code'=>$res['verification']))
                 
            );
            $this->ajaxReturn($fata);
        }
    }
    /*  找回密码1*/
    public function findpwd1()
    {
        if($_GET['phone']||$_GET['code'])
        {
            $this->assign('phone',$_GET['phone']);
            $this->assign('code',$_GET['code']);
        }
        $this->display();
    }
    /*  领取优惠券中心*/
    public function getcouponcenter()
    {
        $manjiancoupon=M('ticket_info')->where(array('ticketType'=>2))->select();
        $daijincoupon=M('ticket_info')->where(array('ticketType'=>1))->select();
        
        $tuijiangoods=M('goods_meublebasic')->where(array('isNotPreface'=>1))->select();
        $this->assign('tuijiangoods',$tuijiangoods);
        $this->assign('manjian',$manjiancoupon);
        $this->assign('daijin',$daijincoupon);
        $this->display();
    }
   
    /*  货运货运审核*/
    public function goodsmangecheck()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $goodinfo=M('user_info')->where(array('id'=>$userid))->find();
        $this->assign('info',$goodinfo);
        $this->display();
    }
    /*  货运货运审核申请*/
    public function dogoodscheck()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."freight";
        $data['username']=$_POST['username'];
        $data['phone']=$_POST['phone'];
        $data['numberid']=$_POST['numberid'];
        $data['carnumber']=$_POST['carnumber'];
        $data['cartype']=$_POST['cartype'];
        $data['carlength']=$_POST['carlength'];
        $data['carweight']=$_POST['carweight'];
        $data['image']=$_POST['image'];
        $data['image1']=$_POST['image1'];
        $data['image2']=$_POST['image2'];
        $data['image3']=$_POST['image3'];
        $data1 =curl_post($url, array('realName'=>$data['username'],'phone'=>$data['phone']
            ,'identityNumber'=>$data['numberid'],'licensePlate'=>$data['carnumber'],
            'vehicleType'=>$data['cartype'],'vehicleThreeHigh'=>$data['carlength'],'vehicleHigh'=>$data['carweight']
            ,'idCardImage'=>$data['image'],'vehicleLicense'=>$data['image1']
            ,'reserve1'=>$data['image2'],'vehicleImage'=>$data['image3']
            ,'token'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
             
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
                'url'=>U('user/set')
            );
            $this->ajaxReturn($fata);
        }
    }
   
   
    /*个人信息*/
    public function information()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        } 
        $informa=M('user_info')->where(array('id'=>$userid))->find();
		$info=M('user_account')->where(array('id'=>$userid))->find();
        $this->assign('userid',$userid);
        $this->assign('informa',$informa);
		$this->assign('info',$info);
        $this->display();
    }
    /*修改个人信息*/
    public function updateinfo()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."user/editeInfo";
       
        $data['username']=$_POST['username'];
        $data['sex']=$_POST['sex'];
        $data['age']=$_POST['age'];
        $data['email']=$_POST['email'];
        $data['image']=$_POST['image'];

        $data1 =curl_post($url, array('infoName'=>$data['username'],
            'age'=>$data['age'],'sex'=>$data['sex'],'email'=>$data['email'],
            'user_image'=>$data['image'],'token'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true); 

        if(!empty($res))
        {
            $fata = array(
                'state' => $res['state'],
                'msg' => $res['msg'],
            );
            $this->ajaxReturn($fata);
        }
    }
    /*安装审核*/
    public function installcheck()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $installinfo=M('user_info')->where(array('id'=>$userid))->find();
        $this->assign('info',$installinfo);
        $this->display();
    }
    /*安装审核操作*/
    public function doinstallcheck()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."install";
        $data['username']=$_POST['username'];
        $data['phone']=$_POST['phone'];
        $data['numberid']=$_POST['numberid'];
        $data['business']=$_POST['business'];
        $data['image']=$_POST['image'];
       
      $data1 =curl_post($url, array('realName'=>$data['username'],'phone'=>$data['phone']
            ,'identityNumber'=>$data['numberid'],'idCardImage'=>$data['image'],'token'=>$_SESSION['token']));
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
   
    /*我的积分*/
    public function integral()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $info=M('user_info')->where(array('id'=>$userid))->find();
        $this->assign('info',$info);
        $jifen=M('user_finance')->where(array('id'=>$userid))->sum('totalPuntos');
       //全部
       $jifensource=M('user_finance_flowing')->where(array('userId'=>$userid))->select();
       //收入
       $jifensource1=M('user_finance_flowing')->where(array('userId'=>$userid,'sommePoids'=>1))->select();
       //支出
       $jifensource2=M('user_finance_flowing')->where(array('userId'=>$userid,'sommePoids'=>2))->select();
        $this->assign('jifen',$jifen);
        $this->assign('list',$jifensource);
        $this->assign('list1',$jifensource1);
        $this->assign('list2',$jifensource2);
        $this->display();
    }
    /*邀请好友*/
    public function invitefriends()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $usertype=M('user_account')->where(array('id'=>$userid))->getField('userType');
        $this->assign('usertype',$usertype);
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."qrcodeTo";
        $data1 =curl_get($url."?id=".$userid);
        $res=json_decode(object_array($data1),true);
      // var_dump($res);
       $this->assign('qrcode',$res['mapTo']);
        $this->display();
    }
    /*抽奖*/
    public function luck()
    {
       $this->display();   
    }
    /*消息*/
    public function message()
    {
       $data=M('article')->select();
       $this->assign('message',$data);
       $this->display();
    }
    /*消息详细*/
    public function messagedetail()
    {
        $message_id=$_GET['id'];
        $data=M('article')->where(array('id'=>$message_id))->find();
        $this->assign('messageone',$data);
        $this->display();
    }
    /*我的足迹*/
    public function myfoot()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $foot=M('browse_record')->alias('br')->field('id as footid,br.*')->where(array('userId'=>$userid))->select();

        foreach ($foot as $k=>$v)
        {
            $foot[$k]['good']=M('goods_meublebasic')->where(array('id'=>$v['goodsId']))->select();
            
        }
        //var_dump($foot);
        $this->assign('foot',$foot);
        $this->display();
    }
    /*我的礼品*/
    public function mygift()
    {
        $this->display();
    }
    /*我的订单*/
    public function myorder()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>  
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        header("Content-type: text/html; charset=utf-8");
        $Model =new \Think\Model();
        $sql = "select * from `user_member_order_info` where userId = '{$userid}'";
        $voList = $Model->query($sql);
        
        foreach ($voList as $k=>$v) 
        {
          $voList[$k]['son']=M('user_member_order_info')->alias('umoi')->field('umoi.id,umoi.ordreCoter,gm.id as specid,gm.*,umd.goodsNumber,umd.moneyGoods,umd.goodsName')
            ->join('user_meubleorder_info umo ON umoi.`id`=umo.`reserve1`')
            ->join('user_meubleorder_details umd ON umo.id=umd.orderId')
            ->join('goods_meublespecifications gm ON gm.id=umd.goodsTypeId')
            ->where("umoi.id='{$v['id']}'")->order('umoi.`addTime` desc')->select(); 
          
          foreach ($voList[$k]['son'] as $k2=>$v2)
          {

                $voList[$k]['son15'] +=$v2['moneyGoods']*$v2['goodsNumber'];
               
          }
            foreach ($voList as $k1=>$v1)
            {
                
                $voList[$k1]['son1']=M('user_member_order_info')->where(array('id'=>$v1['id']))->getField('tarifMong');
                $voList[$k1]['son3']=M('user_member_order_info')->where(array('id'=>$v1['id']))->getField('ordreType');
                $voList[$k1]['son4']=M('user_member_order_info')->where(array('id'=>$v1['id']))->getField('isNotEvaluation');
                $voList[$k1]['son5']=M('installer_listedes')->where(array('orderId'=>$v1['id']))->getField('returnType');
                $voList[$k1]['son6']=M('installer_freightordre')->where(array('orderId'=>$v1['id']))->getField('returnType');
      
                $voList[$k1]['son7']=M('installer_listedes')->where(array('orderId'=>$v1['id']))->getField('isNotType');
                $voList[$k1]['son8']=M('installer_freightordre')->where(array('orderId'=>$v1['id']))->getField('isNotType');
             
                $voList[$k1]['son10']=M('installer_freightordre')->where(array('orderId'=>$v1['id']))->getField('id');
                $arr1=$voList[$k1]['son10'];

                //货运评价处理情况
              
                $voList[$k1]['son12']=M('installer_listeestimer')->where(array('listeDesId'=>$arr1))->getField('estimerReplies');
                 
                //安装评价查看安装师傅及电话安装时间
				
                $voList[$k1]['son13']=M('installer_listedes')->where(array('orderId'=>$v1['id']))->find();
				$voList[$k1]['son15']=M('user_account')->where(array('id'=>$voList[$k1]['son13']['freightOrdreId']))->getField('acc_phone');
				$voList[$k1]['son16']=M('user_info')->where(array('id'=>$voList[$k1]['son13']['freightOrdreId']))->getField('infoName');
            }
        }
      
     //var_dump($voList);
      
        $this->assign('orderlist',$voList);//全部订单
        
        $this->display(); 
    }
    /*订单详情*/
    public function orderdetail()
    {
        $detail1=M('user_member_order_info')->alias('umoi')->field('umoi.id,umoi.ordreCoter,gm.reserve1 as image,gm.id as specid,gm.*,umoi.*,umd.goodsNumber,umd.moneyGoods,umd.goodsName')
            ->join('user_meubleorder_info umo ON umoi.`id`=umo.`reserve1`')
            ->join('user_meubleorder_details umd ON umo.id=umd.orderId')
            ->join('goods_meublespecifications gm ON gm.id=umd.goodsTypeId')
            ->where("umoi.id='{$_GET['orderid']}'")->select();
       
         foreach ($detail1 as $k =>$v)
        {
        //购买的总件数
        $sumnumber +=$v['goodsNumber'];
        //购买的总价格
        $sumprice +=$detail1[$k]['moneyGoods']*$v['goodsNumber'];
		  $detail1[$k]['son10']=M('installer_freightordre')->where(array('orderId'=>$v['id']))->getField('id');
           $arr1=$detail1[$k]['son10'];
		  $detail1[$k]['son6']=M('installer_freightordre')->where(array('orderId'=>$v['id']))->getField('returnType');
		  $detail1[$k]['son12']=M('installer_listeestimer')->where(array('listeDesId'=>$arr1))->getField('estimerReplies');
        } 
        $this->assign('sumnumber',$sumnumber);
        $this->assign('sumprice',$sumprice);
        $this->assign('detail1',$detail1);
        $detail=M('user_member_order_info')->alias('umoi')->field('umoi.id,umoi.ordreCoter,gm.reserve1 as image,gm.id as specid,gm.*,umoi.*,umd.goodsNumber,umd.moneyGoods,umd.goodsName')
        ->join('user_meubleorder_info umo ON umoi.`id`=umo.`reserve1`')
        ->join('user_meubleorder_details umd ON umo.id=umd.orderId')
        ->join('goods_meublespecifications gm ON gm.id=umd.goodsTypeId')
        ->where("umoi.id='{$_GET['orderid']}'")->find();
      
          
            $detail['son1']=M('ticket_info')->where(array('id'=>$detail['soustraireId']))->getField('compenser');
            $detail['son2']=M('ticket_info')->where(array('id'=>$detail['compenserId']))->getField('compenser');
               $csumprice=$sumprice-$detail['son1']-$detail['son2'];
               $this->assign('csumprice',$csumprice);
        $this->assign('detail',$detail);
        $this->display(); 
    }
   
    /*订单查询*/
    public function orderfind() 
    {
        header("Content-type: text/html; charset=utf-8");
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $me=M('statisticssalesquota')->where(array('acountId'=>$userid))->find();
        $list=M('user_member_order_info')->alias('umoi')->field('umoi.id,umoi.ordreCoter,gm.reserve1 as image,gm.*,umoi.*,umd.goodsNumber,umd.moneyGoods,umd.goodsName')
        ->join('user_meubleorder_info umo ON umoi.`id`=umo.`reserve1`')
        ->join('user_meubleorder_details umd ON umo.id=umd.orderId')
        ->join('goods_meublespecifications gm ON gm.id=umd.goodsTypeId')
        ->where("umoi.userId='{$me['goodsOrderId']}'")->select();
        $this->assign('list',$list);
			//我的推荐用户
		     $where1['ui.referrer_id']=$userid;
		$myrank=M('user_info')->alias('ui')->join('user_account ua ON ua.id=ui.id')->where($where1)->select();
	    $this->assign('myrank',$myrank);
		
	
        $info=M('user_account')->where(array('id'=>$userid))->getField('userType');
        $info1=M('user_ordrestatut')->where(array('userType'=>$info['userType']))->find();
       // $this->assign('list',$voList);
        $this->assign('info',$info1);
        $this->display();
    }
    /*团队管理*/
    public function teammange()
    {
       
		 if(!empty($_GET['search'])&&!empty($_GET['keyword']))
        {
            $this->assign('keyword',$_GET['keyword']);
            $monthtime=M('admin_systemconfig')->where(array('id'=>11))->find();
            $month=explode('_', $monthtime['configValue']);

            $where1['ui.creationTime'] = array('between', "{$month[0]},{$month[1]}");
            $quartertime=M('admin_systemconfig')->where(array('id'=>12))->find();
            $quarter=explode('_', $quartertime['configValue']);
            
            
            $where1['ui.creationTime'] = array('between', "{$quarter[0]},{$quarter[1]}");
        }
        header("Content-type: text/html; charset=utf-8");
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        
       // $where['s.goodsOrderId']=$userid;
      //  $voList=M('user_info')->alias('ui')->join('statisticssalesquota s ON ui.id=s.acountId')
     //   ->join('user_account  uc ON uc.id=ui.id')->join('user_ordrestatut uo ON uc.userType=uo.userType')
      //  ->where($where)->order('s.salesQuota desc')->limit(15)->select();
        
     /*    $Model =new \Think\Model();
        $sql="SELECT * FROM  user_ordrestatut uo JOIN  user_account uc ON uc.userType=uo.userType
        JOIN statisticssalesquota sa ON sa.acountId=uc.id JOIN user_info ui ON ui.id=uc.id
         where sa.goodsOrderId='{$userid}' order by  sa.salesQuota desc";
        $voList = $Model->query($sql); */
        
        
       // foreach ($voList as $k1=>$v1)
  //{
          //  $voList[$k1]['son1']=M('user_member_order_info')->where(array('userId'=>$v1['goodsOrderId']))->getField('ordreType');
        
       // }
			//我的推荐用户
		     $where1['ui.referrer_id']=$userid;
		$myrank=M('user_info')->alias('ui')->join('user_account ua ON ua.id=ui.id')->where($where1)->select();
	    $this->assign('myrank',$myrank);
		//累计推荐人数
		$ljperson=M('user_info')->where(array('referrer_id'=>$userid))->count();
         $this->assign('ljperson',$ljperson);
		 //本月新增(的公司内部销售)
		   $BeginDate2=date('Y-m-01', strtotime(date("Y-m-d")));
 
           $EndDate2=date('Y-m-d', strtotime("$BeginDate2 +1 month -1 day"));
        $where3['ui.creationTime'] = array('between', "{$BeginDate2},{$EndDate2}");
		$where3['ui.referrer_id']=$userid;
	    $where3['ua.userType']=3;
		 $dmonthperson2=M('user_info')->alias('ui')->join('user_account ua ON ua.id=ui.id')->where($where3)->count();
	
		 $this->assign('dmonthperson2',$dmonthperson2);
		//本月新增(的个人销售)
		   $BeginDate=date('Y-m-01', strtotime(date("Y-m-d")));
 
           $EndDate=date('Y-m-d', strtotime("$BeginDate +1 month -1 day"));
        $where2['ui.creationTime'] = array('between', "{$BeginDate},{$EndDate}");
		$where2['ui.referrer_id']=$userid;
	    $where2['ua.userType']=4;
		 $dmonthperson=M('user_info')->alias('ui')->join('user_account ua ON ua.id=ui.id')->where($where2)->count();
	
		 $this->assign('dmonthperson',$dmonthperson);
		 //本月新增(的客户)
		   $BeginDate1=date('Y-m-01', strtotime(date("Y-m-d")));
 
           $EndDate1=date('Y-m-d', strtotime("$BeginDate1 +1 month -1 day"));
        $where3['ui.creationTime'] = array('between', "{$BeginDate1},{$EndDate1}");
		$where3['ui.referrer_id']=$userid;
	    $where3['ua.userType']=1;
		 $dmonthperson1=M('user_info')->alias('ui')->join('user_account ua ON ua.id=ui.id')->where($where3)->count();
	
		 $this->assign('dmonthperson1',$dmonthperson1);
        $info=M('user_account')->where(array('id'=>$userid))->getField('userType');
        $info1=M('user_ordrestatut')->where(array('userType'=>$info['userType']))->find();
       // $this->assign('list',$voList);
        $this->assign('info',$info1);
        $this->display();
    }
    /*合作伙伴注册暂时没用它*/
    public function partnerreg()
    {
        $this->display();
    }
    /*合作伙伴注册1暂时没用它*/
    public function partnerreg1()
    {
     if(!empty($_GET['phone'])&&!empty($_GET['type'])&&!empty($_GET['code']))
        {
            $this->assign('phone',$_GET['phone']);
            $this->assign('type',$_GET['type']);
            $this->assign('code',$_GET['code']);
        }
        $this->display();
    }
    /*支付*/
    public function pay()
    {  
       
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        header("Content-type: text/html; charset=utf-8");
        if(!empty($_GET['sumprice'])&&!empty($_GET['orderId']))
        {
            $this->assign('sumprice',$_GET['sumprice']);
            $this->assign('orderId',$_GET['orderId']);
	
        }
       /*  if(!empty($_GET['appId'])&&!empty($_GET['timeStamp'])&&!empty($_GET['nonceStr'])&&!empty($_GET['package'])&&!empty($_GET['signType'])&&!empty($_GET['paySign']))
        {
            $this->assign('appid',$_GET['appId']);
            $this->assign('timeStamp',$_GET['timeStamp']);
			$this->assign('nonceStr',$_GET['nonceStr']);
            $this->assign('package',$_GET['package']);
			$this->assign('signType',$_GET['signType']);
            $this->assign('paySign',$_GET['paySign']);
	
        } */
        $this->display();
    }
	
     /*  微信支付授权获取openid*/
     public function getweixinopenid()
    {
		$orderid=$_GET['orderid'];
        $appid="wx4113125cf12116f8";
        $REDIRECT_URI="http://www.7secai.cn/index.php/home/user/pay1?orderid=".$orderid."";
        $huidiao=urlencode($REDIRECT_URI);
        $scope="snsapi_base";
        $state ="weixinpay";
        $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$huidiao."&response_type=code&scope=".$scope."&state=".$state."#wechat_redirect";
        header("location:$url");
    }  
    /*发起微信js支付*/
    public function pay1()
    {
        if(!empty($_GET['orderid'])&&!empty($_GET['code']))
        {
            $data['orderId']=$_GET['orderid'];
            $data['code']=$_GET['code'];
            $this->assign('orderid',$data['orderId']);
            $this->assign('code',$data['code']);
    
        }
        $this->display();
    }
    /*  生成微信预支付操作*/
    public function dopay()
    {
        header("Content-type: text/html; charset=utf-8");
      
        
        $data['orderId']=$_POST['orderid'];
        $data['code']=$_POST['code'];
		
		$appid="wx4113125cf12116f8";
        $seret="b9d4e9445ecacf6e65be98298ef5d422";
        $url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$seret."&code=".$data['code']."&grant_type=authorization_code";
        $res=https_request($url);
        $res  = json_decode($res,true);

        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url1=$interfaceurl."weixin/create_whatPay";
        $data1=curl_get($url1."?type=1&userid_token={$_SESSION['token']}&orderId={$data['orderId']}&code={$res['openid']}");
        $res2=json_decode(object_array($data1),true);
        if(!empty($res2))
      {
		$fata = array(
		    'data'=>$res2['weixinPayJsp'],
			'url'=>U('home/user/myorder')
		);
		$this->ajaxReturn($fata);
      }
    }
    /*业绩查询*/
    public function performancesearch()
    {
        
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $account=M('user_finance')->where(array('id'=>$userid))->find();
        $record=M('user_finance')->alias('uf')->join('user_finance_flowing uff ON uff.userId=uf.id')->where(array('uf.id'=>$userid))->select();
	
        $this->assign('record',$record);
        $this->assign('account',$account);
        $this->display();
    }
    /*销售管理，我的排名*/
    public function ranking()
    {
		
		 header("Content-type: text/html; charset=utf-8");
		 if(!empty($_GET['search'])&&!empty($_GET['keyword']))
        {
            $this->assign('keyword',$_GET['keyword']);
            
            $quartertime=M('admin_systemconfig')->where(array('id'=>10))->find();
            $quarter=explode('_', $quartertime['configValue']);
            // $where['s.`createTime`'] = array('between', array("{$quarter[0]}","{$quarter[1]}"));
            
            $where['s.createTime'] = array('between', "{$quarter[0]},{$quarter[1]}");
        }
        if(!empty($_GET['search1'])&&!empty($_GET['keyword1']))
        {
            $this->assign('keyword1',$_GET['keyword1']);
           
            $quartertime=M('admin_systemconfig')->where(array('id'=>12))->find();
            $quarter=explode('_', $quartertime['configValue']);
            
            
            $where2['ui.creationTime'] = array('between', "{$quarter[0]},{$quarter[1]}");
        }
        $userid=$_SESSION['userid'];

        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        
        $where['uc.userType']=4;
        $monthtime=M('admin_systemconfig')->where(array('id'=>9))->find();
        $month=explode('_', $monthtime['configValue']);
        $where['s.createTime'] = array('between', "{$month[0]},{$month[1]}");
        //1.销售额度
        //销售额度我的排名
		$merankinfo=M('user_info')->alias('ui')->join('statisticssalesquota s ON ui.id=s.acountId')->join('user_account  uc ON uc.id=ui.id')->where(array('ui.id'=>$_SESSION['userid'],'uc.userType'=>4))->find();
        //销售额度前三名
		$allrank1=M('user_info')->alias('ui')->join('statisticssalesquota s ON ui.id=s.acountId')->join('user_account  uc ON uc.id=ui.id')->where($where)->order('s.salesQuota desc')->limit(3)->select();
        //销售额度除了前三名后面名次
		   $where4['uc.userType']=4;
		    $monthtime4=M('admin_systemconfig')->where(array('id'=>9))->find();
            $month4=explode('_', $monthtime4['configValue']);
		
		   $where4['s.createTime'] = array('ELT', "{$month4[0]}");
        $allrank=M('user_info')->alias('ui')->join('statisticssalesquota s ON ui.id=s.acountId')->join('user_account  uc ON uc.id=ui.id')->where($where4)->order('s.salesQuota desc')->limit(20)->select();
        $Model =new  \Think\Model();
        $sql="SELECT acountId,salesQuota,
        (SELECT COUNT(*)+1 FROM statisticssalesquota WHERE a.salesQuota<salesQuota) AS sort 
        FROM statisticssalesquota AS a WHERE acountId='{$userid}' ORDER BY sort";
        $dangrank=$Model->query($sql);
		$sql1="SELECT SUM(salesQuota)  FROM  statisticssalesquota where  acountId='{$userid}'";
		$dangrank1=$Model->query($sql1);
        $this->assign('merrank',$merankinfo);
        $this->assign('rank',$dangrank);
		$this->assign('rank1',$dangrank1);
        $this->assign('allrank1',$allrank1);
        $this->assign('allrank',$allrank);
        
		//2.推荐排名
		//推荐排名我的排名
		     $where1['referrer_id']=$userid;
			 //$where1['userType']=4;
		$myrank=M('user_info')->where($where1)->count();
		
	    $this->assign('myrank',$myrank);
		//推荐排名前三名
		 $where2['uc.userType']=4;
		 $monthtime2=M('admin_systemconfig')->where(array('id'=>11))->find();
         $month2=explode('_', $monthtime2['configValue']);
         $where2['ui.creationTime'] = array('between', "{$month2[0]},{$month2[1]}");
          $tuijian=M('user_info')->alias('ui')->join('user_account uc ON uc.id=ui.id')->where($where2)->order('ui.creationTime desc')->limit(20)->select();
		  foreach($tuijian as $k=>$v)
		  {
			  
			 $tuijian[$k]['son']=M('user_info')->where(array('referrer_id'=>$v['id']))->count();
			
		  }
	
		  $newrank=sigcol_arrsort($tuijian,'son',SORT_DESC);
		
		  foreach($newrank as $k=>$v)
		  {
			  if($v['son']==$myrank)
			  {
				  $this->assign('berank',$k+1);
			  }
		  }
		  
		  
		   $where3['uc.userType']=4;
		    $monthtime3=M('admin_systemconfig')->where(array('id'=>11))->find();
            $month3=explode('_', $monthtime3['configValue']);
		
		   $where3['ui.creationTime'] = array('ELT', "{$month3[0]}");
		  $tuijian2=M('user_info')->alias('ui')->join('user_account uc ON uc.id=ui.id')->where($where3)->order('ui.creationTime asc')->limit(20)->select();
		
		  $monthtime6=M('admin_systemconfig')->where(array('id'=>11))->find();
           $month6=explode('_', $monthtime['configValue']);

            $where6['creationTime'] = array('between', "{$month6[0]},{$month6[1]}");
          foreach($tuijian2 as $k=>$v)
		  {
			 
			 $where6['referrer_id']=$v['id'];
			 $tuijian2[$k]['son']=M('user_info')->where($where6)->count();
			
		  }
	
		  $newrank1=sigcol_arrsort($tuijian2,'son',SORT_DESC);
		
		  foreach($newrank1 as $k=>$v)
		  {
			  if($v['son']==$myrank)
			  {
				  $this->assign('berank',$k+1);
			  }
		  }
          $this->assign('tui',$newrank);
		  $this->assign('tui1',$newrank1);
          $this->assign('count',count($newrank));
		  $this->assign('count1',count($newrank1));
         // var_dump($tuijian);
        //我的推广
        $this->display();
    }
    /*退款售后*/
    public function refund()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        header("Content-type: text/html; charset=utf-8");
        $Model =new \Think\Model();
        $sql = "select * from `user_member_order_info` where userId = '{$userid}'";
        $refundlist = $Model->query($sql);
      
        foreach ($refundlist as $k=>$v)
        {
            $sql="SELECT gm.`reserve1` AS goodimage,umd.id AS detailid,umoi.*,umi.*,umd.*,gm.*,umr.* FROM user_member_order_info umoi JOIN  user_meubleorder_info  
            umi ON umoi.`id`=umi.`reserve1` JOIN user_meubleorder_details umd  ON umd.
            orderId=umi.id JOIN goods_meublespecifications gm ON gm.id=umd.`goodsTypeId`
            LEFT JOIN user_meubleorder_return umr ON umr.valueTexts=umd.id WHERE umoi.id='{$v['id']}'";
            $refundlist[$k]['son']= $Model->query($sql);
           
         /*    $refundlist[$k]['son']=M('user_member_order_info')->alias('umoi')->field('umoi.id,umoi.ordreCoter,gm.id as specid,umd.id as detailid,gm.*,umd.goodsNumber,umd.moneyGoods,umd.goodsName')
            ->join('user_meubleorder_info umo ON umoi.`id`=umo.`reserve1`')
            ->join('user_meubleorder_details umd ON umo.id=umd.orderId')
            ->join('goods_meublespecifications gm ON gm.id=umd.goodsTypeId')
            ->join('user_meubleorder_return umr ON umr.valueTexts=umd.detailid')
            ->where("umoi.id='{$v['id']}'")->order('umoi.`addTime` desc')->select(); */
            foreach ($refundlist[$k]['son'] as $k2=>$v2)
            {
        
                $refundlist[$k]['son15'] +=$v2['moneyGoods']*$v2['goodsNumber'];
                
            }
            foreach ($refundlist as $k1=>$v1)
            {
                $refundlist[$k1]['son1']=M('user_member_order_info')->where(array('id'=>$v1['id']))->getField('tarifMong');
                $refundlist[$k1]['son3']=M('user_member_order_info')->where(array('id'=>$v1['id']))->getField('ordreType');
                
            }
        }
  
        
     
        $this->assign('refund',$refundlist);
        $this->display();
    }
    /*普通会员注册1*/
    public function register1()
    {   if(!empty($_GET['phone'])&&!empty($_GET['code']))
        {
             
        $this->assign('phone',$_GET['phone']);
        $this->assign('code',$_GET['code']);
        }
        $this->display();
    }
    /*  普通会员注册流程*/
    public function dopuregister()
    {
        
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."register";
        $data['phone']=$_POST['phone'];
        $data['code']=$_POST['code'];
        $data['password']=$_POST['password'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'password'=>$data['password'],'verification'=>$data['code'],'userType'=>1));
        $res=json_decode(object_array($data1),true);
       
        $url1=$interfaceurl."theLogin";
        $data2 =curl_post($url1, array('account'=>$data['phone'],'password'=>$data['password']));
        $res1=json_decode(object_array($data2),true);
        if(!empty($res)&&!empty($res1))
        {
            $_SESSION['userid']=$res['msg'];
            $_SESSION['token']=$res1['loginToken'];
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
                'url'=>U('index/index')
            );
            $this->ajaxReturn($fata);
        } 
    }
    /*安全中心*/
    public function safecenter()
    {
        $this->display();
    }
    /*售后人员注册暂时没用它*/
    public function sellregister()
    {   
        $this->display();
    }
    /*售后人员注册1暂时没用它*/
    public function sellregister1()
    {
        if(!empty($_GET['phone'])&&!empty($_GET['type'])&&!empty($_GET['code']))
        {
            $this->assign('phone',$_GET['phone']);
            $this->assign('type',$_GET['type']);
            $this->assign('code',$_GET['code']);
        }
        $this->display();
    }
    /*  售后人员注册操作暂时没用它*/
    public function dootherreg()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."register";
        $data['phone']=$_POST['phone'];
        $data['code']=$_POST['code'];
        $data['password']=$_POST['password'];
        $data['userType']=$_POST['type'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'password'=>$data['password'],'userType'=>$data['userType'],'verification'=>$data['code']));
        $res=json_decode(object_array($data1),true);
        $url1=$interfaceurl."theLogin";
        $data2 =curl_post($url1, array('account'=>$data['phone'],'password'=>$data['password']));
        $res1=json_decode(object_array($data2),true);
        if(!empty($res)&&!empty($res1))
        {
            $_SESSION['userid']=$res['msg'];
            $_SESSION['token']=$res1['loginToken'];
            $fata = array(
                'state'=>$res['state'],
                'msg'=>$res['msg'],
                'url'=>U('index/index')
            );
            $this->ajaxReturn($fata);
        }
    }
    /*设置*/
    public function set()
    {

        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $info=M('user_account')->where(array('id'=>$userid))->find();
        $this->assign('info',$info);
        $this->display();
    }
    /*银行卡提现*/
    public function tmoney()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $account=M('user_finance')->where(array('id'=>$userid))->find();
		$type=M('user_account')->where(array('id'=>$userid))->find();
		if($type=6)
		{
			$res=M('installer_listedes')->where(array('freightOrdreId'=>$userid))->sum('returnSumMoney');
			 $this->assign('res',$res);
		}
		if($type=5)
		{
			$res=M('installer_freightordre')->where(array('freightOrdreId'=>$userid))->sum('returnSumMoney');
			  $this->assign('res',$res);
		}
        $this->assign('account',$account);
        $this->display();
    }
    /* 银行卡提现 */
    public function applybankmoney()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."aftersales_withdrawal";
        $data['username']=$_POST['username'];
        $data['bankname']=$_POST['bankname'];
        $data['banknumber']=$_POST['banknumber'];
        $data['money']=$_POST['money'];
        $data1 =curl_post($url, array('bankName'=>$data['bankname'],'cardholder'=>$data['username']
            ,'applyMoney'=>$data['money'],'token'=>$_SESSION['token']));
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
    /*提现选择*/
    public function tmoney1()
    {
        $this->display();
    }
    /*微信提现暂时没用它*/
    public function tmoney2()
    {
        $this->display();
    }
    /*微信提现申请暂时没用它*/
    public function doweixinmoney()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."aftersales_withdrawal";
        $data['username']=$_POST['username'];
        $data['bankname']=$_POST['bankname'];
        $data['banknumber']=$_POST['banknumber'];
        $data['money']=$_POST['money'];
        $data1 =curl_post($url, array('bankName'=>$data['bankname'],'cardholder'=>$data['username']
            ,'applyMoney'=>$data['money'],'token'=>$_SESSION['token']));
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
    /*货运/安装派单评价*/
    public function goodcomment()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."install/add";
        $data['username']=$_POST['username'];
        $data['bankname']=$_POST['bankname'];
        $data['banknumber']=$_POST['banknumber'];
        $data['money']=$_POST['money'];
        $data1 =curl_post($url, array('listetype'=>$data['bankname'],'listedesid'=>$data['username']
            ,'isnotdamage'=>$data['money'],'friendlycommunication'=>$data['money'],
            'installation'=>$data['money'],'estimervlue'=>$data['money'],'token'=>$_SESSION['token']));
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
    /*提现记录*/
    public function tmoneyrecord()
    {
        
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $record=M('user_finance')->alias('uf')->join('user_finance_flowing uff ON uff.userId=uf.id')->where(array('uf.id'=>$userid))->select();
        $this->assign('record',$record);
        $this->display();
    }
    /*收入管理*/
    public function moneymange()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $account=M('user_finance')->where(array('id'=>$userid))->find();
		$type=M('user_account')->where(array('id'=>$userid))->find();
		$this->assign('info',$type);
		if($type=6)
		{
			$res=M('installer_listedes')->where(array('freightOrdreId'=>$userid,'isNotType'=>1))->sum('returnSumMoney-returnMoney');
			var_dump($res);
			 $this->assign('res1',$res);
		}
		if($type=5)
		{
			$res=M('installer_freightordre')->where(array('freightOrdreId'=>$userid,'isNotType'=>1))->sum('returnSumMoney-returnMoney');
			  $this->assign('res',$res);
		}
		
        $this->assign('account',$account);
        $this->display();
    }
   
    /*修改密码*/
    public function updatepwd()
    {
        $this->display();
    }
    /*  修改密码操作*/
    public function doupdatepwd()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."saveCenter/editePassword";
        $data['oldPassword']=$_POST['oldPassword'];
        $data['newPassword']=$_POST['newPassword'];
        $data1 =curl_post($url, array('oldPassword'=>$data['oldPassword'],'newPassword'=>$data['newPassword'],'token'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
	
        if(!empty($res))
        {
            $fata = array(
                'state' => $res['state'],
                'msg'=>$res['msg'],
               'url'=>U('user/login')
            );
            $this->ajaxReturn($fata);
        }
    }
    /*货运管理*/
    public function goodyun()
    {
        header("Content-type: text/html; charset=utf-8");
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        if (!empty($_GET['search'])&&!empty($_GET['keyword']))
        {
            $where['returnType']=$_GET['search'];
            $this->assign('keyword',$_GET['keyword']);
            //var_dump($_GET['keyword']); 
        }
         $Model =new \Think\Model();
       /*  $sql1="select * from `installer_freightordre` where freightOrdreId = '{$userid}' "; */ 
       
        $where['freightOrdreId']=$userid;
        //$goodmangelist = $Model->query($sql1);
        $goodmangelist=M('installer_freightordre')->where($where)->order('createTime desc')->select();
       
        
       foreach ($goodmangelist as $k=>$v) {
           
           $goodmangelist[$k]['son']=M('installer_freightordre')->alias('il')->field('umoi.id AS orderId,umoi.`ordreCoter`,umoi.`name`,umoi.`phone`,
            	il.`id` AS pdid,il.membersNameAndPhone,gmf.norme1,gmf.norme2,gmf.`reserve1` AS meubleImage,umd.`goodsName`')
           ->join('user_member_order_info umoi ON umoi.id=il.orderId')
           ->join('user_meubleorder_info umi ON umi.reserve1=umoi.id')
           ->join('user_meubleorder_details umd ON umd.orderId=umi.id')
           ->join('goods_meublespecifications gmf ON gmf.id=umd.goodsTypeId')
           ->where("il.id ='{$v['id']}'")->select();
           
          /*  
            $sql="SELECT umoi.id AS orderId,umoi.`ordreCoter`,umoi.`name`,umoi.`phone`,
            	il.`id` AS pdid,il.createTime AS chuanjian,gmf.norme1,gmf.norme2,
            	gmf.`reserve1` AS meubleImage,umd.`goodsName`
            FROM `installer_freightordre` il , 
            `user_member_order_info` umoi ,
            `user_meubleorder_info` umi ,
            `user_meubleorder_details` umd,
            `goods_meublespecifications` gmf
            WHERE  il.`orderId` = umoi.`id` 
            AND umoi.`id` = umi.`reserve1` 
            AND umi.`id` = umd.`orderId` 
            AND umd.`goodsTypeId` = gmf.`id`
            AND il.id = '{$v['id']}'  order by il.createTime desc";
        $goodmangelist[$k]['son'] = $Model->query($sql); */
        foreach ($goodmangelist as $k1=>$v1) 
        {   
		     //var_dump($v1);
            $goodmangelist[$k1]['son2'] = explode(" ", $v1['membersNameAndPhone']);
            	
	// var_dump(explode('', $v1['membersNameAndPhone']));
        }
        } 
	//var_dump($goodmangelist);
        $this->assign('list',$goodmangelist);
        $this->display();
    }
    /*货运详情(待货运、待预约、已完成、待评价)*/
    public function goodyundetail()
    {
        
        
        $Model =new \Think\Model();
        $sql="SELECT umoi.id AS orderId,umoi.`ordreCoter`,umoi.`name`,umoi.`phone`,umoi.orderAdresse,
        il.`id` AS pdid,il.returnType,il.returnSumMoney,il.membersNameAndPhone,il.goodsAddress,il.goodsName as quname,il.isNotType,gmf.norme1,gmf.norme2,il.goodsPhone,il.appointmentTime,
        gmf.`reserve1` AS meubleImage,umd.`goodsName`
        FROM `installer_freightordre` il ,
        `user_member_order_info` umoi ,
        `user_meubleorder_info` umi ,
        `user_meubleorder_details` umd,
        `goods_meublespecifications` gmf
        WHERE  il.`orderId` = umoi.`id`
        AND umoi.`id` = umi.`reserve1`
        AND umi.`id` = umd.`orderId`
        AND umd.`goodsTypeId` = gmf.`id`
        AND il.id = '{$_GET['huoyunid']}'";
        $goodmangedetail = $Model->query($sql);
       // var_dump($goodmangedetail);
	    foreach ($goodmangedetail as $k1=>$v1) 
        {
        $goodmangedetail[$k1]['son2'] = explode(" ", $v1['membersNameAndPhone']);
              
        }
		//var_dump($goodmangedetail[$k1]['son2']);
       $this->assign('goodmangedetail',$goodmangedetail);
        $this->display();
    }
    /*尚未开通*/
    public function lookforward()
    {
        $this->display();
    }
    /*  退出登录*/
    public function loginout()
    {
        unset($_SESSION['userid']);
        unset($_SESSION['token']);
        echo "<script>location.href='".U('user/login')."';</script>";
    }
     /*  注册服务协议*/
    public function serveinternet()
    {
		$fuwu=M('textevlues')->limit(1)->getField('texteVlue');
		$this->assign('fuwu',$fuwu);
        $this->display();
    }
    /*找回重置密码*/
    public function findpwdset()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."reLoadPassword";
        $data['phone']=$_POST['phone'];
        $data['newpwd']=$_POST['newpwd'];
        $data1 =curl_post($url, array('acc_phone'=>$data['phone'],'password'=>$data['newpwd']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state' => $res['state'],
                'msg'=>$res['msg'],
                'url'=>U('user/login')
            );
            $this->ajaxReturn($fata);
        }
    }
    
   /*  获取七牛云token*/
     public function getqintoken()
     {
         $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
         $url=$interfaceurl."uploadPhoto/qiniuToken";

         $data1 =curl_post($url, array('userid_token'=>$_SESSION['token']));
         $res=json_decode(object_array($data1),true);
        
         if(!empty($res))
         {
             $this->ajaxReturn($res);
         }
     }
    /*货运评价*/
     public function goodyuncomment()
     {
         if(!empty($_GET['orderid'])&&!empty($_GET['specid']))
         {
             $this->assign('orderid',$_GET['orderid']);
             $this->assign('specid',$_GET['specid']);
         }
          $this->display();
     }
     /*安装评价*/
     public function installcomment()
     {
         if(!empty($_GET['orderid']))
         {
             $this->assign('orderid',$_GET['orderid']);
         }
         $this->display();
     }
    /* 删除我的足迹 */
     public function deletefoot()
     {
         $arr=$_POST['id'];
         $arr=str_replace('[','',$arr);
         $arr=str_replace(']','',$arr);
         $arr=str_replace('"','',$arr);
         $hello = explode(',',$arr);
         
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
         $url=$interfaceurl."cart/delFont";
         
         foreach ($hello as $v) 
         {
         $data1 =curl_post($url, array('id'=>$v,'userToken'=>$_SESSION['token']));
         $res=json_decode(object_array($data1),true);
         }
         if(!empty($res))
         {
             $fata = array(
                 'state'=>$res['state'],
                 'msg'=>$res['message'],
             );
             $this->ajaxReturn($fata);
         }
        
     }
     /*  查看货运评价回复*/
     public function goodyunhandle()
     {
         if(!empty($_GET['goodyunid']));
         {
             $content=M('installer_listeestimer')->where(array('listeDesId'=>$_GET['goodyunid']))->getField('estimerReplies');
			  // var_dump($content);
         }
          
             $this->assign('content',$content);
         $this->display();
         
     }
     /*绑定手机号*/
	 public function bindphone()
	 {
		 $this->display();
	 } 
	  /*已经绑定手机(更改绑定)*/
	  public function bindphone1()
	 {
		  $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
		$phone=M('user_account')->where(array('id'=>$userid))->getField('acc_phone');
		 $this->assign('phone',$phone);
		 $this->display();
	 } 
	  /*绑定手机号操作*/
    public function dobind()
    {
        $interfaceurl=M('admin_systemconfig')->limit(1)->getField('configValue');
        $url=$interfaceurl."chatBinding";
        $data['phone']=$_POST['phone'];
        $data['code']=$_POST['code'];
        $data1 =curl_post($url, array('phone'=>$data['phone'],'yanzheng'=>$data['code'],'token'=>$_SESSION['token']));
        $res=json_decode(object_array($data1),true);
        if(!empty($res))
        {
            $fata = array(
                'state' => $res['state'],
                'msg'=>$res['msg'],
                'url'=>U('user/information')
            );
            $this->ajaxReturn($fata);
        }
    }
    /*区域管理*/
    public function areamange()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $data=M('installer_informationarea')->order("editTime  DESC")->where(array('informationId'=>$userid))->select();
        foreach($data as $k=>$v)
        {
            $data[$k]['province']=M('tb_da_area')->where(array('codeid'=>$v['provinceId']))->getField('cityName');
            $data[$k]['city']=M('tb_da_area')->where(array('codeid'=>$v['theCityId']))->getField('cityName');
            $data[$k]['area']=M('tb_da_area')->where(array('codeid'=>$v['countyId']))->getField('cityName');
        }
        
        $this->assign('info',$data);
        $this->display();
    }
    /*  添加区域*/
    public function addarea()
    {
		$province=M('tb_da_area')->where(array('parentid'=>0,'cityName'=>'重庆'))->select();
        $this->assign('province',$province);
        $this->display();
    }
	/*添加区域处理*/
    public function doaddarea()
    {   
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        
        $data['provinceId']=$_POST['province'];
        $data['theCityId']=$_POST['city'];
		$data['countyId']=$_POST['district'];
		$data['informationId']=$userid;
		$data['editTime']=date("Y-m-d",time());
       $info=M('installer_informationarea')->add($data);
        if(!empty($info))
        {
            $fata = array(
                'state' => '200',
                'msg'=>'添加服务区域成功',
                'url'=>U('user/areamange')
            );
            $this->ajaxReturn($fata);
        }
		
    }
    /*  编辑区域*/
    public function editarea()
    {
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $where['id']=$_GET['id'];
        $addressone=M('installer_informationarea')->where($where)->find();
        $this->assign('editone',$addressone);
        $province=M('tb_da_area')->where(array('parentid'=>0,'cityName'=>'重庆'))->select();
        $this->assign('province',$province);
     
        $this->assign('provinceId',$addressone['provinceId']);
        $this->assign('marcheId',$addressone['theCityId']);
        $this->assign('districtId',$addressone['countyId']);
        $province1=M('tb_da_area')->where(array('codeid'=>$addressone['provinceId']))->getField('cityName');
        $city=M('tb_da_area')->where(array('codeid'=>$addressone['theCityId']))->getField('cityName');
        $area=M('tb_da_area')->where(array('codeid'=>$addressone['countyId']))->getField('cityName');
 
        $this->assign('province1',$province1);
        $this->assign('city',$city);
        $this->assign('area',$area);
        $this->assign('id',$_GET['id']);
        $this->display();
    }
	/*修改区域处理*/
    public function doeditarea()
    {   
        $userid=$_SESSION['userid'];
        if(empty($userid))
        {
            echo "<script>
                   window.location.href='/index.php/Home/User/login'
                </script>";
        }
        $data['id']=$_POST['id'];
        $data['provinceId']=$_POST['province'];
        $data['theCityId']=$_POST['city'];
		$data['countyId']=$_POST['district'];
		$data['informationId']=$userid;
		$data['editTime']=date("Y-m-d",time());
       $info=M('installer_informationarea')->save($data);
        if(!empty($info))
        {
            $fata = array(
                'state' => '200',
                'msg'=>'编辑服务区域成功',
                'url'=>U('user/areamange')
            );
            $this->ajaxReturn($fata);
        }
		
    }
	/*删除区域处理*/
	public function detelearea()
	{
		 $data['id']=$_POST['id'];
		  $info=M('installer_informationarea')->where(array('id'=>$data['id']))->delete();
		   if(!empty($info))
        {
            $fata = array(
                'state' => '200',
                'msg'=>'删除服务区域成功',
                
            );
            $this->ajaxReturn($fata);
        }
	}
	  /* 货运流程*/
	public function  goodyuncode()
	{
		$lc=M('textevlues')->where(array('id'=>11))->limit(1)->getField('texteVlue');
		$this->assign('lc',$lc);
		$this->display();
	}
	 /* 货运指南*/
	public function  goodyunzhinan()
	{
		$lc=M('textevlues')->where(array('id'=>13))->limit(1)->getField('texteVlue');
		$this->assign('lc',$lc);
		
		$this->display();
	}
	  /* 安装流程*/
	public function  installcode()
	{
		$lc=M('textevlues')->where(array('id'=>7))->limit(1)->getField('texteVlue');
		$this->assign('lc',$lc);
		$this->display();
	}
	 /* 安装指南*/
	public function  installzhinan()
	{   
	$lc=M('textevlues')->where(array('id'=>12))->limit(1)->getField('texteVlue');
		$this->assign('lc',$lc);
		
		$this->display();
	}
	  /* 安装须知*/
	public function  installneed()
	{
		$this->display();
	}
	  /* 货运须知*/
	public function  goodyunneed()
	{
		$this->display();
	}
	  /* 关于七色彩*/
	public function aboutqisecai()
	{
		$about=M('textevlues')->where(array('id'=>4))->limit(1)->getField('texteVlue');
		$this->assign('about',$about);
		$this->display();
	}
	
    /*  */
     /*  查看退货回复*/
     /* public function refundhandle()
     {
         if(!empty($_GET['specid']));
         {
             $content=M('installer_listeestimer')->where(array('listeDesId'=>$_GET['goodyunid']))->getField('estimerReplies');
         }
         var_dump($content);
         $this->assign('content',$content);
         $this->display();
          
     } */
}