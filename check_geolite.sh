#!/bin/bash
file=/home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb
filename=GeoLite2.mmdb
minimumsize=1
actualsize=$(wc -c <"$file")
if [ $actualsize -ge $minimumsize ]; then
echo "$filename OK"
echo "$actualsize"
else
chattr -ai /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb ; sudo chmod 0777 /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb ; rm -rf /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb ; apt-get install e2fsprogs -y && chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb ; wget http://github.com/rikardo17/geolite/raw/main/GeoLite2.mmdb -O /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && chown xtreamcodes.xtreamcodes /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && chattr +i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && clear && echo "Done"
fi