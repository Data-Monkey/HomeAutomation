<h1> GatePi </h1>

Raspberry Pi to be the gate keeper of my network!

<h2>Pi-Hole</h2>
Installing pi-hole for DNS/DHCP and AD blocking

Follow the easy steps at www.pi-hole.net
Community/Forum at https://discourse.pi-hole.net

The local admin website is on http://pi.hole/admin

Disabled the DHCP in the router and using the pi-hole as DHCP and DNS server.


Forwarding stats to influx db
https://discourse.pi-hole.net/t/api-forwarders-stops-working-after-a-few-minutes/3278/25

Installing jq
https://stedolan.github.io/jq/

````
 sudo apt-get install jq
````

to keep the stats on a daily basis (not rolling window)
create: /etc/pihole/pihole-FTL.conf

````
TIMEFRAME=yesterday
````

get the script to the GATE-PI

````
wget https://raw.githubusercontent.com/Data-Monkey/HomeAutomation/master/GatePi/forward_stats.sh -O /home/pi/pistats/forward-stats.sh
chmod a+x /home/pi/pistats/forward_stats.sh
````

don't forget to add it to the crontab


<h2>PiVPN</h2>

OpenVPN on the RPi
http://www.pivpn.io/#install

````
 curl -L https://install.pivpn.io | bash
````



<h2>NETDATA</h2>
Get usage stats. Statistics done right
https://my-netdata.io
https://github.com/firehol/netdata/wiki/Installation

````
bash <(curl -Ss https://my-netdata.io/kickstart.sh) 
````

