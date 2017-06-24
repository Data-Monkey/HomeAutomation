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
