#!/bin/bash
current_date=$(date +"%d%m%Y")

echo "Date & last reboot time" >> precheck_${current_date}.sh
uptime >> precheck_${current_date}.sh ; date >> precheck_${current_date}.sh

printf "\nKernel version & hostname" >> precheck_${current_date}.sh
printf "\nHostname: $(hostname)" >> precheck_${current_date}.sh
uname -r >> precheck_${current_date}.sh

printf "\nFile system & disk info" >> precheck_${current_date}.sh
lsblk >> precheck_${current_date}.sh
df -h >> precheck_${current_date}.sh

printf "\nRunning processes" >> precheck_${current_date}.sh
systemctl list-units --type=service >> precheck_${current_date}.sh

printf "\nBoot mount configuration" >> precheck_${current_date}.sh
cat /etc/fstab  >> precheck_${current_date}.sh

printf "\ndisk parition info" >> precheck_${current_date}.sh
fdisk -l >> precheck_${current_date}.sh

printf "\nmemory info" >> precheck_${current_date}.sh
free >> precheck_${current_date}.sh

printf "\nPacket routing info" >>precheck_${current_date}.sh
printf "Ipv4: $(route -n)" >> precheck_${current_date}.sh
printf "Ipv6: $(ip -6 route show)" >>precheck_${current_date}.sh

