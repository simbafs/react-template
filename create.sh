#!/bin/bash

# check command exist
declare -a cmdRequire=(git npm node)
declare -a cmdNotFound=()

for i in ${cmdRequire[@]};
do
	[[ -z $(which $i) ]] && cmdNotFound+=($i)
done

if [[ ${#cmdNotFound[@]} != 0 ]];
then
	echo -e "\e[91m command \"${cmdNotFound[@]}\" not found\e[m"
	exit 1
fi

# check project name
if [[ -z $1 ]];
then
	echo -en "\e[96m project name (leave blank for 'my-react-project'): \e[m"
	read name
	[[ -z $name ]] && name=my-react-project
else
	name=$1
fi

if [[ -d $name ]];
then
	echo -e "\e[91m $name exist\e[m"
	exit 1
fi

echo -e "\e[96m cloning ......\e[m"
git clone https://github.com/simba-fs/react-template $name
if [[ -d $name ]];
then
	cd $name
	echo -e "\e[96m creating git repo ......\e[m"
	rm -rf .git create.sh
	git init
	echo -e "\e[96m installing node modules ......\e[m"
	npm i 
	echo -e "\e[96m initing commit ......\e[m"
	git add .
	git commit -m init
	echo -e "\e[96m finish!\e[m"
	echo -e "\e[96m go to and give https://github.com/simba-fs/react-template a star\e[m"
	echo -e "\e[96m follow my at https://github.com/simba-fs\e[m"
	echo -e "\e[96m <3\e[m"
else
	echo -e "\e[91m something wrong\e[m"
	echo -e "\e[91m go to https://github.com/simba-fs/react-template/issues to report it\e[m"
	echo -e "\e[91m thank you\e[m"
fi
