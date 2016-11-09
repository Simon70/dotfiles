#!/bin/bash

select=$(echo -e 'Nothing\nSleep\nShutdown\nLogout\nReboot\nHibernate' | dmenu -nb '#2f343f' -nf '#f3f4f5' -sb '#f0544c' -sf '#1f222d' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i)
echo $select

if [ "$select" == "Sleep" ]
then
  systemctl suspend
elif [ "$select" == "Shutdown" ]
then
  systemctl poweroff
elif [ "$select" == "Reboot" ]
then
  systemctl reboot
elif [ "$select" == "Hibernate" ]
then
  systemctl hibernate
elif [ "$select" == "Logout" ]
then
  i3-msg exit
fi
