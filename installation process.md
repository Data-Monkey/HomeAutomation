<h2>Install Debian</h2>

<h3>download RASPBIAN</h3>
https://www.raspberrypi.org/downloads/raspbian/

I downloaded the lite version

<h3>Copy to SD card</h3>
using https://sourceforge.net/projects/win32diskimager/?source=typ_redirect



<h3>SSH</h3>
find IP in router

user: pi <br>
password: raspberry

- set zimezone and locale

<code>sudo raspi-config</code>

- update software

<code>sudo apt-get update && sudo apt-get upgrade </code>

- setup wifi

at the bottom of <code>/etc/wpa_supplicant/wpa_supplicant.conf</code>add

<code>
network={
    ssid="your-network-ssid-name"
    psk="your-network-password"
}
</code>

<h3> install hass </h3>
following the All in One install

https://home-assistant.io/getting-started/installation-raspberry-pi-all-in-one/

