I have tried HASS.IO on a rbi3 but I was not happy with the performance. 
So I moved back to the docker on tower!





<H1>HASS.IO</h1>

some config

<h2> HA Floorplan </h2>

````
/data/git-repos/ha-floorplan# git clone --depth=1 https://github.com/pkozul/ha-floorplan.git
````

copy files to HA Config

````
cp /data/git-repos/ha-floorplan/ha-floorplan/www/custom_ui/* -r /config/www/custom_ui/
cp /data/git-repos/ha-floorplan/ha-floorplan/panels/ -r /config/
````

