<?php
return array(
    //数据库配置信息
    'DB_TYPE'   => 'mysql', // 数据库类型
    'DB_HOST'   => 'localhost', // 服务器地址
    'DB_NAME'   => 'qscmobilier', // 数据库名
    'DB_USER'   => 'root', // 用户名
    'DB_PWD'    => 'root', // 密码
    'DB_PORT'   => 3306, // 端口
    'DB_PREFIX' => '', // 数据库表前缀
    'DB_CHARSET'=> 'utf8', // 字符集
    'DB_DEBUG'  =>  TRUE, // 数据库调试模式 开启后可以记录SQL日志 3.2.3新增
    
    
    
    
    
    'TMPL_PARSE_STRING'  =>array(
        '__PUBLIC__' => '/Public', // 更改默认的/Public 替换规则
        '__JS__'     => '/Public/JS/', // 增加新的JS类库路径替换规则
        '__UPLOAD__' => '/Uploads', // 增加新的上传路径替换规则
    )
,
   'PICTURE_UPLOAD_DRIVER'=>'Qiniu',   
    //本地上传文件驱动配置
    'UPLOAD_LOCAL_CONFIG'=>array(),
  'UPLOAD_QINIU_CONFIG'=>array(
        'accessKey'=>'eD_D7y-BQNNzLKkZPPUiamXgTHiS6_iPJdpMIto9',
        'secretKey'=>'FzbnSntXtizrWAfpL9uG3KgCSCVHri3cNwzG1xJ_',
        'bucket'=>'qisecai',
        'domain'=>'http://qiniuti.7secai.cn',
        'timeout'=>3600,
    ),
);