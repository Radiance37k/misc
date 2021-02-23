#!/bin/zsh

niclist=(
    'tun0'
    'tap0'
)

vpn=$( ip a | grep $1 | grep inet | cut -d " " -f 6 | cut -d "/" -f 1 )

if [ ! -z "$vpn" ];then
	vpn=$1": "$vpn" "
else
	vpn=$1": Disconnected "
fi

print $vpn

#for n in $niclist; do
#	tmp=$( ip a | grep $n | grep inet | cut -d " " -f 6 | cut -d "/" -f 1 )
#	if [ ! -z "$tmp" ]; then
#		vpn=$vpn$n": "$tmp", "
#	fi
#done

#print $vpn | sed 's/..$//'
