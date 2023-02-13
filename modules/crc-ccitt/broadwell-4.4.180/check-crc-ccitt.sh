#
# Checking modules is loaded
#

echo -n "Loading module crc-ccitt -> "
[ `/sbin/lsmod | grep -i crc-ccitt | wc -l` -gt 0 ] && echo "Module crc-ccitt loaded succesfully" || echo "Module crc-ccitt is not loaded"
