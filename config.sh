#!/bin/bash
#this file aim to install xcompiler and install it
download_url="https://www.uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-"


function download_bins {
    echo "ready to download: $1.tar.bz2"
    wget "${download_url}$1.tar.bz2"
    echo "ready to tar: $1.tar.bz2"
    tar -jxvf /root/Documents/igroup/cross-compiler-$1.tar.bz2
    #echo "ready to export path: $PATH:$install_path/cross-compiler-$1/bin"
    sed -i '$a\export PATH=$PATH:'$install_path'/cross-compiler-'$1'/bin' /etc/profile 
}

if [ $# == 0 ]
then
    echo "Usage: $0  intall_path"
    exit -1
elif [ $# == 1 ]
then
    install_path=$1
fi

cd $install_path
download_bins mips
download_bins armv4l
#download_bins armv5l
download_bins i686
download_bins x86_64

source /etc/profile

echo "Done"
