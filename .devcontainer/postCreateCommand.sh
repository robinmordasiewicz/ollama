#!/bin/bash
#

if [ -f /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list ]; then
  sudo rm /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list
fi
sudo apt update
sudo apt-get -y upgrade
sudo apt-get -y install tensorrt cudnn cudnn-cuda-12
sudo apt -y autoremove

ollama show --modelfile codellama:34b 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull codellama:34b
fi

ollama show --modelfile codellama:34b-instruct 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull codellama:34b-instruct
fi

ollama show --modelfile codellama:34b-instruct 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull codellama:34b-instruct
fi

ollama show --modelfile dolphin-mixtral:8x7b 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull dolphin-mixtral:8x7b
fi

ollama show --modelfile llama2:13b 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull llama2:13b
fi

ollama show --modelfile llama2-uncensored:7b 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull llama2-uncensored:7b
fi

ollama show --modelfile mistral-openorca 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull mistral-openorca
fi

ollama show --modelfile mixtral:8x7b 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull mixtral:8x7b
fi

ollama show --modelfile mixtral:instruct 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull mixtral:instruct
fi

ollama show --modelfile nomic-embed-text 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull nomic-embed-text
fi

ollama show --modelfile nous-hermes2-mixtral:8x7b 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull nous-hermes2-mixtral:8x7b
fi

ollama show --modelfile starcoder:3b 1> /dev/null
if ! [ $? -eq 0 ]
then
  ollama pull starcoder:3b
fi

