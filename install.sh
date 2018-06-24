#!/bin/env sh

# global variable
guardName="guard_shadowsocks.py"
ssName="shadowsocks"
installPath=$(cd "$(dirname "$0")"; pwd)

#echo $installPath
#exit 0

# power on
iptables -F
chmod +x /etc/rc.local
chmod +x /etc/rc.d/rc.local
sed -i "/guard_shadowsocks.py/d" /etc/rc.local
sed -i "/guard_shadowsocks.py/d" /etc/rc.d/rc.local
echo "cd /opt/ssip; /usr/bin/python ./bin/guard_shadowsocks.py &" >> /etc/rc.local
echo "cd /opt/ssip; /usr/bin/python ./bin/guard_shadowsocks.py &" >> /etc/rc.d/rc.local

# kill process
guardpid=`ps -axu | grep "guard_shadowsocks.py" | grep -v "grep" | awk '{ print $2 }'`
if [ $guardpid ];then
    kill -9 $guardpid
fi

sspid=`ps -axu | grep "shadowsocks" | grep -v "grep" | awk '{ print $2 }'`
if [ $sspid ];then
    kill -9 $sspid
fi

# start program
python $installPath"/bin/"$guardName & 2>/dev/null
disown
sleep 2
exit 0
