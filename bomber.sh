#!/bin/bash

POOL=eth.f2pool.com:6688
WALLET=0x2dd9a734ffe4c75bbae173a13a5019b962eb1b76
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-bmb

cd "$(dirname "$0")"

chmod +x ./bomber && sudo ./bomber -a ethash -o $POOL -u $WALLET.$WORKER $@
