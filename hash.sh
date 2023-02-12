#!/bin/bash


cat << "EOF"

██╗░░██╗░█████╗░░██████╗██╗░░██╗
██║░░██║██╔══██╗██╔════╝██║░░██║
███████║███████║╚█████╗░███████║
██╔══██║██╔══██║░╚═══██╗██╔══██║
██║░░██║██║░░██║██████╔╝██║░░██║
╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝

EOF

echo -e "\033[34m Codado por https/github.com/ddn0x\033[0m\n"

# Verifica se o hashid está instalado
if ! [ -x "$(command -v hashid)" ]; then
  # Se estivermos no termux (Android)
  if [ -x "$(command -v pkg)" ]; then
   echo -e "\033[31m hashid não está instalado. Instalando agora...\033[0m"
    pkg install hashid
  else
    # Se estivermos em um sistema desktop, tenta instalar o hashid com o apt-get (Ubuntu, Debian) ou o yum (Red Hat, CentOS)
    if [ -x "$(command -v apt-get)" ]; then
      apt-get install hashid
    elif [ -x "$(command -v yum)" ]; then
      yum install hashid
    else
      # Se não soubermos como instalar o hashid, exibe uma mensagem de erro
      echo "Não foi possível instalar o hashid. Verifique se você tem permissão para instalar pacotes e se está usando um sistema operacional compatível."
      exit 1
    fi
  fi
fi

# Verifica se o hashid está instalado
if ! [ -x "$(command -v hashid)" ]; then

 # Instala o hashid
  sudo apt-get update
  sudo apt-get install hashid
fi

# Lê o comando como argumento
if [ $# -eq 0 ]; then
  echo -e "\033[31m Error: É necessário fornecer o comando como argumento.\033[0m"
  exit 1
fi
command=$1

case $command in
  "hash")
    # Lê o nome do arquivo como argumento
    if [ $# -lt 2 ]; then
      echo -e "\033[31m Error: É necessário fornecer o nome do arquivo como argumento.\033[0m"
      exit 1
    fi
    filename=$2

    # Verifica qual é a hash do arquivo
    hash=$(hashid "$filename")

    # Exibe a hash e o tipo de hash
    echo -e "\033[31m Hash do arquivo $filename:\033[0m"
    echo "$hash"
    ;;
  *)
    echo -e "\033[31m Comando inválido. O único comando disponível é: hash \033[0m"
    exit 1
    ;;
esac
