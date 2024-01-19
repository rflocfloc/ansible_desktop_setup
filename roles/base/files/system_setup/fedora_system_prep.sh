#!/bin/bash
#
## Add flag to DNF
isInFile=$(grep -Fq "max_parallel_downloads" /etc/dnf/dnf.conf)

if [ $isInFile -eq 0 ]; then
	echo "max_parallel_downloads=20" >> /etc/dnf/dnf.conf
else
	sed -i 's/max_parallel_downloads/d' /etc/dnf/dnf.conf
	echo "max_parallel_downloads=20" >> /etc/dnf/dnf.conf
fi		

