#!/bin/bash

old_password=$(cat /root/password.txt | awk -F ":" '{print $2}' )
new_password=$(</dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10)

systemctl restart mysqld
mysqladmin -uroot -p${old_password} password $new_password

echo 'Dtabases root Password:'$new_password  > /root/password.txt


sed -i "s/\/root\/init.sh//" /etc/rc.local
rm -rf /root/init.sh

