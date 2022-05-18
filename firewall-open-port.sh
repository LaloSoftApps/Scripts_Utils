#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo "[ERROR] Especifique un Puerto"
    exit 1
fi

echo "abriendo puerto $1 en el firewall"
sudo ufw allow 80
