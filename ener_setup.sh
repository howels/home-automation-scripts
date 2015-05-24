
#!/bin/sh
sudo sh -c 'echo 17 > /sys/class/gpio/export'
sudo chmod 764 /sys/class/gpio/gpio17/direction
echo out > /sys/class/gpio/gpio17/direction
sudo chmod 744 /sys/class/gpio/gpio17/direction
sudo chmod 764 /sys/class/gpio/gpio17/value
sudo sh -c 'echo 27 > /sys/class/gpio/export'
sudo chmod 764 /sys/class/gpio/gpio27/direction
echo out > /sys/class/gpio/gpio27/direction
sudo chmod 744 /sys/class/gpio/gpio27/direction
sudo chmod 764 /sys/class/gpio/gpio27/value
sudo sh -c 'echo 22 > /sys/class/gpio/export'
sudo chmod 764 /sys/class/gpio/gpio22/direction
echo out > /sys/class/gpio/gpio22/direction
sudo chmod 744 /sys/class/gpio/gpio22/direction
sudo chmod 764 /sys/class/gpio/gpio22/value
sudo sh -c 'echo 23 > /sys/class/gpio/export'
sudo chmod 764 /sys/class/gpio/gpio23/direction
echo out > /sys/class/gpio/gpio23/direction
sudo chmod 744 /sys/class/gpio/gpio23/direction
sudo chmod 764 /sys/class/gpio/gpio23/value
sudo sh -c 'echo 24 > /sys/class/gpio/export'
sudo chmod 764 /sys/class/gpio/gpio24/direction
echo out > /sys/class/gpio/gpio24/direction
sudo chmod 744 /sys/class/gpio/gpio24/direction
sudo chmod 764 /sys/class/gpio/gpio24/value
sudo sh -c 'echo 25 > /sys/class/gpio/export'
sudo chmod 764 /sys/class/gpio/gpio25/direction
echo out > /sys/class/gpio/gpio25/direction
sudo chmod 744 /sys/class/gpio/gpio25/direction
sudo chmod 764 /sys/class/gpio/gpio25/value
