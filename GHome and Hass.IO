Linking Google Home and HASS.IO

To make the entities in HASS visible to Google Home we pretend they are HUE Lights.
But since they are not, we also pretend we have a HUE bridge.

Config:

````
emulated_hue:
  type: alexa
  host_ip: 192.168.2.4
  listen_port: 80
  ````
 
 type: alexa is a workaround for a bug in emulated hue
 
 With a newish Google Home App the integration with HUE requires a password and a button press. Since the emulated hue can't do that we need the old APK for Google Home.
 Uninstall the existing version before installing this one.
 https://community.home-assistant.io/t/google-home-hue-setup-change/13159/5
 and teh AKP is here:
 https://www.apkmirror.com/apk/google-inc/google-home/google-home-1-19-29-release/google-home-1-19-29-android-apk-download/
 
