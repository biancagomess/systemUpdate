#!/usr/bin/env bash

message_title="Init the system update"
message_process="++++++++++++++++++++++++++++++++++++"
user=$USER
welcome="Olá, "

echo  $welcome $user
echo 
echo "$message_process Informações do Sistema $message_process"

neofetch 

sleep 2

echo $message_process $message_title $message_process

sleep 2

echo
echo "
         ,---------------------------,            
         |   Script de Update e      |            
         |          Clean            |            
         |                           |            
         |     Atualizando...        |            
         |  Limpando arquivos...     |            
         |                           |            
         |  Concluído!               |            
         |___________________________|            
     ,---\_____     []     _______/------,      
    /         /______________\           /|      
   /___________________________________ / | ___  
   |                                   |  |    ) 
   |   Atualizações Aplicadas          |  |   (  
   |   Arquivos Limpos                 | /    _)_
   |___________________________________|/     /  /
   /-----------------------------------/|      ( )/ 
  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/            
 / -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/               
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.
"

sleep 3 

sudo apt update 

if [ $? -eq 0 ]; then
   echo "Iniciando o upgrade...."
   echo
   sudo apt upgrade -y 
else 
	echo
	echo  "Falha na Atualização. Verifique os erros acima."
	echo
fi 

echo
echo "$message_process Atualizações concluídas! $message_process"
echo

sleep 3

echo "$message_process Iniciando a limpeza $message_process"
echo
sudo apt autoremove -y 

if [ $? -eq 0 ]; then
	sudo apt autoclean -y && sudo apt clean
fi

sleep 2
echo
echo "$message_process Iniciando a otimização do sistema: $message_process"
echo "Deletando os logs mais antigos:"
sudo journalctl --vacuum-time=7d

echo 

sleep 2

echo "$message_process Limpando a cache do navegador: $message_process"
echo
rm -rf ~/.cache/mozila/firefox/*
rm -rf ~/.cache/google-chrome/*

echo 
echo "$message_process Processos concluídos com sucesso! $message_process"
cat << "EOF"
       .--.  
      |o_o | 
      |:_/ | 
     //   \ \ 
    (|     | )
   /'\_   _/`\
   \___)=(___/ 
   Tchau!
EOF
echo
echo "        Até mais,  $user"






