#!/bin/sh

set -e

FILES="gitconfig xsession tmux.conf vimrc i3 emacs"
BASEPATH=$(pwd)

if [ -z "${HOME}" ]
then
	echo "[!] need \$HOME set"
	exit 1
fi

for file in $FILES
do
	src="${BASEPATH}/${file}"
	dst="${HOME}/.${file}"

	if [ -e "${dst}" ]
	then
		echo "[!] ${dst} already exist, skip"
	else
		echo ln -s '"'${src}'"' '"'${dst}'" ? [y/n] '
		read ans
		if [ "${ans}" = "y" ]
		then
			ln -s "${src}" "${dst}"
		fi
	fi
done

mkdir -p ${HOME}/bin

for file in bin/*
do
	src="${file}"
	dst="${HOME}/${file}"
	if [ -e "${dst}" ]
    then
		echo "[!] ${dst} already exist, skip"
	else
 		echo ln -s '"'${src}'"' '"'${dst}'" ? [y/n] '
  		read ans
  		if [ "${ans}" = "y" ]
  		then
	  		ln -s "${src}" "${dst}"
  		fi
	fi
done
