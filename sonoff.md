<h1>Sonoff</h1>

<h2>How I updated firmware</h2>

I followed a few video tutorials from DrZzz but settled on this at the end:
https://www.youtube.com/watch?v=KMiP9Ku71To


Basic steps:

get ESP Easy from here: https://github.com/letscontrolit/ESPEasy/releases
get sonoff.bin from here: https://github.com/arendst/Sonoff-Tasmota/releases
termite from: https://www.compuphase.com/software_termite.htm


connect adapter to sonoff
hold down button
plug in usb
open ESP EASY
select sonoff.bin > FLASH

unplug usb
replug usb

open termite
select port
set baud to 115200
GREEN is GOOD

put a command like this :
Backlog SSID1 xxxxxx; Password1 yyyyyy;

configure mqtt via gui

Sonoff SV


