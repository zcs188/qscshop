<?php


 function curl_get($url){

    $testurl = $url;
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $testurl);
    //参数为1表示传输数据，为0表示直接输出显示。
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    //参数为0表示不带头文件，为1表示带头文件
    curl_setopt($ch, CURLOPT_HEADER,0);
    $output = curl_exec($ch);
    curl_close($ch);
    return $output;
}

/*
 * url:访问路径
 * array:要传递的数组
 * */
 function curl_post($url,$array){

    $curl = curl_init();
    //设置提交的url
    curl_setopt($curl, CURLOPT_URL, $url);
    //设置头文件的信息作为数据流输出
    curl_setopt($curl, CURLOPT_HEADER, 0);
    //设置获取的信息以文件流的形式返回，而不是直接输出。
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    //设置post方式提交
    curl_setopt($curl, CURLOPT_POST, 1);
   //curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type: application/json', 'Content-Length: ' . strlen($array)));
    //设置post数据
    $post_data = $array;
    curl_setopt($curl, CURLOPT_POSTFIELDS, $post_data);
    //执行命令
    $data = curl_exec($curl);
    //关闭URL请求
    curl_close($curl);
    //获得数据并返回
    return $data;
}


function object_array($array) {  
    if(is_object($array)) {  
        $array = (array)$array;  
     } if(is_array($array)) {  
         foreach($array as $key=>$value) {  
             $array[$key] = object_array($value);  
             }  
     }  
     return $array;  
}
/**
 *   实现中文字串截取无乱码的方法
 */
function getSubstr($string, $start, $length) {
    if(mb_strlen($string,'utf-8')>$length){
        $str = mb_substr($string, $start, $length,'utf-8');
        return $str.'...';
    }else{
        return $string;
    }
}
function getSubstr1($string, $start, $length) {
    if(mb_strlen($string,'utf-8')>$length){
        $str = mb_substr($string, $start, $length,'utf-8');
        return $str.'                                             ';
    }else{
        return $string;
    }
}
function receiveStreamFile($receiveFile){

    $streamData = isset($GLOBALS['HTTP_RAW_POST_DATA'])? $GLOBALS['HTTP_RAW_POST_DATA'] : '';

    if(empty($streamData)){
        $streamData = file_get_contents('php://input');
    }

    if($streamData!=''){
        $ret = file_put_contents($receiveFile, $streamData, true);
    }else{
        $ret = false;
    }

    return $ret;

}
function https_request($url, $data = null)
{
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}
function sigcol_arrsort($data,$col,$type=SORT_DESC){
  if(is_array($data)){
    $i=0;
    foreach($data as $k=>$v){
      if(key_exists($col,$v)){
        $arr[$i] = $v[$col];
        $i++;
      }else{
        continue;
      }
    }
  }else{
    return false;
  }
  array_multisort($arr,$type,$data);
  return $data;
}
function get($url)	{		
//curl扩展		
$ch = curl_init($url);		//设置请求的参数		
curl_setopt($ch, CURLOPT_URL, $url);		
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);		//
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);		
curl_setopt($ch, CURLOPT_TIMEOUT, 10);		//
curl_setopt($ch, CURLOPT_HEADER, 0);		
$res = curl_exec($ch);		
curl_close($ch);		//返回请求的结果		
return $res;	
}


?>

