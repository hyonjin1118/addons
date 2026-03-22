#!/bin/sh

SHARE_DIR=/share/kocom

mkdir -p $SHARE_DIR
cp /rs485.py $SHARE_DIR/rs485.py
/makeconf.sh

echo "[Info] Run Wallpad Controller"
cd $SHARE_DIR
python3 $SHARE_DIR/rs485.py

# for dev
while true; do echo "still live"; sleep 100; done
