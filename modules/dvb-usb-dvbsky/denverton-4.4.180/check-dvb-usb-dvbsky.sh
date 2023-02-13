#
# Checking modules is loaded
#

echo -n "Loading module dvb_usb_v2 -> "
[ `/sbin/lsmod | grep -i dvb_usb_v2 | wc -l` -gt 0 ] && echo "Module dvb_usb_v2 loaded succesfully" || echo "Module dvb_usb_v2 is not loaded"
echo -n "Loading module dvb-core -> "
[ `/sbin/lsmod | grep -i dvb-core | wc -l` -gt 0 ] && echo "Module dvb-core loaded succesfully" || echo "Module dvb-core is not loaded"
echo -n "Loading module rc-core -> "
[ `/sbin/lsmod | grep -i rc-core | wc -l` -gt 0 ] && echo "Module rc-core loaded succesfully" || echo "Module rc-core is not loaded"
echo -n "Loading module m88ds3103 -> "
[ `/sbin/lsmod | grep -i m88ds3103 | wc -l` -gt 0 ] && echo "Module m88ds3103 loaded succesfully" || echo "Module m88ds3103 is not loaded"
echo -n "Loading module dvb-usb-dvbsky -> "
[ `/sbin/lsmod | grep -i dvb-usb-dvbsky | wc -l` -gt 0 ] && echo "Module dvb-usb-dvbsky loaded succesfully" || echo "Module dvb-usb-dvbsky is not loaded"
