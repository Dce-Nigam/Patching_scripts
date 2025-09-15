#!/bin/bash
current_date=$(date +"%d%m%Y")
printf "Date & last reboot time" >> postcheck_${current_date}.sh
uptime >> postcheck_${current_date}.sh ; date >> postcheck_${current_date}.sh

printf "\nKernel version & hostname" >> postcheck_${current_date}.sh
printf "\nHostname: $(hostname)" >> postcheck_${current_date}.sh
uname -r >> postcheck_${current_date}.sh

printf "\nFile system & disk info" >> postcheck_${current_date}.sh
lsblk >> postcheck_${current_date}.sh
df -h >> postcheck_${current_date}.sh

printf "\nRunning processes" >> postcheck_${current_date}.sh
systemctl list-units --type=service >> postcheck_${current_date}.sh

printf "\nBoot mount configuration" >> postcheck_${current_date}.sh
cat /etc/fstab  >> postcheck_${current_date}.sh

printf "\ndisk parition info" >> postcheck_${current_date}.sh
fdisk -l >> postcheck_${current_date}.sh

printf "\nmemory info" >> postcheck_${current_date}.sh
free >> postcheck_${current_date}.sh

printf "\nPacket routing info" >>postcheck_${current_date}.sh
route -n  >>postcheck_${current_date}.sh
printf "Ipv6: $(ip -6 route show)" >>postcheck_${current_date}.sh

