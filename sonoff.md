<h1>Sonoff</h1>

<h2>How I updated firmware</h2>

I followed a few video tutorials by DrZzz but settled on this at the end:

https://www.youtube.com/watch?v=KMiP9Ku71To


<h3>Basic steps:</h3>

* get ESP Easy from here: https://github.com/letscontrolit/ESPEasy/releases
* get sonoff.bin from here: https://github.com/arendst/Sonoff-Tasmota/releases
* get termite from: https://www.compuphase.com/software_termite.htm


* connect adapter to sonoff
* hold down button
* plug in usb
* open ESP EASY
* select sonoff.bin > FLASH

* unplug / replug usb

* open termite
* select port
* set baud to 115200   > GREEN is GOOD

* send a command like this to setup wifi : *Backlog SSID1 xxxxxx; Password1 yyyyyy;*
* the log will show new IP adress
* configure mqtt via gui

* set time server, timezone and DST rules in the web command or as Backlog in the terminal (a intranet timeserver is needed as the sonoff will be isolated from the internet)

```` 
ntpserver1 192.168.2.130
timezone 99
TimeDST 1,1,10,1,2,660   #Southen Hemisphere, First, October,Sunday, 2am ,+11hrs
TimeSTD 1,1,4,1,2,600    #Southen Hemisphere, First, April,Sunday, 2am ,+10hrs
````


Sonoff BASIC connections


Sonoff SV (Save Voltage)




