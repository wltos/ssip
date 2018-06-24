#!/usr/bin/env python
import os
import time

abspath = os.path.abspath(__file__)
binDirPath = abspath[0:len(abspath) - len("/guard_shadowsocks.py")]
baseDirPath = binDirPath[0:len(binDirPath) - len("/bin")]
statement = binDirPath +"/shadowsocks" + " -c " + baseDirPath + "/etc/config.json"

while True:
    current_path = os.path.abspath(__file__)
    os.system(statement)
    time.sleep(3)

