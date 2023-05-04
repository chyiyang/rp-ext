#
# Checking modules is loaded
#

echo -n "Loading module rc-core -> "
[ `/sbin/lsmod | grep -i rc-core | wc -l` -gt 0 ] && echo "Module rc-core loaded succesfully" || echo "Module rc-core is not loaded"
echo -n "Loading module dvb-core -> "
[ `/sbin/lsmod | grep -i dvb-core | wc -l` -gt 0 ] && echo "Module dvb-core loaded succesfully" || echo "Module dvb-core is not loaded"
echo -n "Loading module dvb-usb -> "
[ `/sbin/lsmod | grep -i dvb-usb | wc -l` -gt 0 ] && echo "Module dvb-usb loaded succesfully" || echo "Module dvb-usb is not loaded"
