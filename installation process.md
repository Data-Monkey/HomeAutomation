<h2>Install Debian</h2>

<h3>download RASPBIAN</h3>
https://www.raspberrypi.org/downloads/raspbian/

I downloaded the lite version

<h3>Copy to SD card</h3>
using https://sourceforge.net/projects/win32diskimager/?source=typ_redirect



<h3>SSH</h3>
find IP in router

user pi 
password raspberry


sudo raspi-config
- set zimezone and locale

sudo apt-get update && sudo apt-get upgrade


at the bottom of etc/wpa_supplicant/wpa_supplicant.conf
add
network={
    ssid="your-network-ssid-name"
    psk="your-network-password"
}


