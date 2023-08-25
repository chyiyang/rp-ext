#
# Checking modules is loaded
#

echo -n "Loading module crc8 -> "
[ `/sbin/lsmod | grep -i crc8 | wc -l` -gt 0 ] && echo "Module crc8 loaded succesfully" || echo "Module crc8 is not loaded"
