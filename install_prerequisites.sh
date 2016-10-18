
echo "Updating APT..."
apt-get update && apt-get upgrade
echo "Installing required packages..."
apt-get install build-essential git-core libi2c-dev i2c-tools lm-sensors

echo "i2c-bcm2708" >> /etc/modules
echo "i2c-dev" >> /etc/modules

git clone https://github.com/hallard/ArduiPi_SSD1306.git

echo "Installing display libraries..."
cd ArduiPi_OLED
sudo make
cd ..

echo "Compiling sysInfo"
make

echo "Running sysInfo program"
sudo ./sysInfo --oled 3 &
