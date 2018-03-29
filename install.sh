#!/bin/env sh

# 开机启动
iptables -F
chmod +x /etc/rc.local
chmod +x /etc/rc.d/rc.local
sed -i "/guard_shadowsocks.py/d" /etc/rc.local
sed -i "/guard_shadowsocks.py/d" /etc/rc.d/rc.local
echo "cd /opt/ss; /usr/bin/python guard_shadowsocks.py &" >> /etc/rc.local
echo "cd /opt/ss; /usr/bin/python guard_shadowsocks.py &" >> /etc/rc.d/rc.local

# 杀死进程
pid_a=`ps -axu | grep "guard_shadowsocks.py" | grep -v "grep" | awk '{ print $2 }'`
if [ -n $pid_a ];then
    kill -9 $pid_a
fi

pid_b=`ps -axu | grep "./shadowsocks" | grep -v "grep" | awk '{ print $2 }'`
if [ -n $pid_b ];then
    kill -9 $pid_b
fi

# 安装程序
python guard_shadowsocks.py &
disown
sleep 2
kill -2 $!
exit 0
