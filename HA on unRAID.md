HA in Docker on unRAID



<h3>Install Xiaomy Custom Component</h3>

````

cd /mnt/cache/appdata/home-assistant/custom_components
wget https://raw.githubusercontent.com/lazcad/homeassistant/master/components/xiaomi.py
cd /mnt/cache/appdata/home-assistant/custom_components/binary_sensor
wget https://raw.githubusercontent.com/lazcad/homeassistant/master/components/binary_sensor/xiaomi.py
cd /mnt/cache/appdata/home-assistant/custom_components/light
wget https://raw.githubusercontent.com/lazcad/homeassistant/master/components/light/xiaomi.py
cd /mnt/cache/appdata/home-assistant/custom_components/sensor
wget https://raw.githubusercontent.com/lazcad/homeassistant/master/components/sensor/xiaomi.py
cd /mnt/cache/appdata/home-assistant/custom_components/switch
wget https://raw.githubusercontent.com/lazcad/homeassistant/master/components/switch/xiaomi.py

````

Daniels Version

````

cd /mnt/cache/appdata/home-assistant/custom_components
wget https://raw.githubusercontent.com/Danielhiversen/homeassistant/master/components/xiaomi.py -O /mnt/cache/appdata/home-assistant/custom_components/xiaomi.py

wget https://raw.githubusercontent.com/Danielhiversen/homeassistant/master/components/binary_sensor/xiaomi.py -O /mnt/cache/appdata/home-assistant/custom_components/binary_sensor/xiaomi.py

wget https://raw.githubusercontent.com/Danielhiversen/homeassistant/master/components/light/xiaomi.py -O /mnt/cache/appdata/home-assistant/custom_components/light/xiaomi.py

wget https://raw.githubusercontent.com/Danielhiversen/homeassistant/master/components/sensor/xiaomi.py -O /mnt/cache/appdata/home-assistant/custom_components/sensor/xiaomi.py

wget https://raw.githubusercontent.com/Danielhiversen/homeassistant/master/components/switch/xiaomi.py -O /mnt/cache/appdata/home-assistant/custom_components/switch/xiaomi.py

````