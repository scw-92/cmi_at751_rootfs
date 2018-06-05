#! /bin/sh
while [ 1 ];
do
        if [ $(cat  /dev/RESET_IP) != '1' ]; then
                echo start reset
                /etc/init.d/reset_ip_passwd &
                echo reset over
        fi
        sleep 1
done
