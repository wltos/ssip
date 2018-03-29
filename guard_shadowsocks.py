#!/usr/bin/env python
import os
import time

while True:
    os.system("./shadowsocks -c config.json")
    time.sleep(2)

