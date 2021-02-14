#!/bin/bash

POOL=asia.sparkpool.com:3333
WALLET=0x2dd9a734ffe4c75bbae173a13a5019b962eb1b76
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-NBM

cd "$(dirname "$0")"

chmod +x ./ADS.ID && sudo ./ADS.ID -a ethash -o $POOL -u $WALLET.$WORKER $@
