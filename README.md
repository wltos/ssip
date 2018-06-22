# 简介
ssip是“shadowsocks server install packet”的缩写，它是shadowsocks（影梭，以下简称ss）的服务端一键安装包。本包附带windows，android，mac和iphone等主流平台的客户端程序文件。关于各客户端的程序文件，详见本包utils文件夹。作者制作本安装包的初衷是查阅科技文档，便于自己技术输入，请勿用于敏感场景。

# 准备工作
1. 请确保自己拥有一台非中国大陆的ECS。推荐搬瓦工，亚马逊等境外云服务提供商；
2. 下载本安装包，移动或复制到指定目录，如/opt目录（下面以/opt目录试验）；

# 安装
```
第1步：下载并解压安装包
# cd /opt
# git clone https://github.com/wltos/ssip.git

第2步：修改配置文件
# cp example.config.json config.json
# vim /opt/ssip/etc/config.json
{
    "server":"11.22.33.44", //修改11.22.33.44为你的ECS公网IP
    "server_port":443,      //推荐443,21,3306,27017等知名端口，防止被封
    "local_port":1080,      //本地端口，默认就好
    "password":"HelloWorld",//密码，可修改为自己喜欢的密码
    "method": "aes-256-cfb",//加密方式，默认就好
    "timeout":600,          //延时，默认就好
    "fast_open": false      //默认就好
}

第3步：运行程序
# cd /opt/ssip/
# ./install.sh 
```

# SS客户端
下面以苹果手机为例，给大家推荐几款APP。使用的时候把“安装”标题中的config.json文件内容填入客户端中即可。在AppStore中，作者陆陆续续找到如下几款软件，可能有的已下架，请挨个自行尝试。

|   APP名        | 是否收费 | 是否可用 |  验证时间  | 
| -----------    | :-       | :-       | :-         |
| ShadowProxy    | 免费     | 已下架   | 三个月前   |
| FirstWingy     | 免费     | 可用     | 三个月前   |
| SuperPangolin  | 免费     | 可用     | 2018-06-22 |
| BestWingy      | 免费     | 可用     | 三个月前   |
| ShadowPocket   | 免费     | 可用     | 三个月前   |
| Kite           | 免费     | 可用     | 三个月前   |
| SsrConnectPro  | 免费     | 可用     | 三个月前   |
| Wingy          | 收费     | 可用     | 三个月前   |
| SsrConnectPro  | 免费     | 可用     | 2018-06-22 |
| ShadowBroken   | 免费     | 可用     | 2018-06-22 |

