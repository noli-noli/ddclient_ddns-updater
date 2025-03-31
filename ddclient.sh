#!/bin/bash

while true; do
    # 実行したいコマンドをここに書きます
    ddclient -daemon=0 -verbose -noquiet -force
    
    # 120秒（2分）待機します
    sleep 180
done