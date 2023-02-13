#
# Checking modules is loaded
#

echo -n "Loading module dvb-core -> "
[ `/sbin/lsmod | grep -i dvb-core | wc -l` -gt 0 ] && echo "Module dvb-core loaded succesfully" || echo "Module dvb-core is not loaded"
