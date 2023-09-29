#
# Checking modules is loaded
#

echo -n "Loading module dvb-core -> "
[ `/sbin/lsmod | grep -i dvb-core | wc -l` -gt 0 ] && echo "Module dvb-core loaded succesfully" || echo "Module dvb-core is not loaded"
echo -n "Loading module sp2 -> "
[ `/sbin/lsmod | grep -i sp2 | wc -l` -gt 0 ] && echo "Module sp2 loaded succesfully" || echo "Module sp2 is not loaded"
