# ssip
ssip是“shadowsocks server install packet”的缩写。顾名思义，它是ss线上部署的一键安装包。

# Install
注意:部署此服务之前，请确保自己拥有一台国外服务器。
下载本项目并把它拷贝到国外主机的/opt/目录下，然后修改ss所在主机的ip地址，监听端口，密码，加密方法，超时设置等。如：
**1. 下载本项目**
```
> git clone https://github.com/wltos/ssip.git
> cp -r ssip /opt/
> cd /opt/ssip
```
**2. 修改配置文件/opt/ss/config.json**
```
> vi /opt/ssip/config.json
{
    "server":"44.55.66.77",
    "server_port":443,
    "local_port":1080,
    "password":"871240671@qq.com",
    "method": "aes-256-cfb",
    "timeout":600,
    "fast_open": false
}
```
**3. 部署服务端**
```
> sh install.sh
```

# Usage
如果你是ios用户，可以到AppStore中下载如下客户端。下载后，把/opt/ssip/config.json中的参数填入app中即可。
|   app名字      | 是否收费 | 是否可用 | 
| -----------    | :-       | :- | 
| ShadowProxy    | 否       | 已下架 | 
| FirstWingy     | 否       | 可用 | 
| 超级穿山甲     | 否       | 可用 |
| BestWingy      | 否       | 可用 |
| ShadowPocket   | 否       | 可用 |
| Kite           | 否       | 可用 |
| SsrConnectPro  | 否       | 可用 |
| Wingy          | 收费     | 可用 |