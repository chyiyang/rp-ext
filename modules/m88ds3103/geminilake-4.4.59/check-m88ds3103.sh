#
# Checking modules is loaded
#

echo -n "Loading module dvb-core -> "
[ `/sbin/lsmod | grep -i dvb-core | wc -l` -gt 0 ] && echo "Module dvb-core loaded succesfully" || echo "Module dvb-core is not loaded"
echo -n "Loading module m88ds3103 -> "
[ `/sbin/lsmod | grep -i m88ds3103 | wc -l` -gt 0 ] && echo "Module m88ds3103 loaded succesfully" || echo "Module m88ds3103 is not loaded"
