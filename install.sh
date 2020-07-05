#!/bin/bash
echo -e "\e[96m install create-react\e[m"
mkdir -p ~/bin
[[ -z $(echo $PATH | grep ~/bin) ]] && echo "PATH=~/bin:$PATH" >> ~/.bashrc
curl -s https://raw.githubusercontent.com/simba-fs/react-template/master/create.sh > ~/bin/create-react
chmod 755 ~/bin/create-react
echo -e "\e[96m finish!\e[m"
