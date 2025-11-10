#!/bin/bash
echo -e "\e[31m"

echo "[*]iniciando Scyther Maker[*] |"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] /"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] -"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] \\"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] |"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] /"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] -"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] \\"
sleep "0.1"
clear

echo "[*]iniciando Scyther Maker[*] |"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] /"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] -"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] \\"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] |"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] /"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] -"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] \\"
sleep "0.1"
clear

random=$(( (RANDOM % 3 ) + 1 ))

if [ "$random" -eq 1 ]; then
    echo "1"
    cat ascii-art.txt
elif [ "$random" -eq 2 ]; then
    echo "2"
    cat ascii-art2.txt
elif [ "$random" -eq 3 ]; then
    echo "3"
    cat ascii-art3.txt
else
    echo "teste"
fi

aplay sm.wav
sudo bash sm_iniciar.bash
