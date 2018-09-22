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



Sonoff BASIC connections


Sonoff SV (Save Voltage)




