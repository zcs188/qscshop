<?php
/*
 * 封装curl公用函数(工具包)
 */
class UrlUtil
{
    /*
     * 封装get请求
     * @param string $url  请求的地址（包含根地址和参数）
     * @return string      页面的输出结果
     */
    public function getContents($url)
    {
        //初始化连接
        $ch=curl_init();
        //设置选项
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        //执行请求
        $response=curl_exec($ch);
        //关闭连接
        curl_close($ch);

        return $response;
    }
    /*
     * 拼接get请求
     * @param string $baseUrl  请求的地址（包含根地址和参数）
     * @param string $paramArr 参数值键值对
     * @return string      页面的输出结果
     */
    public function get($baseUrl,$paramArr)
    {
        //拼接请求url路径
        $url=$this->combineUrl($baseUrl,$paramArr);
        //发送get请求
        return $this->getContents($url);
    }
    /*
     * 拼接URL请求地址
     * @param string $baseUrl  请求的地址（包含根地址和参数）
     * @param string $paramArr 参数值键值对
     * @return string      请求的完整地址
     */
    public function conbineUrl($baseUrl,$paramArr)
    {
        $url=$baseUrl;
        $join="?";
        foreach ($paramArr as $name=>$val) {
            $url.=$join.$name."=".$val;
            $join="&";
        }
        return $url;
    }
    /*
     * 发送post请求
     * @param string $url 请求地址
     * @param string $paramArr 请求参数
     * @return string          返回结果
     */
    public function post($url,$paramArr)
    {
        //初始化连接
        $ch=curl_init($url);
        //设置选项
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $paramArr);
     
        //执行请求
        $response=curl_exec($ch);
        //关闭连接
        curl_close($ch);

        return $response;
    }
    /**
     * 发送HTTP请求方法
     * @param  string $url    请求URL
     * @param  array  $params 请求参数
     * @param  string $method 请求方法GET/POST
     * @return array  $data   响应数据
     */
  public   function http($url, $params, $method = 'GET', $header = array(), $multi = false){
        $opts = array(
            CURLOPT_TIMEOUT        => 30,
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_SSL_VERIFYHOST => false,
            CURLOPT_HTTPHEADER     => $header
        );
        /* 根据请求类型设置特定参数 */
        switch(strtoupper($method)){
            case 'GET':
                $opts[CURLOPT_URL] = $url . '?' . http_build_query($params);
                break;
            case 'POST':
                //判断是否传输文件
                $params = $multi ? $params : http_build_query($params);
                $opts[CURLOPT_URL] = $url;
                $opts[CURLOPT_POST] = 1;
                $opts[CURLOPT_POSTFIELDS] = $params;
                break;
            default:
                throw new Exception('活动尚未开放！');
        }
        /* 初始化并执行curl请求 */
        $ch = curl_init();
        curl_setopt_array($ch, $opts);
        $data  = curl_exec($ch);
        $error = curl_error($ch);
        curl_close($ch);
        if($error) throw new Exception('请求发生错误：' . $error);
        
        return  $data;
    }
    /**
     * 发起一个 HTTP(S) 请求, 并返回响应文本
     *
     * @param array 错误信息笙歌牛逼bashshell不错来了你妹可以的打拨扣: array($errorCode, $errorMessage)
     * @param string url
     * @param array 参数数组
     * @param string 请求类型	GET|POST
     * @param int 超时时间
     * @param array 扩展的包头信息
     * @param array $extOptions
     *
     * @return string
     */
    function curl_request_text(&$error, $url, $params = array(), $method = 'GET', $timeout = 15, $extheaders = null, $extOptions = null)
    {
        if(!function_exists('curl_init')) exit('Need to open the curl extension.');
        $method = strtoupper($method);
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, $timeout);
        curl_setopt($curl, CURLOPT_TIMEOUT, $timeout);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($curl, CURLOPT_HEADER, false);
        switch($method)
        {
            case 'POST':
                curl_setopt($curl, CURLOPT_POST, TRUE);
                if(!empty($params))
                {
                    curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($params));
                }
                break;
            case 'DELETE':
            case 'GET':
                if($method == 'DELETE')
                {
                    curl_setopt($curl, CURLOPT_CUSTOMREQUEST, 'DELETE');
                }
                if(!empty($params))
                {
                    $url = $url . (strpos($url, '?') ? '&' : '?') . (is_array($params) ? http_build_query($params) : $params);
                }
                break;
        }
        curl_setopt($curl, CURLINFO_HEADER_OUT, TRUE);
        curl_setopt($curl, CURLOPT_URL, $url);
        if(!empty($extheaders))
        {
            curl_setopt($curl, CURLOPT_HTTPHEADER, (array)$extheaders);
        }
        if(!empty($extOptions)) {
            foreach($extOptions as $key => $value) curl_setopt($curl, $key, $value);
        }
        $response = curl_exec($curl);
    
        curl_close($curl);
        return $response;
    }
   
    
}
