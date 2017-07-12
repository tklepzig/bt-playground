#$1 --> address (bluetooth mac) of bluetooth device
#$2 --> channel to connect to

#info: 0 before device is internal bluetooth device (first device, could be "hci0" too)
rfcomm connect 0 $1 $2 > /dev/null &
watch -n 0.1 hcitool rssi $1
