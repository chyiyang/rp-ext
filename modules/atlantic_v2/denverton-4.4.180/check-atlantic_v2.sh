#
# Checking modules is loaded
#

echo -n "Loading module crc-itu-t -> "
[ `/sbin/lsmod | grep -i crc-itu-t | wc -l` -gt 0 ] && echo "Module crc-itu-t loaded succesfully" || echo "Module crc-itu-t is not loaded"
echo -n "Loading module atlantic_v2 -> "
[ `/sbin/lsmod | grep -i atlantic_v2 | wc -l` -gt 0 ] && echo "Module atlantic_v2 loaded succesfully" || echo "Module atlantic_v2 is not loaded"
