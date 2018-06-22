#!/usr/bin/env python
import os
import time

while True:
    os.system("./bin/shadowsocks -c ./etc/config.json")
    time.sleep(3)

