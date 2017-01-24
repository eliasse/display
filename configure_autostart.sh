echo "Writing to /etc/rc.local..."
sudo sed -i 's/exit 0/sudo \/usr\/local\/bin\/sysInfo --oled 3 \&/' /etc/rc.local
sudo echo "exit 0" >> /etc/rc.local
echo " done."
