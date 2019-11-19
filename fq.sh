#!/bin/bash
vdb1(){
rpm -q expect || yum -y install expect 
read -p "输入分区磁盘大小" size
fdisk /dev/vdb <<EOF
n
p
1

+${size}G
w
EOF
}
vdb2(){
read -p "输入分区磁盘大小" size
fdisk /dev/vdb <<EOF
n
p
2

+${size}G
w
EOF
}
vdb3(){
read -p "输入分区磁盘大小" size
fdisk /dev/vdb <<EOF
n
p
3

+${size}G
w
EOF
}
while :
do 
 read -p "请输入序列号(1-4)" n
case $n in 
1)
  vdb1;;
2)
  vdb2;;
3)
  vdb3;;
4)
  exit;;
*)
 echo "输入有误"
esac
done
